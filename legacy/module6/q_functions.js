/**
 *  ==================================================
 *  SoftChalk LessonBuilder
 *  Copyright 2003-2008 SoftChalk LLC
 *  All Rights Reserved.
 *
 *  http://www.softchalk.com
 *  ==================================================
 *  File date: June 4, 2008
 */


 /**
 *	From lesson.js file:
 *
 *  tableToggle_array=new Array();
 *  feed=new Array();
 *  f_right=new Array();
 *  f_wrong=new Array();
 *  f_show_correct=new Array();
 *  f_done=new Array();
 *  f_partial=new Array();
 *
 *  scoreQ[]	indicates whether to include question in scoring
 *  q_done[]	indicates whether the question has been attempted to be answered
 *
 *	"q_num"     form and question number (which are the same)
 *	"mc_items"  number of multiple choice/matching items - value is 0 for short answer, 2 for true-false
 *
 *	"q_type"
 *
 *  MULTIPLE_CHOICE = 1;
 *  TRUE_FALSE = 2;
 *  MULTIPLE_ANSWER = 3;
 *  SHORT_ANSWER = 4;
 *  MATCHING = 5;
 *  ORDERING = 6;
 *
 * 	ACTIVITY = 7;
 *
 *
 *  **********************************************
 *
 *	In lessons that have no quizpoppers:
 *  scoreQ[] is defined in header of page.
 *
 *  **********************************************
 *
 */



var lessonStartTime = new Date().getTime();

var scorm = false					//unless overriden by scorm.js
var attempted_points = 0; //total points possible on questions attempted to be answered so far
var total_points = 0;			//total points possible for all questions to be scored for entire lesson
var my_score = 0;					//current cumulative number of points scored on all questions answered
var totalQ = 0;						//total questions to be scored for this lesson
var attempted_q = 0;			//total number of questions attempted to answer

var file_name = location.href.substring((location.href.lastIndexOf('/') + 1),location.href.length);

var CLOSE_THIS_WINDOW = "<a href='javascript:window.close()'>" +
												"<img src='close_feedback.png' border='0' align='right' alt='" + qfLangCloseAlt + "'>" +
												"</a><br><br>";

var INLINE_ID_NAMES = new Array("feed","f_done"); //inline div ids


var skip = new Array();						//monitors if question has already been answered correctly
var q_value = new Array();				//gets value of variable q_value from lesson.js and converts to value in this array
var this_q_points = new Array();	//each question's scored points



/**
 *  Determine which questions are scored
 *	and add to totalQ and total_points.
 */
for (var i = 1; i <= (scoreQ.length); i++) {
  if (scoreQ[i] == "yes") {
	  totalQ++;
	  skip[i] = false;
    q_value[i] = eval("q_value" + i);
    total_points += q_value[i];
    this_q_points[i] = 0;
	}
	else {
		q_value[i] = 0;
	}
}

/**
 *  Do same for activities.
 *
 *	Don't need an array to hold point values
 *	because that data comes from the flash variables
 */
for (var i = 1; i <= (scoreQa.length); i++) {
  if (scoreQa[i]) {
	  totalQ++;
    var a_value = eval("a_value" + i);
    total_points += a_value;
	}
}


/**
 *  Called when "Check Answer" button is clicked
 */
function check_q(q_num, mc_items, q_type, allow_retry) {
	if (!q_done[q_num]) {
		attempted_q++;
	  attempted_points = attempted_points + q_value[q_num];
	  q_done[q_num] = true;
	}
	else if (allow_retry) {
		if (scoreQ[q_num] == "yes") {
	    my_score -= this_q_points[q_num];
		}
	}
	else {
		myWin(qfLangBeenAnswered, "", q_num, q_type, "");
		return;
	}

	var correct = "no";
	var feedback = "";
	var student_answer = "";
	var fieldno = eval("main.document.f" + q_num + ".q" + q_num); // input name
	var imageno = eval("main.document.check" + q_num);
	var right_answers = eval("right_answers" + q_num);



  if (q_type == 1 || q_type == 2) {											// MULTIPLE_CHOICE, TRUE_FALSE
		var checkedButton = "";

		for (var i = 0; i < mc_items; i++) {
			if (fieldno[i].checked) {
				checkedButton = fieldno[i].value;
				break;
			}
		}

    student_answer = checkedButton;

    if (checkedButton.toUpperCase() == right_answers[0].toUpperCase()) {
    	correct = "yes";
    	feedback = eval("feedbackRight" + q_num);
    	my_score += q_value[q_num];
    }
    else {
    	feedback = eval("feedbackWrong" + q_num);
      if (eval("showCorrect" + q_num) == "yes") {
        //feedback += "<br><span style=\"font-size: 90%;\">The correct response: " + right_answers[0] + ".";
        feedback += "<br><span style=\"font-size: 90%;\">" + qfLangFBmctf + " " + right_answers[0];
      }
		}
	}
	else if (q_type == 3) {																// MULTIPLE_ANSWER
		var get_answers = new Array();
		var correctly_matched = new Array();

  	for (var i = 0; i < mc_items; i++) {
      if (fieldno[i].checked) {
        get_answers[get_answers.length] = fieldno[i].value;
      }
    }

    var answers_array = right_answers[0].split(",");
    for (var i = 0; i < get_answers.length; i++) {
      for (var j = 0; j < answers_array.length; j++) {
	      if (get_answers[i] == answers_array[j]) {
		      correctly_matched[correctly_matched.length] = get_answers[i];
	      }
      }
    }

    if (correctly_matched.length == answers_array.length) {
    	if (get_answers.length > correctly_matched.length) {
		  	correct = "partial";
		  	//feedback = eval("feedbackPartial" + q_num) + "<br><span style=\"font-size: 90%;\">Only these answers are correct: " + correctly_matched;
		  	feedback = eval("feedbackPartial" + q_num) + "<br><span style=\"font-size: 90%;\">" + qfLangFBmaOnly + " " + correctly_matched;
		  }
		  else {
	    	correct = "yes";
	    	feedback = eval("feedbackRight" + q_num);
	    	my_score += q_value[q_num];
    	}
    }
    else if (correctly_matched.length > 0) {
    	correct = "partial";
    	//feedback = eval("feedbackPartial" + q_num) + "<br><span style=\"font-size: 90%;\">Correctly answered: " + correctly_matched;
	    feedback = eval("feedbackPartial" + q_num) + "<br><span style=\"font-size: 90%;\">" + qfLangFBmaPartial + " " + correctly_matched;
    }
    else {
    	feedback = eval("feedbackWrong" + q_num);
			if (eval("showCorrect" + q_num) == "yes") {
        //feedback += "<br><span style=\"font-size: 90%;\">The correct response(s): " + right_answers + ".";
        feedback += "<br><span style=\"font-size: 90%;\">" + qfLangFBmasaWrong + " " + right_answers;
      }
    }

    student_answer = get_answers;
  }
	else if (q_type == 4) {																// SHORT_ANSWER
  	student_answer = fieldno.value;

		var upper = student_answer.toUpperCase();
  	for (var i = 0; i < right_answers.length; i++) {
   		if (upper == right_answers[i].toUpperCase()) {
     		correct = "yes";
     		break;
			}
   	}

   	if (correct == "yes") {
 			feedback = eval("feedbackRight" + q_num);
    	my_score += q_value[q_num];
   	}
  	else {
    	feedback = eval("feedbackWrong" + q_num);
    	if (eval("showCorrect" + q_num) == "yes") {
        //feedback += "<br><span style=\"font-size: 90%;\">The correct response(s): " + right_answers + ".";
        feedback += "<br><span style=\"font-size: 90%;\">" + qfLangFBmasaWrong + " " + right_answers;
    	}
  	}
	}
  else {																								// MATCHING, ORDERING
		var correctly_matched = new Array();
    var correct_answers = new Array();
    var student_answers = new Array();

  	for (var i = 0; i < mc_items; i++) {
  		var option_num = i + 1;
  	  fieldno = eval("main.document.f" + q_num + ".q" + q_num + "_" + option_num);
  	  var s_index = fieldno.options.selectedIndex;
  	  var ra_index = right_answers[i];

  	  student_answers[i] = fieldno.options[s_index].value;
  	  correct_answers[i] = " " + option_num + " = " + fieldno.options[ra_index].value;

      if(s_index == ra_index) {
        correctly_matched[correctly_matched.length] = option_num;
      }
    }

//    var term = "matched";
//    var term2 = "matchings";
//    if (q_type == 6) {
//	  	term = "ordered";
//			term2 = "order";
//	  }

    if (correctly_matched.length == right_answers.length){
    	correct = "yes";
    	//feedback = eval("feedbackRight" + q_num) + "<br>All items correctly " + term + "!";
    	feedback = eval("feedbackRight" + q_num) + "<br>" + qfLangFBmatorRight;
			my_score += q_value[q_num];
    }
    else if (correctly_matched.length > 0) {
    	correct = "partial";
      //feedback = eval("feedbackPartial" + q_num) + "<br><span style=\"font-size: 90%;\">Correctly " + term + ": " + correctly_matched;
      feedback = eval("feedbackPartial" + q_num) + "<br><span style=\"font-size: 90%;\">" + qfLangFBmatorPartial + " " + correctly_matched;
    }
    else {
      feedback = eval("feedbackWrong" + q_num);
      if (eval("showCorrect" + q_num) == "yes") {
      	//feedback += "<br><span style=\"font-size: 90%;\">The correct " + term2 +": " + correct_answers + ".</span>";
      	feedback += "<br><span style=\"font-size: 90%;\">" + qfLangFBmatorWrong + " " + correct_answers + "</span>";
      }
    }

    student_answer = student_answers;
  }

	// set the icon and this_q_points
	if (correct == "yes") {
		imageno.src = "check.png";
		this_q_points[q_num] = q_value[q_num];
	}
	else {
		imageno.src = "wrong.png";
		this_q_points[q_num] = 0;
	}

	myWin(feedback, correct, q_num, q_type, student_answer);
}


function toggletable(which) {                    // show/hide question
	var num = which.substring(10); //remove prefix "quizpopper"
  if (tableToggle_array[num]) {
    tableToggle_array[num] = false;
    setShow(which, false);
  }
  else {
    tableToggle_array[num] = true;
    setShow(which, true);
  }
}


function togglefeed(q_num, which, hide) {						// show/hide feedback
  my_item_value = eval(which + "[" + q_num + "]");
  if (!hide) {
    if (!my_item_value) {
      setState(q_num, which, true);
      setShow(which + q_num, false);
    }
    else {
      setState(q_num, which, false);
      setShow(which + q_num, true);
    }
	}
  else {
    for (i = 0; i < INLINE_ID_NAMES.length; i++) {
	  	setState(q_num, INLINE_ID_NAMES[i], false);
	  }
    setShow(which + q_num, false);
  }
}


function setState(q_num, which, state) {
	if (which == "feed") {feed[q_num] = state;}
	else if (which == "f_done") {f_done[q_num] = state;}
}


function setShow(elemId, show) {
	var elem = main.document.getElementById(elemId);
	if (show) {
		elem.style.display = 'block';
	}
	else {
		elem.style.display = 'none';
	}
}


function clearMe(q_num) {
	for (i = 0; i < INLINE_ID_NAMES.length; i++) {
  	setShow(INLINE_ID_NAMES[i] + q_num, false);
  }
}


function hint(q_num) {
  my_hint = eval("hint" + q_num);

  if (!eval('inline_feedback' + q_num)) {
    winSpecs = 'width=400,height=200,resizable=yes,scrollbars=yes';
    win = window.open ("", 'pic', winSpecs);
    win.document.open();
    win.document.clear();
    win.document.write("<html><head><title>" + qfLangHint + "</title></head><body style='font-family: Verdana, Helvetica, sans-serif;'>");
    win.document.write(CLOSE_THIS_WINDOW);
    win.document.write(my_hint);
    win.document.write("</body></html>");
    win.document.close();
    win.focus();
  }
  else {
  	clearMe(q_num);
    main.document.getElementById("f_done" + q_num).innerHTML = "<embed src=spacer.gif width=0 height=0>" + my_hint;
		f_done[q_num] = true;
		togglefeed(q_num, "f_done", false);
  }
}


function myWin(stuff, correct, q_num, q_type, student_answer) {

	if (eval('inline_feedback' + q_num)) {																	// inline
    clearMe(q_num);

		main.document.getElementById("f_done" + q_num).innerHTML = "<embed src=spacer.gif width=0 height=0>" + stuff;
		f_done[q_num] = true;
		togglefeed(q_num, "f_done", false);

		if (stuff != qfLangBeenAnswered && q_value[q_num] > 0) {
			main.document.getElementById("feed" + q_num).innerHTML = "<br>" + qfLangPoints + " <b>" + this_q_points[q_num] + "</b>.";
			feed[q_num] = true;
			togglefeed(q_num, "feed", false);
    }
  }
  else {																																	// popup
  	winSpecs = 'width=400,height=200,resizable=yes,scrollbars=yes';
    win = window.open("", 'pic', winSpecs);
    win.document.open();
    win.document.clear();
    win.document.write("<html>\n<head>\n<title>" + qfLangFeedback + "</title>\n</head>\n<body style='font-family: Arial, Helvetica, sans-serif;'>\n");
    win.document.write(CLOSE_THIS_WINDOW);
    win.document.write(stuff);

    if (stuff != qfLangBeenAnswered && q_value[q_num] > 0) {
      win.document.write("<div style=\"font-size: 90%; font-family: 'Comic Sans MS'; border-top: 1px solid #000000; margin-top: 10px;\"><br>\n" +
      									 qfLangPoints + " <span style=\"font-weight: bold;\">" + this_q_points[q_num] + "</span>.\n" +
      									 "</div>\n");
    }

    win.document.write("</body>\n</html>");
    win.document.close();
    win.focus();
  }

	// show the floating score window
  if (q_value[q_num] > 0) {
		main.stayTopLeft();
		main.document.getElementById("floatingscore").style.visibility = "visible";
		main.document.getElementById("my_score_span").innerHTML = qfLangFloat + "<br><b>" + my_score + " / " + total_points;
  }


  if (scorm && stuff != qfLangBeenAnswered) {
  	var act_type = 0;
  	var act_percent = 0;
  	sendScorm(q_num, q_type, act_type, student_answer, correct, act_percent);
  }
}


function quit_lesson() {
	if (scorm) {
    ScormOnunload();
	}
	else {
		window.opener = top;
  	window.close();
	}
}


function getLessonTime() {
  var lessonTotalTime = "0";
  if (lessonStartTime != 0) {
  	var currentDate = new Date().getTime();
    var elapsed_Seconds = ((currentDate - lessonStartTime) / 1000);
    if (elapsed_Seconds < 60) {
      lessonTotalTime = Math.round(elapsed_Seconds) + " seconds";
    }
    else if (elapsed_Seconds > 3600) {
    	var whole_hours = Math.round(elapsed_Seconds / 3600);
    	var whole_secs = (whole_hours * 3600);
    	var rem_minutes = (elapsed_Seconds - whole_secs) / 60;
    	rem_minutes = Math.round(rem_minutes);
    	if (rem_minutes > 0) {
      	lessonTotalTime = whole_hours + " hours and " + rem_minutes + " minutes";
    	}
    	else {
    		lessonTotalTime = whole_hours + " hours";
    	}
		}
		else {
			lessonTotalTime = Math.round(elapsed_Seconds / 60) + " minutes";
  	}
  }
  return lessonTotalTime;
}


function lessonReport(which) {
	var userName = main.document.send_form.user_name.value;
	userName = getTrimmed(userName);

	if (userName == "") {
		alert(qfLangNameAlert);
		main.document.send_form.user_name.focus();
		return false;
	}

	// handles if users type a single quotes in their names (070312)
	var apos = userName.indexOf("'");
	while (apos != -1) {
		userName = userName.replace(/\'/,"&apos;");
		apos = userName.indexOf("'");
	}

	// need this "if" statement for a forced frames environment
	// when there are no points, i.e. teacher wants a cert.
	// otherwise total_score would be NaN
  var total_score = 0;
  if (my_score > 0) {
  	total_score = Math.round((my_score / total_points) * 100);
  }

  if (which == "email") {
  	var lesTitle = document.title;
  	if (lesTitle.length > 200) {
  		lesTitle = lesTitle.substring(0, 200);
  	}
  	main.document.send_form.action = "http://www.softchalk.com/cgi-bin/send_score.cgi";
  	main.document.send_form.method = "post";
  	main.document.send_form.my_lesson.value = lesTitle;
	  main.document.send_form.my_attempted_points.value = attempted_points;
	  main.document.send_form.my_score.value = total_score;
	  main.document.send_form.my_time_spent.value = getLessonTime();
	  main.document.send_form.total_points.value = total_points;
	  main.document.send_form.my_scored_points.value = my_score;
	  main.document.send_form.recipient.value = qfRecipient;
	  main.document.send_form.submit();
		return true;
  }

  if (which == "scoretracker") {
  	// need to check if they selected a course,
  	// compare against lang REPORT_OPTION
  	var courseID = main.document.send_form.course_id.value;
  	if (courseID == qfLangReportOptionAlert) { // must use non-html version of qfLangReportOption for the comparison test!
  		alert(qfLangReportOptionAlert);
  		return false;
  	}

  	var lesTitle = document.title;
  	if (lesTitle.length > 200) {
  		lesTitle = lesTitle.substring(0, 200);
  	}
  	main.document.send_form.action = qfScoreTrackerPath;
  	main.document.send_form.method = "post";
  	main.document.send_form.my_lesson.value = lesTitle;
	  main.document.send_form.my_attempted_points.value = attempted_points;
	  main.document.send_form.my_score.value = total_score;
	  main.document.send_form.my_time_spent.value = getLessonTime();
	  main.document.send_form.total_points.value = total_points;
	  main.document.send_form.my_scored_points.value = my_score;
	  main.document.send_form.timestamp.value = qfScoreTrackerTimeStamp;
	  main.document.send_form.recipient.value = qfRecipient;
	  main.document.send_form.submit();
		return true;
  }

	if (which == "certificate" && (total_score < passing_score)) {
		//alert("Your score of " + total_score + "% does not meet the passing score of " + passing_score + "%.\n" +
		//				"Please try to improve your score.");

		alert(qfLangScoreAlertOne + " " + total_score + "%\n" +
						qfLangScoreAlertTwo + " " + passing_score + "%.\n\n" +
						qfLangScoreAlertThree);
		return false;
	}


  var winTitle;
  var movieName;
  var getstring;
  var flName = which;

  if (which == "certificate") {
    winTitle = qfLangCertTitle;
    movieName = "certificate";
    getstring = "&name=" + userName;
  }
  else {
  	winTitle = qfLangSumTitle;
  	movieName = "score summary";
		getstring = "&name=" + userName + "&points=" + total_points + "&timespent=" +
								getLessonTime() + "&attempted=" + attempted_points + "&correct=" + my_score + "&score=" + total_score;
  }

	var obWidth = "925";
	var obHeight = "775";
	var winSpecs = "width=700,height=500,resizable=yes,scrollbars=yes,menubar=no";
	win = window.open("", "pic", winSpecs);
  win.document.open();
  win.document.clear();

  // must use standard html method of inserting swf
  // to prevent problems with WebCT and Blackboard
	win.document.write("<html>\n<head>\n<title>" + winTitle + "</title>\n" +
										 "<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />\n" +
										 "</head>\n" +
										 "<body>\n" +
										 "<p align='center' style='font-size: 90%;'>\n" +
										 "<br>" + qfLangPrintIns + "<br>\n" +
										 "<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' " +
										 "codebase='http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0' " +
										 "width='" + obWidth + "' height='" + obHeight + "' align='middle' id='" + flName + "'>\n" +
  									 "<param name='allowScriptAccess' value='sameDomain' />\n" +
										 "<param name='movie' value='" + flName + ".swf' />\n" +
										 "<param name='quality' value='high' />\n" +
										 "<param name='bgcolor' value='#ffffff' />\n" +
										 "<param name=FlashVars value='" + getstring + "' />\n" +
										 "<embed src='" + flName + ".swf' name='" + flName + "' " +
										 "quality='high' bgcolor='#ffffff' " +
										 "width='" + obWidth + "' height='" + obHeight + "' align='middle' " +
										 "FlashVars='" + getstring + "' " +
										 "allowScriptAccess='sameDomain' type='application/x-shockwave-flash' " +
										 "pluginspage='http://www.macromedia.com/go/getflashplayer' />\n" +
										 "</object>\n" +
										 "</p>\n" +
										 "</body>\n</html>\n");

/*
  win.document.write("<html lang=\"en\">\n<head>\n<title>" + winTitle + "</title>\n" +
										 "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n" +
										 "<script src=\"flashobject.js\" type=\"text/javascript\"></script>\n");

	// need to do write() in two steps
	// as a workaround to a bug in IE 7
	win.document.write("</head>\n" +
										 "<body>\n" +
										 "<table align=\"center\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n" +
										 "<tr>\n" +
										 "<td align=\"center\" style=\"padding-top: 15px; font-size: 90%;\">" + qfLangPrintIns + "</td>\n" +
										 "</tr>\n" +
										 "<tr>\n" +
										 "<td align=\"center\">\n" +
										 "<div id=\"flashcontent\" style=\"width: " + obWidth + "px; height: " + obHeight + "px;\"></div>\n" +
										 "<script type=\"text/javascript\">\n" +
										 "var fo = new FlashObject(\"" + flName + ".swf?" + getstring + "\", \"" + flName +
																							 "\", \"" + obWidth + "\", \"" + obHeight + "\", \"8\", \"#ffffff\");\n" +
										 "fo.addParam(\"allowScriptAccess\", \"sameDomain\");\n" +
										 "fo.addParam(\"quality\", \"high\");\n" +
										 "fo.write(\"flashcontent\");\n" +
										 "</script>\n" +
										 "</div>\n" +
										 "</td>\n" +
										 "</tr>\n" +
										 "</table>\n" +
										 "</body>\n</html>\n");
*/
  win.document.close();
  win.focus();
	return true;
}


function getTrimmed(s) {
	var l = 0;
	var r = s.length -1;

	while (l < s.length && s[l] == ' ') {
		l++;
	}

	while (r > l && s[r] == ' ') {
		r -= 1;
	}

	return s.substring(l, r + 1);
}

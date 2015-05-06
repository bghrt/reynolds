// JavaScript Document

google.load("gdata", "2.x");

function init() {
    // init the Google data JS client library with an error handler
    google.gdata.client.init(handleGDError);
    // load the code.google.com developer calendar
    loadCalendar();
}

/**
 * Loads the JSR Calendar
 */
function loadCalendar() {
    loadCalendarByAddress('jsrlibrary@gmail.com');
}

/**
 * Adds a leading zero to a single-digit number.  Used for displaying dates.
 */
function padNumber(num) {
    if (num <= 9) {
        return "0" + num;
    }
    return num;
}

/**
 * Determines the full calendarUrl based upon the calendarAddress
 * argument and calls loadCalendar with the calendarUrl value.
 *
 * @param {string} calendarAddress is the email-style address for the calendar
 */ 
function loadCalendarByAddress(calendarAddress) {
    var calendarUrl = 'http://www.google.com/calendar/feeds/' +
    calendarAddress + 
    '/public/full';
    loadCalendar(calendarUrl);
}

/**
 * Uses Google data JS client library to retrieve a calendar feed from the specified
 * URL.  The feed is controlled by several query parameters and a callback 
 * function is called to process the feed results.
 *
 * @param {string} calendarUrl is the URL for a public calendar feed
 */  


function loadCalendar(calendarUrl) {
    // Create and set the minimum and maximum start time for the date query	
    var t = new Date()
    var y = t.getFullYear()
    var d = t.getDate().toString()
    if (d.length <= 1) {
        d = "0" + d
    }
	
    var m = (t.getMonth()+1).toString() //add one to month because months start at zero
    if (m.length <= 1) {
        m = "0" + m
    } //add zero if month is single digit
    var today = y + "-" + m + "-" + d + "T00:00:00.000-05:00";
    var tomorrow = y + "-" + m + "-" + d + "T23:59:59.000-05:00";	
	
    var service = new 
    google.gdata.calendar.CalendarService('gdata-js-client-samples-simple');
    var query = new google.gdata.calendar.CalendarEventQuery(calendarUrl);
    query.setOrderBy('starttime');
    query.setSortOrder('ascending');
	
    var startMin = google.gdata.DateTime.fromIso8601(today); //'2008-07-29T00:00:00.000-08:00'
    var startMax = google.gdata.DateTime.fromIso8601(tomorrow);
    query.setMinimumStartTime(startMin);
    query.setMaximumStartTime(startMax);
    query.setSingleEvents(true);
	
    service.getEventsFeed(query, listEvents, handleGDError);
}

/**
 * Callback function for the Google data JS client library to call when an error
 * occurs during the retrieval of the feed.  Details available depend partly
 * on the web browser, but this shows a few basic examples. In the case of
 * a privileged environment using ClientLogin authentication, there may also
 * be an e.type attribute in some cases.
 *
 * @param {Error} e is an instance of an Error 
 */
function handleGDError(e) {
//    document.getElementById('jsSourceFinal').setAttribute('style', 'display:none');
    if (e instanceof Error) {
        /* alert with the error line number, file and message */
        alert('Error at line ' + e.lineNumber +
            ' in ' + e.fileName + '\n' +
            'Message: ' + e.message);
        /* if available, output HTTP error code and status text */
        if (e.cause) {
            var status = e.cause.status;
            var statusText = e.cause.statusText;
            alert('Root cause: HTTP error ' + status + ' with status text of: ' + 
                statusText);
        }
    } else {
        alert(e.toString());
    }
}

/**
 * Callback function for the Google data JS client library to call with a feed 
 * of events retrieved.
 *
 * Creates an unordered list of events in a human-readable form.  This list of
 * events is added into a div called 'events'.  The title for the calendar is
 * placed in a div called 'calendarTitle'
 *
 * @param {json} feedRoot is the root of the feed, containing all entries 
 */ 
function listEvents(feedRoot) {
    var entries = feedRoot.feed.getEntries();
    var eventDiv = document.getElementById('events');
    if (eventDiv.childNodes.length > 0) {
        eventDiv.removeChild(eventDiv.childNodes[0]);
    }
    /* create a new unordered list */
    var ul = document.createElement('ul');
    // set the calendarTitle div with the name of the calendar
    // document.getElementById('calendarTitle').innerHTML =
    // "Calendar: " + feedRoot.feed.title.$t; */title hidden
    // loop through each event in the feed
    var len = entries.length;
	var now = new Date();
    for (var i = 0; i < len; i++) {
        var entry = entries[i];
        var title = entry.getTitle().getText();
        var startDateTime = null;
        var startJSDate = null;
        var endDateTime = null;
        var endJSDate = null;
        var times = entry.getTimes();
        if (times.length > 0) {
            startDateTime = times[0].getStartTime();
            startJSDate = startDateTime.getDate();

            endDateTime = times[0].getEndTime();
            endJSDate = endDateTime.getDate();
        }
		if (startJSDate.getDay()!= now.getDay()){
			continue;
		}
        var entryLinkHref = null;
        if (entry.getHtmlLink() != null) {
        //entryLinkHref = entry.getHtmlLink().getHref();
        }
        var dateString = (startJSDate.getMonth() + 1) + "/" + startJSDate.getDate();
        var timeString = "";
        if (!startDateTime.isDateOnly()) {
            dateString += " " + startJSDate.getHours() + ":" + padNumber(startJSDate.getMinutes());

            var startHour = startJSDate.getHours();
            var endHour = endJSDate.getHours();
            var endM = " AM";
            var startM = " AM";

            if (startHour >= 12) {
                startM = " PM";
                if (startHour > 12) {
                  startHour = startHour - 12;
                }
            }

            if (endHour >= 12) {
                endM = " PM";
                if (endHour > 12) {
                  endHour = endHour - 12;
                }
            }
            timeString += startHour +
                            ":" +
                            padNumber(startJSDate.getMinutes()) +
                            startM +
                            ' - ' +
                            endHour +
                            ":" +
                            padNumber(endJSDate.getMinutes()) +
                            endM;
        }     
        var li = document.createElement('li');


        /* if we have a link to the event, create an 'a' element */
        if (entryLinkHref != null) {
            entryLink = document.createElement('a');
            entryLink.setAttribute('href', entryLinkHref);
            entryLink.appendChild(document.createTextNode(title));
            li.appendChild(entryLink);
            li.appendChild(document.createTextNode(' ' + timeString));
        } else {
            li.appendChild(document.createTextNode(title + ' ' + timeString));
        }

        /* append the list item onto the unordered list */
        ul.appendChild(li);
    }
    eventDiv.appendChild(ul);
}
		
//google.setOnLoadCallback(init);
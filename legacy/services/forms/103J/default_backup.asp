<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ LANGUAGE="VBScript" %>
<!--#include file="file:///C|/Users/srhanlm/Documents/Website/services/forms/103J/library/adovbs.asp"-->
<!--#include file="file:///C|/Users/srhanlm/Documents/Website/services/forms/103J/library/iasutil.asp"-->


<%
' On Error Resume Next

' Classsic ASP pages created by Andre F Bruton
' E-mail: andre@bruton.co.za
' Date: 2008/01/19

recaptcha_public_key  = "6LfYRAYAAAAAAFUHs47wtDS9UOJa5esPEUS8Ibi0"
%>

<script type="text/javascript" src="http://library.Reynolds.edu/_scripts/calendarDateInput.js">

/***********************************************
* Jason's Date Input Calendar- By Jason Moon http://calendar.moonscript.com/dateinput.cfm
* Script featured on and available at http://www.dynamicdrive.com
* Keep this notice intact for use.
***********************************************/
</script>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="http://library.Reynolds.edu/_scripts/animatedcollapse.js">

/***********************************************
* Animated Collapsible DIV v2.4- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>


<script type="text/javascript">

animatedcollapse.addDiv('pone', 'fade=0,speed=400,group=packages,hide=1')
animatedcollapse.addDiv('ptwo', 'fade=0,speed=400,group=packages,persist=1,hide=1')
animatedcollapse.addDiv('pthree', 'fade=0,speed=400,group=packages,hide=1')
animatedcollapse.addDiv('pfour', 'fade=0,speed=400,group=packages,hide=1')

animatedcollapse.ontoggle=function($, divobj, state){ //fires each time a DIV is expanded/contracted
	//$: Access to jQuery
	//divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID
	//state: "block" or "none", depending on state
}

animatedcollapse.init()

</script>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en"><!-- InstanceBegin template="file:///C|/Users/srhanlm/Documents/Unnamed Site 3/Templates/jsr_library sub level template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />

<!-- Favicon -->
<link rel="icon" href="http://www.Reynolds.edu/favicon.ico" type="image/x-icon"> 
<link rel="shortcut icon" href="http://www.Reynolds.edu/favicon.ico" type="image/x-icon">

<!-- InstanceBeginEditable name="doctitle" -->
<title>Reynolds Library</title>
<!-- InstanceEndEditable -->
<!-- Dependencies -->
	
	<!-- JavaScript for clearing default search text inputs -->
    <script type="text/javascript" src="file:///C|/Users/srhanlm/Documents/Website/_scripts/util-functions.js"></script>
	<script type="text/javascript" src="file:///C|/Users/srhanlm/Documents/Website/_scripts/clear-default-text.js"></script> 
    

<link href="file:///C|/Users/srhanlm/Documents/Website/_css/library_main.css" rel="stylesheet" type="text/css" />
<link href="file:///C|/Users/srhanlm/Documents/Website/_css/mlink.css" rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" />

<!-- InstanceBeginEditable name="head" -->
<script src="file:///C|/Users/srhanlm/Documents/Website/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="file:///C|/Users/srhanlm/Documents/Website/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="file:///C|/Users/srhanlm/Documents/Website/SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>

<link href="file:///C|/Users/srhanlm/Documents/Website/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="file:///C|/Users/srhanlm/Documents/Website/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="file:///C|/Users/srhanlm/Documents/Website/SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<!-- InstanceEndEditable -->
</head>

<body>

<div id="container">
	<a href="file:///C|/Users/srhanlm/Documents/Website/m/default.htm" class="mobile mobilelink">On a mobile device? Visit http://library.Reynolds.edu/m/</a>
    <div id="top_search">
        <a href="#content-jump">Jump to Content</a>    </div> <!-- closes top_search -->
    
    <div id="banner">   
        <a href="http://www.Reynolds.edu"><img src="file:///C|/Users/srhanlm/Documents/Website/images/jsr-logo.png" alt="J. Sargeant Reynolds Community College Home" class="left"/></a>
        <div class="spacer"></div>
        <h1><a href="file:///C|/Users/srhanlm/Documents/Website/default.htm">LIBRARY</a></h1>
     </div> <!-- closes banner -->
    
<div id="body_main">
	<div id="left_box_sub">
            <img src="file:///C|/Users/srhanlm/Documents/Website/images/photo.png" alt=""/>
            <div class="sub_box_blue">
                <h2 class="fpage-blue"><a href="file:///C|/Users/srhanlm/Documents/Website/default.htm">Library</a></h2>
                
                <div class="sub_box_tabs">
                    <h3>Find Information:</h3>
                    <ul>
                        <li><a href="http://vccslinc.vccs.edu/F/?func=find-b-0&amp;local_base=Reynolds">Catalog for Books/Video</a></li>
                      	<li><a href="http://libguides.Reynolds.edu/subject">Databases by Subject</a></li>
                        <li><a href="http://library.vccs.edu/reference/login.html">Off-Campus Access</a></li>
                  	</ul>
                </div>
                
                <div class="sub_box_tabs">
                    <h3>Research Assistance:</h3>
                    <ul>
                      <li><a href="file:///C|/Users/srhanlm/Documents/Website/research/ask/default.htm">Ask a Librarian</a></li>
                      <li><a href="http://libguides.Reynolds.edu/cite">Citing Sources</a></li>
                      <li><a href="http://libguides.Reynolds.edu/index.php">Research Guides</a></li>
                      <li><a href="file:///C|/Users/srhanlm/Documents/Website/research/faq/default.htm">FAQs</a></li>
                  	</ul>
              	</div>
                
                <div class="sub_box_tabs">
                    <h3>Library Services:</h3>
                    <ul>
                        <li><a href="file:///C|/Users/srhanlm/Documents/Website/services/hours/default.htm">Contacts,  Hours &amp; Directions</a></li>
                   	  <li><a href="file:///C|/Users/srhanlm/Documents/Website/services/circ/default.htm">Circulation Policies</a></li>
                        <li><a href="file:///C|/Users/srhanlm/Documents/Website/services/forms/ill/default.asp">Interlibrary Loan</a></li>
                        <li><a href="file:///C|/Users/srhanlm/Documents/Website/services/forms/group-study/default.asp">Group Study Rooms</a></li>
                        <li><a href="http://libguides.Reynolds.edu/faculty">Faculty Services</a></li>
                        <li><a href="http://libguides.Reynolds.edu/distancelearning">Distance Learning Services</a></li>
                    </ul>
              	</div>
            </div> <!-- ends sub_box_blue -->
            
            <a href="http://www.Reynolds.edu/myReynolds/default.htm" target="_blank" ><img src="http://www.Reynolds.edu/images/homepage/myReynoldshigh.gif" alt="My Reynolds, blackboard, email..." name="blackboardside" id="blackboardside" width="200" border="0" height="40" /></a>
            
            <div class="sub_box_teal">
              <h2 class="fpage-teal">About the Library</h2>
              <ul>
                <li><a href="file:///C|/Users/srhanlm/Documents/Website/about/mission.htm">Library Mission</a></li>
                <li><a href="file:///C|/Users/srhanlm/Documents/Website/about/learning-commons.htm">Learning Commons</a></li>
              </ul>
            </div>
    </div> <!-- ends left_box -->
  <!-- For some reason IE6 won't display the contents w/o something here. So I'm using a 1x1 pixel graphic. -->
	<img src="file:///C|/Users/srhanlm/Documents/Website/images/1x1.gif" alt="" />
    
<!-- InstanceBeginEditable name="body" -->
      <div id="right_box">
        <div class="breadcrumb"> 
   	    	<a href="http://www.Reynolds.edu/">Reynolds Home</a> &gt; <a href="file:///C|/Users/srhanlm/Documents/Website/default.htm">Library Home</a> &gt; <a href="file:///C|/Users/srhanlm/Documents/Website/services/forms/default.htm">Forms</a> &gt; Room 103J Reservation</div> 
        <!-- ends breadcrumb -->
               
        <div id="right_box_wrapper">
        	<a name="content-jump" id="content-jump" href="#"></a>
  			<h2>Library Room 103J - Bibliographic Instruction Room (Parham Road Campus)</h2>
                <p>Parham Library Room 103J is equipped with 25 computers reserved for the instruction of research and library services. When not in use, this room can be reserved by instructors for non-library related instruction when a regular computer lab is not available. Please check with <a href="mailto:broberts@reynolds.edu">Bill Roberts</a> to reserve a regular computer lab first. If you need to reserve Rm 103J, please first <a href="http://inside.jsr.vccs.edu:8086/lrc/ltc103j">check the calendar</a> to view when it might be available; the library reserves the right to approve usage of this room. The room can only be reserved by instructors; please understand that we usually take reservations for no more than one week in advance in case we receive library instruction requests, which take priority over non-librarian-led activities. <span class="required">Items marked with an asterisk (*) are required.</span></p>
          <p>Before  you leave the lab at the end of your class session, make sure your students  follow the <a href="http://www.jsr.vccs.edu/learning/Default.htm">Reynolds Learning Environment principle</a> of Consideration: <em>Keep  your college areas clean, orderly, and ready for use by others.</em> Please  remind your students to:</p>
                <ul>
                  <li>Remove their USB  drives from the computers.</li>
                  <li>Turn off their  computers.</li>
                  <li>Clean up their  workstation area by removing any trash from the desktops and the floor and  place it in the wastebasket.</li>
                  <li>Push in their keyboard  trays and chairs.</li>
                  <li>Take all of their  belongings.</li>
                </ul>
                <p>Also, make sure to turn off the  instructor workstation, projector, printer and lights before you leave the lab. </p>
                <p>Thank you for being considerate.</p>
				<form action="file:///C|/Users/srhanlm/Documents/Website/services/forms/103J/sent.asp" method="post" name="103J" id="103J"> 
		    	<fieldset>
                    	<legend>Instructor Information</legend> 
                            <label for="name" class="required">*Name:</label>
                            <span id="Name">
                            <input type="text" name="Name" size="30" id="name"/>
                            <span class="textfieldRequiredMsg">A value is required.</span></span></span>
                            <br />
                            <br />
							<label for="email" class="required">*Email Address:</label>
                            <span id="email">
                            <input type="text" name="Email" size="45" id="Email"/>
                        <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></span>
                        <br /><br />
                            
							<label for="phone" class="required">*Phone Number: </label>
							<span id="phoneno">
                            <input type="text" name="Phone" size="15" id="phone"/>
                            <span class="textfieldRequiredMsg">A value is required.</span></span>
							<label for="emplid"></label>
					<br />
					  	</fieldset>
        
            			<fieldset>
                        <legend>Class Information</legend>
                        	<label for="classname">Name of class:</label>
                        	<input name="classname" type="text" size="20" id="classname"/> <span class="small_text">(Example: ITE-115)</span><br/><br/>
                            
                            <label for="classsize">Class Size:</label>
                            <input name="classsize" type="text" size="10" id="classsize"/>
                            <span class="small_text"> Note: we have 25 computer workstations available</span>
          				</fieldset>
                        
                        <fieldset>
                        <legend>Room Information</legend>			
                           <label for="date" class="required">*Date you need the room:</label><script>DateInput('date', true)</script> <br/>
<!--                           
                           <label for="date" class="required">*Date you need the room:</label>
                           <span id="date">
                           <input type="text" name="date" size="20" id="date" />
                           <span class="textfieldRequiredMsg">A value is required.</span></span><span class="small_text">(Example: 9/5/08)</span> <br/><br/>
-->                           
                           <label for="time" class="required">*Time range you will need the room:</label>
                           <span id="time">
                           <input type="text" name="time" size="20" id="time" />
                           <span class="textfieldRequiredMsg">A value is required.</span></span><span class="small_text">(Example: 11:15am-12:45pm)</span><br/><br/>
                         	
                           <label for="route" class="required">*Have you already checked with <a href="mailto:broberts@reynolds.edu">Bill Roberts</a> (x5902) to see if a regular computer lab is available?</label>
                           <span id="spryselect1">
<select name="route">
                                     <option value="Yes">Yes</option>
                                     <option value="No" selected="selected">No</option>
                                   </select>
                           <br/>
                           <br/>
       			<label for="comments">Other Information:</label><br/>
                            <textarea name="other" cols="50" rows="5"></textarea>
                           
            
          </fieldset>
                        
					<fieldset>
                        <legend>Submit</legend>
                        <div class="center">
                            <input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2">
                        
                      </div>
                      </fieldset>
                    </form>  
                   
                       
        </div><!-- ends right_box_wrapper -->
      </div><!-- ends right_box -->
<!-- InstanceEndEditable -->
                   
        <div class="spacer"></div>
  </div> <!-- ends body_main -->

    <div id="footer">
        <ul class="footer">
            <li><a href="http://www.Reynolds.edu/default.htm">Home</a>&nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/aboutReynolds.htm">About Reynolds</a> &nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/prospectivestudents.htm">Future Students</a> &nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/currentstudents.htm">Current Students</a> &nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/facultystaff.htm">Faculty/Staff</a> &nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/alumnifriends.htm">Alumni/Friends</a> &nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/search.html">Search</a> &nbsp; | &nbsp;</li>
            <li><a href="http://www.Reynolds.edu/_sitemap/default.htm">Site Map</a></li>
        </ul>
        <p class="footer_text"> &copy; J. Sargeant Reynolds Community College | PO BOX 85622 Richmond, Virginia, USA 23285-5622 | (804) 371-3000</p>
    </div> 
  <!-- ends footer -->
  <div id="updated"><!-- InstanceBeginEditable name="date" -->
	<span class="small_text">Last Updated:
<!-- #BeginDate format:Am1 -->January 7, 2013<!-- #EndDate -->
   	</span>
        <script type="text/javascript">
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("Name");
var sprytextfield2 = new Spry.Widget.ValidationTextField("email", "email", {validateOn:["change"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("phoneno", "none");
var sprytextfield5 = new Spry.Widget.ValidationTextField("time");

//-->
</script>
  <!-- InstanceEndEditable -->  </div> <!-- ends updated -->
</div> 
<!-- ends content -->

<!-- Google Analytics Code -->
	<script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
		try {
			var pageTracker = _gat._getTracker("UA-7396655-1");
			pageTracker._trackPageview();
		} catch(err) {}
    </script>

</body>
<!-- InstanceEnd --></html>

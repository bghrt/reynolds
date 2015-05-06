<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ LANGUAGE="VBScript" %>
<!--#include file="library/adovbs.asp"-->
<!--#include file="library/iasutil.asp"-->


<%
' On Error Resume Next

' Classsic ASP pages created by Andre F Bruton
' E-mail: andre@bruton.co.za
' Date: 2008/01/19

recaptcha_public_key  = "6LfYRAYAAAAAAFUHs47wtDS9UOJa5esPEUS8Ibi0"
%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en"><!-- InstanceBegin template="/Templates/jsr_library sub level template.dwt" codeOutsideHTMLIsLocked="false" -->
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
    <script type="text/javascript" src="../../../_scripts/util-functions.js"></script>
	<script type="text/javascript" src="../../../_scripts/clear-default-text.js"></script> 
    

<link href="../../../_css/library_main.css" rel="stylesheet" type="text/css" />
<link href="../../../_css/mlink.css" rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" />

<!-- InstanceBeginEditable name="head" -->
<script src="../../../SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="../../../SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>

<link href="../../../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="../../../SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<!-- InstanceEndEditable -->
</head>

<body>

<div id="container">
	<a href="../../../m/default.htm" class="mobile mobilelink">On a mobile device? Visit http://library.Reynolds.edu/m/</a>
    <div id="top_search">
        <a href="#content-jump">Jump to Content</a>    </div> <!-- closes top_search -->
    
    <div id="banner">   
        <a href="http://www.Reynolds.edu"><img src="../../../images/jsr-logo.png" alt="J. Sargeant Reynolds Community College Home" class="left"/></a>
        <div class="spacer"></div>
        <h1><a href="../../../default.htm">LIBRARY</a></h1>
     </div> <!-- closes banner -->
    
<div id="body_main">
	<div id="left_box_sub">
            <img src="../../../images/photo.png" alt=""/>
            <div class="sub_box_blue">
                <h2 class="fpage-blue"><a href="../../../default.htm">Library</a></h2>
                
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
                      <li><a href="../../../research/ask/default.htm">Ask a Librarian</a></li>
                      <li><a href="http://libguides.Reynolds.edu/cite">Citing Sources</a></li>
                      <li><a href="http://libguides.Reynolds.edu/index.php">Research Guides</a></li>
                      <li><a href="../../../research/faq/default.htm">FAQs</a></li>
                  	</ul>
              	</div>
                
                <div class="sub_box_tabs">
                    <h3>Library Services:</h3>
                    <ul>
                        <li><a href="../../hours/default.htm">Contacts,  Hours &amp; Directions</a></li>
                   	  <li><a href="../../circ/default.htm">Circulation Policies</a></li>
                        <li><a href="../ill/default.asp">Interlibrary Loan</a></li>
                        <li><a href="default.asp">Group Study Rooms</a></li>
                        <li><a href="http://libguides.Reynolds.edu/faculty">Faculty Services</a></li>
                        <li><a href="http://libguides.Reynolds.edu/distancelearning">Distance Learning Services</a></li>
                    </ul>
              	</div>
            </div> <!-- ends sub_box_blue -->
      <a href="https://jsr.my.vccs.edu/jsp/home.jsp"><img src="../../../images/myReynolds.gif" alt="My Reynolds, blackboard, email..." name="blackboardside" id="blackboardside" width="200" border="0" height="40" /></a>
            
            <div class="sub_box_teal">
              <h2 class="fpage-teal">About the Library</h2>
              <ul>
                <li><a href="../../../about/mission.htm">Library Mission</a></li>
                <li><a href="../../../about/learning-commons.htm">Learning Commons</a></li>
              </ul>
            </div>
    </div> <!-- ends left_box -->
  <!-- For some reason IE6 won't display the contents w/o something here. So I'm using a 1x1 pixel graphic. -->
	<img src="../../../images/1x1.gif" alt="" />
    
<!-- InstanceBeginEditable name="body" -->
      <div id="right_box">
        <div class="breadcrumb"> 
   	    	<a href="http://www.Reynolds.edu/">Reynolds Home</a> &gt; <a href="../../../default.htm">Library Home</a> &gt; <a href="../default.htm">Forms</a> &gt; Group Study Room </div> 
        <!-- ends breadcrumb -->
               
        <div id="right_box_wrapper">
        	<a name="content-jump" id="content-jump" href="#"></a>
  			<h2>Group Study Rooms</h2>
                <p>The Library Technology Center on the Parham Road Campus has eight group study rooms, each of
             	which can accommodate six to eight people. All study rooms are equipped with wireless Internet access, white
                boards, and wall-mounted flat-panel display screens.  College faculty, staff and students are welcomed to use 
                the study rooms for academic and college-related activities, such as collaborative learning projects, 
                small meetings, advising or tutoring sessions, etc. Please read the <a href="GSRPolicy.doc">Group Study Room Policy</a> (.DOC) before you make a reservation. Thank you.</p>
                <p>A Study Room can be reserved with any <strong><span class="required">ONE</span></strong> of the following three methods. 
                  Please come to the Lower Information Desk to get your room at your reserved time.</p>
                <ol>
                  <li>Call the Library Information/Circulation Desk at 804-523-5220</li>
                  <li>Walk in and reserve at the Information/Circulation Desk</li>
                  <li>Fill out the following online reservation form: <span class="required">Items marked with an asterisk (*) are required.</span></li>
                </ol>
				
                <form action="sent.asp" method="post" name="group-study" id="group-study"> 
					<fieldset>
                    	<legend>Your Information</legend> 
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
                        <br />
                            <br />
                            
							<label for="phone" class="required">*Phone Number: </label>
							<span id="phoneno">
                            <input type="text" name="Phone" size="15" id="phone"/>
                            <span class="textfieldRequiredMsg">A value is required.</span></span>
							<label for="emplid">EMPLID:</label>
                            <input type="text" name="Emplid" size="20" id="emplid"/>
                            <br />
							<br />
                
                            <h4>Affiliation</h4>
                                <div class="tickybox">
                                  <ul>
                                    <li>
                                        <label for="student">Student</label> <input type="checkbox" name="affiliation" value="Student" id="student" />
                                    </li>
                                    <li>
                                        <label for="faculty">Faculty</label> <input type="checkbox" name="affiliation" value="Faculty" id="faculty" />
                                    </li>
                                    <li>
                                      <label for="staff">Staff</label> <input type="checkbox" name="affiliation" value="Staff" id="staff" />
                                    </li>
                                  </ul>
                                </div>

                    	</fieldset>
        
            			<fieldset>
                        <legend>Room Information</legend>			
                           <label for="datetime" class="required">*Date and time you need the room:</label>
                           <span id="dt">
                           <input type="text" name="datetime" size="20" id="datetime" />
                           <span class="textfieldRequiredMsg">A value is required.</span></span><span class="small_text">(Example: 9/5/08, 3-5:00 pm)</span> <br/>
                           
                           <label for="PartyNo">Number of people in your group:</label> 
                            <select name="PartyNo" size="1" id="PartyNo">
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                            </select>
            
                            <p class="small_text">Note: (Reservations can be made for groups of two or more people for 
                                a two-hour period with possible renewals at the Information Desk</p>
            
          </fieldset>
                        
					<fieldset>
                        <legend>Submit</legend>
                        <div class="center">
                        	<%=recaptcha_challenge_writer(recaptcha_public_key)%>
                            <br/>                   	
                            <input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2">
                        
                      </div>
                      </fieldset>
                    </form>  
                    
                    <%
					' The code below supplied by Mark Short 
					
					' returns string the can be written where you would like the reCAPTCHA challenged placed on your page 
					function recaptcha_challenge_writer(publickey) 
					  recaptcha_challenge_writer = "<script type=""text/javascript"">" & _ 
					  "var RecaptchaOptions = {" & _ 
					  " theme : 'white'," & _ 
					  " tabindex : 0" & _ 
					  "};" & _ 
					  "</script>" & _ 
					  "<script type=""text/javascript"" src=""http://api.recaptcha.net/challenge?k=" & publickey & """></script>" & _ 
					  "<noscript>" & _ 
					  "<iframe src=""http://api.recaptcha.net/noscript?k=" & publickey & """ frameborder=""1""></iframe><br>" & _ 
					  "<textarea name=""recaptcha_challenge_field"" rows=""3"" cols=""40""></textarea>" & _ 
					  "<input type=""hidden"" name=""recaptcha_response_field"" value=""manual_challenge"">" & _ 
					  "</noscript>" 
					end function 
					
					function recaptcha_confirm(privkey,rechallenge,reresponse) 
					  ' Test the captcha field 
					  Dim VarString 
					  VarString = _ 
					  "privatekey=" & privkey & _ 
					  "&remoteip=" & Request.ServerVariables("REMOTE_ADDR") & _ 
					  "&challenge=" & rechallenge & _ 
					  "&response=" & reresponse 
					  Dim objXmlHttp 
					  Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP") 
					  objXmlHttp.open "POST", "http://api-verify.recaptcha.net/verify", False 
					  objXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
					  objXmlHttp.send VarString 
					  Dim ResponseString 
					  ResponseString = split(objXmlHttp.responseText, vblf) 
					  Set objXmlHttp = Nothing 
					  if ResponseString(0) = "true" then 
						' They answered correctly 
						recaptcha_confirm = "" 
					  else 
						' They answered incorrectly 
						recaptcha_confirm = ResponseString(1) 
					  end if 
					end function 
					%>  
                       
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
<!-- #BeginDate format:Am1 -->May 15, 2009<!-- #EndDate -->
   	</span>
        <script type="text/javascript">
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("Name");
var sprytextfield2 = new Spry.Widget.ValidationTextField("email", "email", {validateOn:["change"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("phoneno", "none");
var sprytextfield3 = new Spry.Widget.ValidationTextField("dt");
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

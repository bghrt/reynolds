<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ LANGUAGE="VBScript" %>
<!--#include file="library/adovbs.asp"-->
<!--#include file="library/iasutil.asp"-->
<%
' On Error Resume Next

' Classsic ASP pages created by Andre F Bruton
' E-mail: andre@bruton.co.za
' Date: 2008/01/19


recaptcha_challenge_field  = Request("recaptcha_challenge_field")
recaptcha_response_field   = Request("recaptcha_response_field")
recaptcha_private_key      = "6LfYRAYAAAAAAIpUPCDAlSq7UGkZ5lUUEPMDXODM"
recaptcha_public_key       = "6LfYRAYAAAAAAFUHs47wtDS9UOJa5esPEUS8Ibi0"
browser                    = Request.ServerVariables("HTTP_USER_AGENT")
ip                         = Request.ServerVariables("REMOTE_HOST")
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />

<!-- Favicon -->
<link rel="icon" href="http://www.Reynolds.edu/favicon.ico" type="image/x-icon"> 
<link rel="shortcut icon" href="http://www.Reynolds.edu/favicon.ico" type="image/x-icon">

<title>Reynolds Library</title>

<link href="../../../_css/library_main.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div id="container">
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
                      	<li><a href="../../../find/databases/subject.htm">Databases by Subject</a></li>
                        <li><a href="http://library.vccs.edu/reference/login.html">Off-Campus Access</a></li>
                  	</ul>
                </div>
                
                <div class="sub_box_tabs">
                    <h3>Research Assistance:</h3>
                    <ul>
                      <li><a href="../../../research/ask/default.htm">Ask a Librarian</a></li>
                      <li><a href="../../../research/cite/default.htm">Citing Sources</a></li>
                      <li><a href="../../../research/guide/default.htm">Research Guides</a></li>
                      <li><a href="../../../research/faq/default.htm">F.A.Qs</a></li>
                  	</ul>
              </div>
                
                <div class="sub_box_tabs">
                    <h3>Library Services:</h3>
                    <ul>
                        <li><a href="../../hours/default.htm">Contacts &amp; Hours</a></li>
                      	<li><a href="../../circ/default.htm">Policies</a></li>
                        <li><a href="../ill/default.asp">Interlibrary Loan</a></li>
                        <li><a href="default.asp">Group Study Rooms</a></li>
                        <li><a href="../../faculty/default.htm">Faculty Services</a></li>
                        <li><a href="../../distance/default.htm">Distance Learning Services</a></li>
                    </ul>
              </div>
            </div> <!-- ends sub_box -->
            
            <a href="http://www.Reynolds.edu/myReynolds/default.htm" target="_blank" ><img src="http://www.Reynolds.edu/images/homepage/myReynoldshigh.gif" alt="My Reynolds, blackboard, email..." name="blackboardside" id="blackboardside" width="200" border="0" height="40" /></a>
            
            <div class="sub_box_teal">
              <h2 class="fpage-teal">About the Library</h2>
              <ul>
                <li><a href="../../../about/mission.htm">Library Mission</a></li>
                <li><a href="../../../about/learning-commons.htm">Learning Commons</a></li>
              </ul>
            </div>
    </div> <!-- ends left_box -->
    
  <!-- For some reason IE6 won't display the contents w/o something here. So I'm using a 1x1 pixel graphic. -->
	<img src="../../images/1x1.gif" alt="" />
    
          <div id="right_box">
        <div class="breadcrumb"> 
   	    	<a href="http://www.Reynolds.edu/">Reynolds Home</a> &gt; <a href="../../../default.htm">Library Home</a> &gt; <a href="../default.htm">Forms</a> &gt; <a href="default.asp">Group Study Rooms</a> &gt; Message Sent</div> 
        <!-- ends breadcrumb -->
               
         <div id="right_box_wrapper">
        	<a name="content-jump" id="content-jump" href="#"></a>
            
            <% 
				cTemp = recaptcha_confirm(recaptcha_private_key, recaptcha_challenge_field, recaptcha_response_field)
				If cTemp <> "" Then 
			%>
           <h2>Error Occurred</h2>
                <p>You may not have entered the word properly. Please hit the back button to try again, or <a href="../../../research/ask/default.htm">contact a librarian</a>.</p>
            
            <% Else %>
           <%
				theSchema="http://schemas.microsoft.com/cdo/configuration/"
				Set cdoConfig=server.CreateObject("CDO.Configuration")
				cdoConfig.Fields.Item(theSchema & "sendusing")= 2
				cdoConfig.Fields.Item(theSchema & "smtpserver")="relay.Reynolds.edu"
				cdoConfig.Fields.Update
				
				set cdoMessage=Server.CreateObject("CDO.Message")
				cdoMessage.Configuration=cdoConfig
				
				cdoMessage.From=Request.Form("Email")
				cdoMessage.To="libprc@jsr.vccs.edu"
				'cdoMessage.To="ahartman@reynolds.edu"
				cdoMessage.Subject="Group Study Reservation"
				cdoMessage.TextBody="Patron Information" & vbCrLf & vbCrLf & "Name: " & Request.Form("Name") & vbCrLf & "Email: " & Request.Form("Email") & vbCrLf & "Phone: " & Request.Form("Phone") & vbCrLf & "Emplid: " & Request.Form("Emplid") & vbCrLf & "Affiliation: " & Request.Form("affiliation") & vbCrLf & vbCrLf & "Room Information" & vbCrLf & vbCrLf & "Date: " & Request.Form("date") & vbCrLf & "Time: " & Request.Form("time") & vbCrLf & "Number of People: " & Request.Form("PartyNo") & vbCrLf &  "Special Requests: " & Request.Form("special")
				cdoMessage.Send
				
				Set cdoMessage=Nothing
				Set cdoConfig=Nothing
			%>
           
           <h2>Reservation Sent</h2>
                <p>Your study room reservation request has been sent. Please come to the Lower Information Desk to get your room at your reserved time.</p>   
                <% End If %>
                     
        </div><!-- ends right_box_wrapper -->
      </div><!-- ends right_box -->
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
	<div id="updated">
		<span class="small_text">Last Updated:
              <!-- #BeginDate format:Am1 -->September 13, 2012<!-- #EndDate -->
    	</span>  </div> <!-- ends updated -->
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

</body>
</html>

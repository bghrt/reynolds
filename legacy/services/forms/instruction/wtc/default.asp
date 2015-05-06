<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=10"/>

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
animatedcollapse.addDiv('pfive', 'fade=0,speed=400,group=packages,hide=1')



animatedcollapse.ontoggle=function($, divobj, state){ //fires each time a DIV is expanded/contracted
	//$: Access to jQuery
	//divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID
	//state: "block" or "none", depending on state
}

animatedcollapse.init()

</script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />

<!-- Favicon -->
<link rel="icon" href="http://www.Reynolds.edu/favicon.ico" type="image/x-icon"> 
<link rel="shortcut icon" href="http://www.Reynolds.edu/favicon.ico" type="image/x-icon">
<title>Reynolds Library</title>
<!-- Dependencies -->
	
	<!-- JavaScript for clearing default search text inputs -->
    <script type="text/javascript" src="../../../../_scripts/util-functions.js"></script>
	<script type="text/javascript" src="../../../../_scripts/clear-default-text.js"></script> 
    

<link href="../../../../_css/library_main.css" rel="stylesheet" type="text/css" />
<link href="../../../../_css/mlink.css" rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" />
<script src="../../../../SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="../../../../SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="../../../../SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>

<link href="../../../../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="../../../../SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="../../../../SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="container">
	<a href="../../../../m/default.htm" class="mobile mobilelink">On a mobile device? Visit http://library.Reynolds.edu/m/</a>
    <div id="top_search">
        <a href="#content-jump">Jump to Content</a>    </div> <!-- closes top_search -->
    
    <div id="banner">   
        <a href="http://www.Reynolds.edu"><img src="../../../../images/jsr-logo.png" alt="J. Sargeant Reynolds Community College Home" class="left"/></a>
        <div class="spacer"></div>
        <h1><a href="../../../../default.htm">LIBRARY</a></h1>
     </div> <!-- closes banner -->
    
<div id="body_main">
	<div id="left_box_sub">
            <img src="../../../../images/photo.png" alt=""/>
            <div class="sub_box_blue">
                <h2 class="fpage-blue"><a href="../../../../default.htm">Library</a></h2>
                
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
                      <li><a href="../../../../research/ask/default.htm">Ask a Librarian</a></li>
                      <li><a href="http://libguides.Reynolds.edu/cite">Citing Sources</a></li>
                      <li><a href="http://libguides.Reynolds.edu/index.php">Research Guides</a></li>
                      <li><a href="../../../../research/faq/default.htm">FAQs</a></li>
                  	</ul>
              	</div>
                
                <div class="sub_box_tabs">
                    <h3>Library Services:</h3>
                    <ul>
                        <li><a href="../../../hours/default.htm">Contacts,  Hours &amp; Directions</a></li>
                   	  <li><a href="../../../circ/default.htm">Circulation Policies</a></li>
                        <li><a href="../../ill/default.asp">Interlibrary Loan</a></li>
                        <li><a href="../../group-study/default.asp">Group Study Rooms</a></li>
                        <li><a href="http://libguides.Reynolds.edu/faculty">Faculty Services</a></li>
                        <li><a href="http://libguides.Reynolds.edu/distancelearning">Distance Learning Services</a></li>
                    </ul>
              	</div>
            </div> <!-- ends sub_box_blue -->
      <a href="https://jsr.my.vccs.edu/jsp/home.jsp"><img src="../../../../images/myReynolds.gif" alt="My Reynolds, blackboard, email..." name="blackboardside" id="blackboardside" width="200" border="0" height="40" /></a>
            
            <div class="sub_box_teal">
              <h2 class="fpage-teal">About the Library</h2>
              <ul>
                <li><a href="../../../../about/mission.htm">Library Mission</a></li>
                <li><a href="../../../../about/learning-commons.htm">Learning Commons</a></li>
              </ul>
            </div>
    </div> <!-- ends left_box -->
  <!-- For some reason IE6 won't display the contents w/o something here. So I'm using a 1x1 pixel graphic. -->
	<img src="../../../../images/1x1.gif" alt="" />
    
<div id="right_box">
      <div class="breadcrumb"> 
   	  <a href="http://www.Reynolds.edu/">Reynolds Home</a> &gt; <a href="../../../../default.htm">Library Home</a> &gt; <a href="../../default.htm">Forms</a> &gt; WC Instruction Request</div> 
      <!-- ends breadcrumb -->
               
      <div id="right_box_wrapper">
        <div class="center">
        	<p class="contact_bar">Contact Us: <a href="../../../hours/downtown.htm">Downtown</a>: 804-523-5211 | <a href="../../../hours/parham.htm">Parham</a>: 804-523-5220 |<a href="../../../hours/western.htm">Goochland</a>: 804-523-5419</p>
        </div>
   	    <a name="content-jump" id="content-jump" href="#"></a>
	    <h2>Library Instruction Request (Goochland Campus): Form 47- 001C</h2>
              <ol class="indent">
               	  <li>Please use a separate Request Form for each class session.</li>
                  <li>Please give <span class="bold">one week notice</span> if possible.</li>
                  <li>You will receive an e-mail or phone notification once it is confirmed.</li>
				  <li>If you have any questions, call the Reference Desk at 523-9419 (Western).</li>
              </ol>
              <p>Please fill out the form below. <span class="required">Items marked with an asterisk (*) are required.</span></p>
              <form action="sent.asp" method="post" name="WTCinstruction" id="WTCinstruction"> 
		    	<fieldset>
                    	<legend>Instructor Information</legend>
                            <label for="name" class="required">*Name:</label>
                            <span id="Name">
                            <input type="text" name="Name" size="30" id="name"/>
                            <span class="textfieldRequiredMsg">A value is required.</span></span><br />
                            <br />
                <label for="Email" class="required">*Email Address:</label>
                <span id="Email">
                            <input type="text" name="Email" size="45" id="Email"/>
                <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span><br /><br/>
                            
							<label for="phone" class="required">*Phone Number: </label>
							<span id="phoneno">
                            <input type="text" name="Phone" size="15" id="phone"/>
                            <span class="textfieldRequiredMsg">A value is required.</span></span>
                            <br />
                            
		  	    </fieldset>
        
           			  <fieldset>
                        <legend>Course Information</legend>
                       	  <label for="classname">Course:</label>
                       	  <input name="classname" type="text" size="20" id="classname"/> <span class="small_text">(Example: ITE-115)</span><br/><br/>
                            
                          <label for="classsize">Class Size:</label>
                          <input name="classsize" type="text" size="10" id="classsize"/>
                          <br/>
                    <br/>
                                                        
                          <label for="instattend" class="bold">Instructor Attendance</label>
                          <p>Library instruction is most effective when instructors are present. However, if for any reason you 
                            cannot join your class, please notify us, particularly if you want us to take roll. 
                            Email: <a href="emailto:mhady@reynolds.edu">mhady@reynolds.edu</a> - OR - Call: 523-9419. <br/>
                        </p>
                            
<div class="tickybox">
                                  <ul>
                                  	<li>Will you be available to join your class?</li>
                                    <li>
                                        <label for="attendyes">Yes</label> <input name="attend" type="radio" id="attendyes" value="Yes" checked="checked" />
                                    </li>
                                    <li>
                                        <label for="attendno">No</label> <input type="radio" name="attend" value="No" id="attendno" />
                                    </li>
                                  </ul>
                              </div>
                 
       				  </fieldset>
                        
                      <fieldset>
                        <legend>Date/Location Information</legend>
                        <!-- Javascript date select with calendar -->
						<label for="pdate" class="required">*Preferred Date:</label> <script>DateInput('pdate', true)</script>

<!--						<input type="button" onClick="alert(this.form.orderdate.value)" value="Show date value passed">
		
                           <label for="date" class="required">*Preferred Date:</label>
                           <span id="date"><span id="pdate">
                           <input type="text" name="date2" size="20" id="date2" />
                           <span class="textfieldRequiredMsg">A value is required.</span></span><span class="textfieldRequiredMsg">A value is required.</span></span><span class="small_text">(Example: 9/5/08)</span> <br/>
-->
                         <br/>
                           
                         <label for="ptime" class="required">*Preferred Time:</label>
                          <input type="text" name="ptime" size="20" id="ptime" />
                          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldRequiredMsg">A value is required.</span><span class="small_text">(Example: 11:15am-12:45pm)</span><br/>
                         <br/>
                            
                       	  <label for="adate" class="required">*Alternate Date: </label><script>DateInput('adate', true)</script><br/>
                         <!--<input name="adate" type="text" size="20" id="adate" />-->
                         <label for="atime"> Alternate Time (if different): </label>
                         <input name="atime" type="text" size="20" id="atime" />
                         <br/><br/>

						  <label for="altroom" class="bold">Location</label>
                          <p>The library instruction will be conducted in a computer lab.  The   reference librarian will notify you of the room number once it's   confirmed. If your class already meets in a computer lab classroom, please give the room number: 
                            <input name="altroom" type="text" size="10" id="altroom" /> </p>
                           
	            </fieldset>
                    
                  <fieldset>
                    <legend>Assignment Information</legend>
                    <p>Please describe the type of research assignment your class is working on 
                    in the box provided below. </p>
                    <p>If you have a copy of the research assignment, please COPY & PASTE the ASSIGNMENT into the box below.  
                    Also include some SAMPLE TOPICS so we can demonstrate how to search these topics during the session.</p>
                    <p>You can also send an email with the attached assignment to: <a href="emailto:mhady@reynolds.edu">mhady@reynolds.edu</a>.</p>
                    <p>
                      <label for="assignmentdesc" class="required">*Assignment Description</label><br/>
                      <textarea name="assignmentdesc" id="assignmentdesc" cols="65" rows="5"></textarea>
                    <span class="textareaRequiredMsg">A value is required.</span></p>
                      
                    <p class="required">*Citation Style</p>
                    
                    <ul class="tickybox">
                      <li><label for="citationstyle_0">APA </label><input type="radio" name="citationstyle" value="APA" id="citationstyle_0" /> </li>
                      <li><label for="citationstyle_1">MLA </label><input name="citationstyle" type="radio" id="citationstyle_1" value="MLA" checked="checked" />
                      </li>
                      <li><label for="citationstyle_2">Other </label><input type="radio" name="citationstyle" value="Other" id="citationstyle_2" /></li>
                      <li><label for="citationstyle_3">Not Needed </label><input type="radio" name="citationstyle" value="Not Needed" id="citationstyle_3" /></li>
                    </ul>
                </fieldset>

               
                  <legend>Instruction Package</legend>
                  <p>We offer several different <a href="http://library.Reynolds.edu/services/faculty/customizedinstruction.jpg" target="_blank">library instruction packages</a> as indicated below. 
                  Click on the instruction package you are interested in and then check the bullet shown. When you are finished, click on the Submit button located near the end
                   of this form.  If you would like to know more about each of the skills covered, please check 
                  <a href="http://libguides.Reynolds.edu/research" target="_blank">Guide to Research at Reynolds Library</a> for the handouts and worksheets.</p>
                  
                 
               <div class="pkgselectheader"><a href="#"  rel="toggle[pfour]" data-openimage="http://library.Reynolds.edu/images/collapse_arrow.png" data-closedimage="http://library.Reynolds.edu/images/expand_arrow.png"><img src="http://library.Reynolds.edu/images/expand_arrow.png" border="0" /></a> <a href="javascript:animatedcollapse.show('pfour')">Research Collaboration</a>
                </div>
          <div id="pfour" class="pkgselectbody"><br/>
                    <label for="pkg4" class="bold">Select Custom Package</label>
                    <input type="radio" name="package" value="Custom Package" id="pkg4" />
                    <br/>
                    <br/>This customizable package is recommended for <strong>classes that have an upcoming</strong> research assignment.  Collaborate with our librarians to <strong>tailor instruction to a specific assignment</strong>.
                    <p></p> 

                    <p>**We recommend that you select no more than:                    </p>
                    <p>•	3 skill sets for a 50 minute session                   <br />	
                    • 4 skill sets for a 75 minute session                    </p>
          <p>Possible items we can cover are included under each skill set. A librarian will be in touch with you to discuss the skill sets to cover during the session/s. <br />
          </p>
                   
                     
          <ul class="nobullet">
                          <li>
                            <input type="checkbox" name="custom" value="Custom: Introdution" id="custom1" />
                            <label for="custom1"> <span class="bold"><a href="#">Introduction <br />
                            </a></span><a href="#"><span class="texttime">
                            <!--, Recommended for general research paper when students have to choose their own topics.)-->
                            </span></a></label>
                    •	Overview of the physical layout of the library
                          <li>•	How to access & navigate the library’s web site                          
                          <li> •	Research help options 
                          <li>•	Printing, photocopying, & scanning in the library</li><br />
                              
                              
                        
                        <ul class="nobullet">
                            <li></li>
                            <li>
                              <input type="checkbox" name="custom" value="Custom: Refine Topic" id="custom2" />
                              <label for="custom2"> <a href="#"><span class="bold">Topic Ideas & Refine Your Topic</span></a></label>
                            <li>•	How to find topic ideas and refine topics using the library databases and topic idea web sites (e.g., CQ Researcher, Issues & Controversies, Idea Generator)
                          </li>
                          
                        </ul><br >
                     
                          <ul class="nobullet">
                          <li>
                            <strong>
                            <a href="#">
                            <input type="checkbox" name="custom" value="Custom: Find Books" id="custom3" />
                            <label for="custom3"> Find Books<br />
                             
                          </label>
                          
                            </a></strong></li>
                            
                            <li>•Search tips for  using QuickSearch to find print books and eBooks (e.g., search by author,  subject or title)<strong></strong></li>
                              
                            <li>•	Request a book (place hold)
                          </li>  <li>	•	Locate books by LC call number
                          </li>  <li>•		Policies & procedures for checking out books)
                          </li>
                          
                           <li>•			
                          Search and  navigation tips for using a specific eBook collection<strong></strong></li>
                           <li></li>
                          <li><strong><a href="#">
                            <label for="custom3">                            </label>
                          </a></strong>
                            <a href="#">
                            <label for="custom3"></label>
                            </a></li>
                         
<li></li>
                        </ul>
                      <br />
                      <ul class="nobullet">
                        <li>
                          <input type="checkbox" name="custom" value="Customr: Borrowing From Other Libraries" id="custom4" />
                          <label for="custom4"> <span class="recommended"><a href="#">Borrowing from other libraries<br />
                          
                          </a></span></label>
                        <li>•			Interlibrary Loan  (ILL) – how to request books and articles from other libraries</li>
                        <li></li>
                           <li>•			
                          Richmond Academic Library Consortium (RALC)  - procedures for borrowing books from academic libraries in the Richmond area<strong></strong></li><br >
                       
                          
                        <li>
                          <input type="checkbox" name="custom" value="Custom: Find Articles" id="custom6" />
                          <label for="custom6"> <a href="#"><strong>Find Articles </strong></a></label>
                        </li>
                       
                        <li>•	Search tips for finding articles in the library databases (e.g., AND & OR connectors, truncation, exact phrase searching)
                        </li>
                        <li>•	Learn the difference between scholarly journals and popular magazines</li>
                        <li> •	How to access the databases from off campus                          </li>
                        <li>•	How to search for databases outside of QuickSearch (e.g., Popular Databases and Database by Subject menus)</li>
                        <li> •	Search and navigation tips for using a specific library database                          </li>
                        <li>•	Database citation tools </li><br />
                        <li>
                          <input type="checkbox" name="custom" value="Custom: Avoid Plagiarism" id="custom7" />
                          <label for="custom7"> <a href="#"><strong>Avoid Plagiarism </strong></a></label>
                        </li>
            </ul>
                     <li>•	What is plagiarism</li><li>
•	Why sources should be cited</li>
<li>•	Types of plagiarism</li>
<li>•	Tips for avoiding plagiarism</li><br />

                      
                        <ul class="nobullet">
                          <li>
                            <input type="checkbox" name="custom" value="Custom: Indentify your information needs" id="custom8" />
                            <label for="custom8"> <a href="#"><strong>Identify your Information Needs & Resources</strong></a></label><li>•	Information Cycle - how information is produced, where it comes from, and how it changes over time</li><li>
•	Types of information sources – comparison of sources, coverage, when to use, and retrieval methods</li><br />

                         
                          
                          <li>
                            <strong>
                            <a href="#">
                            <input type="checkbox" name="custom" value="Custom: Evaluate Resources" id="custom9" />
                            <label for="custom9"> Evaluate Resources</label>
                          </a></strong></li>
                           <li> •	Learn the difference between sources found in licensed library databases vs. sources found through Internet search engines like Google</li><li>
•	Criteria for evaluating sources</li><li>
•	Wikipedia</li><br />

                          <li>
                            <strong>
                            <a href="#">
                            <input type="checkbox" name="custom" value="Library Tour" id="custom10" />
                            <label for="custom10"> Library Tour</label>
                            </a></strong>
                            <a href="#">
                            <label for="custom10"></label>
                          </a> </li><br />
                          <li>
                            <input type="checkbox" name="custom" value="IndividualResearch" id="custom11" />
                            <label for="custom11"> <a href="#"><strong>Individual Research Time - Number of minutes</strong></a> </span></label>
                            <label for="minutes"></label>
                            <input name="Minutes" type="text" id="minutes" size="5" />
                          minutes</li>
                         <li> If you would like to save time at the end of the session for students to perform research on their individual topics, please specify the number of minutes you would like for this activity.<br />
                         <br><input type="checkbox" name="custom" value="openworkshops" id="custom12" />
                            <label for="custom11"> <a href="#"><strong>Open Workshops</strong></a> </span></label>
                         </li>
                         <li> Finally,
                          check our open <a href="http://library.Reynolds.edu/events/workshops/default.htm">session workshops pag</a>e for other types of instruction we can offer during a scheduled class period.  These workshops can be tailored to 50 and 75 minute classes.</li>

                        </ul>
                      
            </ul>
            </div>
                  
                  <p></p>
<div class="pkgselectheader"><a href="#" rel="toggle[pone]" data-openimage="http://library.Reynolds.edu/images/collapse_arrow.png" data-closedimage="http://library.Reynolds.edu/images/expand_arrow.png"><img src="http://library.Reynolds.edu/images/expand_arrow.png" border="0" /></a> <a href="javascript:animatedcollapse.show('pone')">Research Basics</a>
                (50 Minutes)</div>
                        
                      <div id="pone" class="pkgselectbody">
                        <br/>
                          <label for="pkg1" class="bold">Select Package One</label>
                          <input name="package" type="radio" id="pkg1" value="Package 1"  />
                        <br/><br/>
                        <p>This pre-defined package is recommended for classes that <strong>need an overview</strong> of  Reynolds  Library resources and services and how to get started with the research process.</p>
                        <p><strong>Introduction  </strong></p>
                        <ul>
                          <li>Overview of the physical  layout of the library</li>
                          <li>How to access  &amp; navigate the library&rsquo;s web site</li>
                          <li>Research help  options </li>
                          <li>Printing, photocopying,  &amp; scanning in the library</li>
                        </ul>
                        <p><strong>Evaluate Resources  </strong></p>
                        <ul>
                          <li>Learn the  difference between sources found in licensed library databases vs. sources  found through Internet search engines like Google</li>
                          <li>Criteria for evaluating  resources (ABCDs)</li>
                        </ul>
                        <p><strong>Topic Ideas  &amp; Refine Your Topic </strong></p>
                        <ul>
                          <li>How to find topic  ideas and refine topics using the library databases and topic idea web sites  (e.g., CQ Researcher, Issues &amp; Controversies, Idea Generator) <strong></strong></li>
                        </ul>
                        <p><strong>Find Resources  </strong></p>
                        <ul>
                          <li>Search tips for  using QuickSearch to find resources such as books, articles, and videos (e.g.,  AND &amp; OR connectors, truncation, exact phrase searching)<strong></strong></li>
                          <li>Request a book  (place hold)<strong></strong></li>
                          <li>Locate books by  LC call number<strong></strong></li>
                          <li>Policies &amp;  procedures for checking out books<strong></strong></li>
                          <li>Learn the  difference between scholarly journals and popular magazines<strong></strong></li>
                          <li>How to access the  databases from off campus<strong></strong></li>
                          <li>How to search for  databases outside of QuickSearch (e.g., Popular Databases and Database by  Subject menus)<strong></strong></li>
                        </ul>
                      </div>
                     <br />
                     
                      <div class="pkgselectheader"><a href="#" rel="toggle[ptwo]" data-openimage="http://library.Reynolds.edu/images/collapse_arrow.png" data-closedimage="http://library.Reynolds.edu/images/expand_arrow.png"><img src="http://library.Reynolds.edu/images/expand_arrow.png" border="0" /></a> <a href="javascript:animatedcollapse.show('ptwo')">Research Essentials  (75 minutes)</a>
                      </div>
                      
            <div id="ptwo" class="pkgselectbody"><br/>
                          <label for="pkg2" class="bold">Select Package: Research Essentials</label>
                          <input type="radio" name="package" value="Package 2" id="pkg2" /><br/><br/>
                          Covers <strong>Research Basics</strong>, and also <strong>Citing Sources</strong>:<br/>
                <ul>
               	    <li>Learn how to determine what type of source  the item is, where the source came from, and identify the various parts of a  citation.<strong> </strong></li>
<li>Learn how to access and use automatic citation generators (e.g., database citation tools, EasyBib).</li>
                                                  <li>Learn how to  access the online Citation Style guides for additional help.</li>
           	    </ul>
              </div>
                      <br/>
                  <div class="pkgselectheader"><a href="#" rel="toggle[pfive]" data-openimage="http://library.Reynolds.edu/images/collapse_arrow.png" data-closedimage="http://library.Reynolds.edu/images/expand_arrow.png"><img src="http://library.Reynolds.edu/images/expand_arrow.png" alt="" border="0" /></a> <a href="javascript:animatedcollapse.show('pfive')">Library Mobile Scavenger Hunt: (50-90 minutes)</a> </div>
                    <div id="pfive" class="pkgselectbody"><br/>
                        <label for="pkg5" class="bold">Select  Package</label>
                        <input type="radio" name="package" value="Library In Your Pocket" id="pkg5" />
                        <br/>
                        <br/>
                     Recommended for SDV 100, ITE 115, developmental English and English 111. Instead of following a librarian on a traditional tour of the library, students will embark on an engaging and interactive scavenger hunt, digital style.  Armed with an iPad, a QR code reader and Pinterest, students will roam the library in teams to uncover mysterious “codes” and “pin” their answers about the rich resources and services the library has to offer.  A minimum of 50 minutes is required for this group activity.<br /> 
           </div>
                  
                 
                      <br/>
            
                        
				  <fieldset>
                      <legend>Submit</legend>
                      <div class="center">
                          <input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2">
                        
                    </div>
                </fieldset>


        </form> 
         
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
  <div id="updated"> <span class="small_text">Last Updated:
<!-- #BeginDate format:Am1 -->June 26, 2014<!-- #EndDate -->
    	</span>
  		<script type="text/javascript">
<!--
var sprytextfield2 = new Spry.Widget.ValidationTextField("Name", "none", {validateOn:["change"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("Email", "email", {validateOn:["blur", "change"]});
var sprytextfield1 = new Spry.Widget.ValidationTextField("phoneno", "none", {validateOn:["change"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("ptime", "none");
var sprytextarea1 = new Spry.Widget.ValidationTextarea("assignmentdesc");
//-->
</script>  </div> <!-- ends updated -->
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
</html>

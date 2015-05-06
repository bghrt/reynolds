<%@ Language= "VBScript" CODEPAGE=65001%> 
<%

	' set the year so it knows which folder to go into
	do_year = request.querystring("y")
	
	' get the month
	do_month = request.querystring("m")
	
	' get the query string
	do_view = request.querystring("view")
	
	' get the xml
	'xml = "D:\path\to\xml.xml" to find root, you can put response.write(Server.MapPath("xmlpagetitle.xml")) in asp page
	xml_path = "E:\Inetpub\library\find\new\archive\rss\xml\" & do_year & "\" & do_month & ".xml"
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>New and Recommended Titles at Reynolds</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="newbook.css" rel="stylesheet" type="text/css" />
</head>
<body>
	
    <div id="header">
		<a href="http://www.Reynolds.edu"><img src="Reynolds_nav.jpg" alt="JSR Community College"></a>
		<a class="white_link" href="http://library.Reynolds.edu">Library Home</a> &gt;&gt;  
        <a class="white_link" href="../../default.htm"> New Books Main</a>    
    </div>
	
	<h1>New and Recommended Titles at Reynolds Library for <%=do_month%></h1>
	<p>RSS feed for new and recommended books at J. Sargeant Reynolds Community College Library &nbsp; &nbsp;
      <a href='http://www.ifeedreaders.com/subscribe.php?thefeed=http://library.Reynolds.edu/find/new/archive/rss/new_books.xml&'>
      <img src='http://www.ifeedreaders.com/buttons/button2.gif' alt='Subscribe' border'0' title='Click for Subscription Options'/></a>
	</p>
	
	<div id="nav">
		<p>
		  <a href="http://library.Reynolds.edu/find/newbooks/archive/rss/viewbooks.asp?y=<%=do_year%>&amp;m=<%=do_month%>" >New Titles (by Collection)</a> | 
		  <a href="http://library.Reynolds.edu/find/newbooks/archive/rss/viewbooks.asp?view=az&amp;y=<%=do_year%>&amp;m=<%=do_month%>" >New Titles (A-Z)</a> | 
		  <a href="http://library.Reynolds.edu/find/newbooks/archive/rss/viewbooks.asp?view=rec&amp;y=<%=do_year%>&amp;m=<%=do_month%>" >Recommended Titles</a>
		</p>
	</div>
	<hr>
<%
	
	' get the xslt
	xslt_path = ""
	if do_view = "az" then
		'xslt_path = "c:\path\to\rec\xslt.xsl"
		xslt_path = "E:\Inetpub\library\find\new\archive\rss\new_az.xsl"
	elseif do_view = "rec" then
		'xslt_path = "c:\path\to\all\books\xslt.xsl"
		xslt_path = "E:\Inetpub\library\find\new\archive\rss\rec_default.xsl"
	else
		xslt_path = "E:\Inetpub\library\find\new\archive\rss\new_default.xsl"
	end if 

	
	' load the xml
	set xml = Server.CreateObject("MSXML2.DOMDocument")	
	xml.async = false
	xml.resolveExternals = false
	xml.validateOnParse = false
	xml.load xml_path
	
	' load the xslt
	set xslt = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")	
	xslt.async = false
	xslt.resolveExternals = false
	xslt.validateOnParse = false
	xslt.load xslt_path
	
	' set up the transformer
	set template = Server.CreateObject("MSXML2.XSLTemplate")
	template.stylesheet = xslt
	set transformer = template.CreateProcessor()
	transformer.input = xml
	
	' do the transformation
	transformer.transform()
	
	' write the result
	response.write transformer.output

%>

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
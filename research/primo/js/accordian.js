$(document).ready(function(){

  $('body').attr("style", "margin-left: auto !important; margin-right: auto !important;");

	// add instructions to citation linker
  var citationText='<p class="vcul-help-text">Fill in as much of the citation information as you can to connect directly to a specific article, journal, or book.</p>';
  $('div.EXLCitationLinkerHeader').append(citationText);

	// add browse link to advanced
	var browseLink='<div class="EXLSearchFieldRibbonBrowseSearchLink"><a class="EXLSearchFieldRibbonAdvancedTwoLinks" title="Browse Books and Media" href="search.do?fn=showBrowse&amp;mode=BrowseSearch&amp;dscnt=0&amp;fromEshelf=false&amp;fromTop=true&amp;fromPreferences=true&amp;dstmp=1377884473837&amp;menuitem=0&amp;vid=VCU">Browse Books and Media</a></div>';
  $('.EXLBriefDisplay #exlidAdvancedSearchTile.EXLAdvancedSearch #exlidAdvancedSearchRibbon .EXLSearchFieldRibbonFormLinks').append(browseLink);

	// add advanced link to browse
  var advancedLink='<a style="margin-left:20px;" class="EXLSearchFieldRibbonAdvancedTwoLinks" title="Switch to Advanced Search" href="search.do?mode=Advanced&amp;ct=AdvancedSearch&amp;dscnt=0&amp;fromEshelf=false&amp;fromTop=true&amp;fromPreferences=false&amp;dstmp=1377891402235&amp;menuitem=0&amp;vid=VCU" id="advancedSearchBtn">Advanced Search</a>';
	$('#exlidAdvancedSearchTile #exlidAdvancedSearchRibbon.EXLAdvancedBrowseRibbon .EXLSearchFieldRibbonFormLinks').append(advancedLink);

	// clear fix containers
  var clearMain='<div class="clearfix"></div>';
	$('.EXLResultsContainer', '#exlidUserAreaTile').append(clearMain);
	$('#exlidAdvancedSearchRibbon .EXLSearchTabsContainer').append(clearMain);

	// facets sliding drawer
	var openFacets='<a href="#" id="openSidebar">Filter options</a>';
	$('#EXLFacetContainer').prepend(openFacets);

	$('a#openSidebar').click(function(){
		$('#exlidFacetTile').animate({left: "0px"}, 500);
	});

	var closeFacets='<a href="#" id="closeSidebar"></a>';
	$('.EXLFacetContainer h3').after(closeFacets);

	$('a#closeSidebar').click(function(){
		$('#exlidFacetTile').animate({left: "-900px"}, 500);
	});

	// add dropdown menu for tablet view
	var menuDropdown='<a href="#" class="header-dropdown">More search options <span class="icon-arrow-down"></span></a>';
	$('ul#exlidMainMenuRibbon').before(menuDropdown);
		$('a.header-dropdown').click(function(){
		$('ul#exlidMainMenuRibbon').toggleClass('content-visible');
	});

  // show/hide facets
  if ($("a#openSidebar").css("display") == "none" ){
    $('#exlidFacet0 .EXLDateRangeText').next().hide();
  }
  if ($("#EXLFacetTile").css("left") == "0px" ){
    $('#exlidFacet0 .EXLDateRangeText').next().show();
  }

  $('#facetList h4').addClass('show');
  $('h4.EXLFacetTitleLabelPHolderfacet_creationdate').removeClass('show');
  $('.show').nextAll().addClass('hidden');
  $('.show').click(function(){
    $(this).nextAll().toggleClass('hidden');
    $(this).toggleClass('icon-shift');
  });
  $('h4.EXLFacetTitleLabelPHolderfacet_creationdate').click(function(){
    $(this).nextAll().toggleClass('hidden');
  });
});
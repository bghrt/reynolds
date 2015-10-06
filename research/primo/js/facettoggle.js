$(document).ready(function() {

//rename the facets
$( ".EXLFacetTitleLabelPHolderfacet_rtype" ).html("Filter by <b>Type of Source</b>");
$( ".EXLFacetTitleLabelPHolderfacet_library" ).html("Filter By Reynolds Campuses");
$( ".EXLFacetTitleLabelPHolderfacet_domain" ).html("Filter By Databases");
$( ".EXLFacetTitleLabelPHolderfacet_topic" ).html("Filter by Topic Keywords");
$( ".EXLFacetTitleLabelPHolderfacet_genre" ).html("Filter By Document Type");
$( ".EXLFacetTitleLabelPHolderfacet_lang" ).html("Choose Other Languages");
$( ".EXLFacetTitleLabelPHolderfacet_creator" ).html("Filter by Author");
$( ".EXLFacetTitleLabelPHolderfacet_jtitle" ).html("Filter By Journal");


//toggle facets


    $(".EXLFacetTitleLabelPHolderfacet_rtype").addClass("ractive");

    var primo = $('#exlidFacetSublist1 ');
    $(primo).hide();
    $('.EXLFacetTitleLabelPHolderfacet_rtype').click(function(e) {
        $(primo).slideToggle('800');
		
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_rtype').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
		
    });

    //library

    $(".EXLFacetTitleLabelPHolderfacet_library").addClass("ractive");

    var library = $('#exlidFacetSublist3 ');
    $(library).hide();
    $('.EXLFacetTitleLabelPHolderfacet_library').click(function(e) {
        $(library).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_library').click(function() {
        $(this).toggleClass('ractive ractive2').toggleClass('bghover ');
    });


    //domain

    $(".EXLFacetTitleLabelPHolderfacet_domain").addClass("ractive");

    var domain = $('#exlidFacetSublist5 ');
    $(domain).hide();
    $('.EXLFacetTitleLabelPHolderfacet_domain').click(function(e) {
        $(domain).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_domain').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });


    //author


    $(".EXLFacetTitleLabelPHolderfacet_creator").addClass("ractive");

    var author = $('#exlidFacetSublist6');
    $(author).hide();
    $('.EXLFacetTitleLabelPHolderfacet_creator').click(function(e) {
        $(author).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_creator').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });

    //genre

    $(".EXLFacetTitleLabelPHolderfacet_genre").addClass("ractive");

    var genre = $('#exlidFacetSublist7 ');
    $(genre).hide();
    $('.EXLFacetTitleLabelPHolderfacet_genre').click(function(e) {
        $(genre).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_genre').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });



    //genre

    $(".EXLFacetTitleLabelPHolderfacet").addClass("ractive");

    var genre = $('#exlidFacetSublist7 ');
    $(genre).hide();
    $('.EXLFacetTitleLabelPHolderfacet').click(function(e) {
        $(genre).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });

    //lcc
    $(".EXLFacetTitleLabelPHolderfacet_lcc").addClass("ractive");

    var lcc = $('#exlidFacetSublist8 ');
    $(lcc).hide();
    $('.EXLFacetTitleLabelPHolderfacet_lcc').click(function(e) {
        $(lcc).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_lcc').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });


    //title

    $(".EXLFacetTitleLabelPHolderfacet_jtitle").addClass("ractive");

    var title = $('#exlidFacetSublist9 ');
    $(title).hide();
    $('.EXLFacetTitleLabelPHolderfacet_jtitle').click(function(e) {
        $(title).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_jtitle').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });

    //topic

    $(".EXLFacetTitleLabelPHolderfacet_topic").addClass("ractive");

    var topic = $('#exlidFacetSublist10 ');
    $(topic).hide();
    $('.EXLFacetTitleLabelPHolderfacet_topic').click(function(e) {
        $(topic).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_topic').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });

    //language

    $(".EXLFacetTitleLabelPHolderfacet_lang").addClass("ractive");

    var lang = $('#exlidFacetSublist11 ');
    $(lang).hide();
    $('.EXLFacetTitleLabelPHolderfacet_lang').click(function(e) {
        $(lang).slideToggle('800');
        e.preventDefault();
    });

    $('.EXLFacetTitleLabelPHolderfacet_lang').click(function() {
        $(this).toggleClass('ractive ractive2 ').toggleClass('bghover ');
    });


});

jQuery(function($) {
  var $dateSubmit, $end, $slider, $sliderURL, $start, addEventHandlers, addYear, getURL, gotoURL, hideLink, maxYear, minYear, padYear, ready, removePreviousDates, restrictKeyPress, restrictKeyUp, showLink, sortNumber, submitEnd, submitStart, updateEnd, updateSlider, updateStart, updateURL, yearIndex, yearValue, years;
  $slider = $('#slider-range');
  if ($slider.length > 0) {
    $sliderURL = $("#sliderURL");
    $start = $('#startdate');
    $end = $('#enddate');
    $dateSubmit = $('#dateSubmit');
    minYear = 1;
    maxYear = new Date().getFullYear();
    years = window.limits;
    removePreviousDates = function() {
      var modifiedURL, nameMatches, originalURL, valueMatches;
      originalURL = $sliderURL.val();
      modifiedURL = originalURL;
      nameMatches = originalURL.match(/fctN=[^&]+&?/g);
      valueMatches = originalURL.match(/fctV=[^&]+&?/g);
      $.each(nameMatches, function(index, nameMatch) {
        var valueMatch;
        if (nameMatch.match(RegExp("=facet_creationdate"))) {
          valueMatch = valueMatches[index];
          modifiedURL = modifiedURL.replace(nameMatch, "");
          modifiedURL = modifiedURL.replace(valueMatch, "");
        }
      });
      return $sliderURL.val(modifiedURL);
    };
    hideLink = function() {
      $dateSubmit.hide();
    };
    showLink = function() {
      $dateSubmit.show();
    };
    getURL = function() {
      var dateString, url;
      showLink();
      url = $sliderURL.val();
      url = url.replace('fctN=xxx', "fctN=facet_creationdate");
      dateString = "fctV=%5b" + (padYear($start.val())) + "+TO+" + (padYear($end.val())) + "%5d";
      url = url.replace('fctV=xxx', dateString);
      return url;
    };
    padYear = function(year) {
      var pad;
      year = '' + year;
      pad = "0000";
      return pad.substring(0, pad.length - year.length) + year;
    };
    updateURL = function() {
      $dateSubmit.attr('href', getURL());
    };
    gotoURL = function() {
      window.location.href = getURL();
    };
    restrictKeyPress = function(event) {
      var keyValue;
      keyValue = String.fromCharCode(event.which);
      if (keyValue && /\D/.test(keyValue)) {
        event.preventDefault();
      }
    };
    restrictKeyUp = function(event) {
      var input, newValue;
      input = $(this);
      newValue = input.val().replace(/\D/g, '');
      if (newValue !== input.val()) {
        input.val(newValue);
      }
    };
    yearValue = function(input) {
      var string;
      string = input.val().replace(/\D/g, '');
      if (string === '') {
        return minYear;
      } else {
        return parseInt(string, 10);
      }
    };
    submitStart = function(event) {
      if (event.which === 13) {
        updateStart();
        return gotoURL();
      }
    };
    submitEnd = function(event) {
      if (event.which === 13) {
        updateEnd();
        return gotoURL();
      }
    };
    updateStart = function(event) {
      var endValue, startValue;
      startValue = yearValue($start);
      endValue = yearValue($end);
      if (startValue < minYear) {
        startValue = minYear;
      } else if (startValue > endValue) {
        startValue = endValue;
      }
      $start.val(startValue);
      return updateSlider();
    };
    updateEnd = function(event) {
      var endValue, startValue;
      startValue = yearValue($start);
      endValue = yearValue($end);
      if (endValue > maxYear) {
        endValue = maxYear;
      } else if (endValue < startValue) {
        endValue = startValue;
      }
      $end.val(endValue);
      return updateSlider();
    };
    yearIndex = function(year) {
      var index;
      year = parseInt(year, 10);
      index = years.indexOf(year);
      if (index === -1) {
        addYear(year);
        index = years.indexOf(year);
      }
      return index;
    };
    sortNumber = function(a, b) {
      return a - b;
    };
    addYear = function(year) {
      years.push(parseInt(year, 10));
      years.sort(sortNumber);
      return $slider.slider("option", "max", years.length - 1);
    };
    updateSlider = function() {
      var endValue, startValue;
      updateURL();
      startValue = yearValue($start);
      endValue = yearValue($end);
      $slider.slider("values", 0, yearIndex(startValue));
      $slider.slider("values", 1, yearIndex(endValue));
      return window.changeTooltipsHeadeValues($slider, startValue, endValue);
    };
    addEventHandlers = function() {
      var $inputs;
      $inputs = $start.add($end);
      $inputs.attr('onblur', '').attr('onkeyup', '');
      $inputs.attr('pattern', '[0-9]*');
      $inputs.keypress(restrictKeyPress);
      $inputs.keyup(restrictKeyUp);
      $inputs.keyup(showLink);
      $inputs.change(updateURL);
      $start.blur(updateStart);
      $end.blur(updateEnd);
      $start.keypress(submitStart);
      $end.keypress(submitEnd);
      return $slider.on("slidestop", updateSlider);
    };
    ready = function() {
      removePreviousDates();
      hideLink();
      return addEventHandlers();
    };
    return $(document).ready(ready);
  }
});
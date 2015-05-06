///BASED ON:
//https://developers.google.com/api-client-library/javascript/samples/samples#LoadinganAPIandMakingaRequest
//http://googleappsdeveloper.blogspot.com/2011/12/using-new-js-library-to-unlock-power-of.html

//Generate a client ID for web applications from the Google Developers Console APIs & Auth credentials screen
var clientId = '237495923048-bf3abp8rcbe15jv9ckm47qgufha21pe2.apps.googleusercontent.com';
//And/or generate an API key from the same screen 
//REPLACE THIS WITH YOUR OWN API KEY!!!!!!!!!!!!!!!!
var apiKey = 'AIzaSyDrBDCOPsThG584nEbvAeUk-wqkZWQ1Xok';

var scopes = 'https://www.googleapis.com/auth/calendar.readonly';
//Calendar id from Calendar settings screen (Calendar Address)
//REPLACE THIS WITH YOUR OWN CALENDAR!
var calId = 'jsrlibrary@gmail.com';
  
function handleClientLoad() {
  gapi.client.setApiKey(apiKey);
  makeApiCall(); //Go directly to loading the calendar. REMOVE THIS LINE if you need to do OAUTH (see below)
  //If you're using a public calendar and a valid API key, I don't *think* you have to do the whole OAUTH thing
  //If full OAUTH needed make sure you place:
  //  <a href='#' id='authorize-button' onclick='handleAuthClick();'>Login</a>
  //somewhere in the HTML to allow authorization request on click if necessary
  //Uncomment the following line (and make sure you use a valid clientId) if you do, or if you want to do more than read a public calendar:
  //window.setTimeout(checkAuth,1);
}

function checkAuth() {
  gapi.auth.authorize({client_id: clientId, scope: scopes, immediate: true}, handleAuthResult);
}

function handleAuthResult(authResult) {
  var authorizeButton = document.getElementById('authorize-button');
  if (authResult && !authResult.error) {
	console.log('authorized');
    authorizeButton.style.visibility = 'hidden';
    makeApiCall();
  } else {
	console.log('not authorized');
    authorizeButton.style.visibility = '';
    authorizeButton.onclick = handleAuthClick;
   }
}

function handleAuthClick(event) {
  gapi.auth.authorize({client_id: clientId, scope: scopes, immediate: false}, handleAuthResult);
  return false;
}

function makeApiCall() {
  gapi.client.load('calendar', 'v3', function() {
	//Timestamp for minimum start time expected in a format like: '2011-08-30T13:22:53.108Z'
	var today = new Date();
	var minimumStartTime = (today.getFullYear()).toString() + '-' + padNumber((today.getMonth() + 1)).toString() + '-' + padNumber((today.getDate())).toString() + 'T00:00:00.001Z';
	
	//Assemble the request as needed, make sure to update 'fields' parameter(s) if you need more information about the event (if you want the calendar description, or the item/event description, url, etc.)
    var request = gapi.client.calendar.events.list({
	  'calendarId':calId,
	  'maxResults':'1',
	  'orderBy':'startTime',
	  'timeMin':minimumStartTime,
	  'singleEvents':true,
	  'fields':'items(start,summary),summary'
	});
	
	request.execute(function(resp) {
	  var eventDiv = document.getElementById('events');
	  
	  //passing 'div' instead of 'ul' to createElement so 1) I don't have to override bullet points and excessive margins from default css, and since it's only 1 item it doesn't really need a list
	  var ul = document.createElement('div');
	  
	  //Set "title" div text to title of calendar and remove "loading..." text
      document.getElementById('calendarTitle').innerHTML = 
        "Today's Hours: ";
				
	  //Remove "loading" spinner
      if (eventDiv.childNodes.length > 0) {
        eventDiv.removeChild(eventDiv.childNodes[0]);
      }
	  
      for (var i = 0; i < resp.items.length; i++) {
	   //passing 'div' instead of 'li' to createElement so 1) I don't have to override bullet points and excessive margins from default css, and since it's only 1 item it doesn't really need a list
        var li = document.createElement('div');
        li.appendChild(document.createTextNode(resp.items[i].summary));
		//resp.items[i].start.date //to get the date for the calendar event, but do I/how do I want to display it?
        ul.appendChild(li);
      }
	  eventDiv.appendChild(ul);
	});
  });
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
//-->
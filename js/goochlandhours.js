// JavaScript Document

var Sunday='10AM - 11:45PM';
var Monday = '7:30AM - 11:45PM';
var Tuesday = 'Goochland: 7:30AM - 11:45PM';

var Wednesday = '7:30AM - 11:45PM';
var Thursday = '7:30AM - 11:45PM';
var Friday = '7:30AM - 10PM';
var Saturday = '9AM - 10PM';
 
 function Hours (n) {
   this.length = n;
   for (var i =1; i <= n; i++) {
     this[i] = ' '
   }
 }
hours = new Array(7);
hours[0] = Sunday
hours[1] = Monday
hours[2] = Tuesday
hours[3] = Wednesday
hours[4] = Thursday
hours[5] = Friday
hours[6] = Saturday
var currentdate = new Date();
var daynumber = currentdate.getDay();
document.write(hours[daynumber]);



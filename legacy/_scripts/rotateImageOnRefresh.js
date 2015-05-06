<!-- SET THE MAX FEATURE COUNT (Total -1) -->

var maxFeatureNo = 4  <!-- 5 total - 1 = 4 -->

var featureNo
var myFeature = new Array()

<!-- MAKE SURE YOU HAVE ONE FOR EACH FEATURE IMAGE -->

myFeature[0] = '<img src="http://library.Reynolds.edu/images/fpimg/photo2.jpg" width="200" alt="JSR Library" border="0">'

myFeature[1] = '<img src="http://library.Reynolds.edu/images/fpimg/photo3.jpg" width="200" alt="JSR Library" border="0">'

myFeature[2] = '<img src="http://library.Reynolds.edu/images/fpimg/photo4.jpg" width="200" alt="JSR Library" border="0">'

myFeature[3] = '<img src="http://library.Reynolds.edu/images/fpimg/photo5.jpg" width="200" alt="JSR Library" border="0">'

myFeature[4] = '<img src="http://library.Reynolds.edu/images/fpimg/photo6.jpg" width="200" alt="JSR Library" border="0">'



<!-- DONT TOUCH --> featureNo = Math.round(Math.random() * maxFeatureNo) document.write(myFeature[featureNo])

<!-- IF NOTHING DISPLAYS ON THE PAGE THEN SOMETHING IS WRONG -->
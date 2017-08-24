

var photo = document.getElementById("cool-picture").width = "300";

var body_html = document.getElementById("paragraph").style.fontFamily = "Impact,Charcoal,sans-serif";

//var x = document.getElementsByTagName("BODY")[0].style.display = "block";

//document.getElementById("myDIV").style.display = "none";


function addBlueBorder(event) {
	
	event.target.style.border = "15px solid blue";
}

var photoTwo = document.getElementById("cool-picture");
photoTwo.addEventListener("click", addBlueBorder);
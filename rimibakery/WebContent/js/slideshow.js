// var slides= document.querySlectorAll("#slides>img");
// var prev= document.getElementById("prev");
// var prev= document.getElementById("next");

// var current = 0;

// sideshow(current);
// prev.onclick = precSlide;
// next.onclick = nextSlide;

// function sideshow(n){
// 	for(var i=0; i<slides.length; i++){
// 		slides[i].style.display = "none";
// 	}
// 	slides[n].style.display="block";
// } 
// function prevSlide(){
// 	if(current>0)current-=1;
// 	else current = slides.length -1;
// 		sideshow(current);
// }
// function nextSlide(){
// 	if(current<slides.length-1)
// 		current+=1;
// 	else current=0;
// 		sideshow(current);
// }

var slides = document.querySelectorAll("#slides > img");
var prev = document.getElementById("prev");
var next = document.getElementById("next");
var current = 0;

sideshow(current);
prev.onclick = prevSlide;
next.onclick = nextSlide;

function sideshow(n) {
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slides[n].style.display = "block";
}

function prevSlide() {
  if (current > 0) current -= 1;
  else
    current = slides.length - 1;
    sideshow(current);
}

function nextSlide() {
  if (current < slides.length - 1) current += 1;
  else
    current = 0;
    sideshow(current);  
}
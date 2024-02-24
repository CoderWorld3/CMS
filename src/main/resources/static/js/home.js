var quotes = ['Education is the most powerful weapon which you can use to change the world” – Nelson Mandela',
 ' Teachers open the door, but you must enter by yourself” – Chinese Proverb', 'Change is the end result of all true learning. – Leo Buscaglia'];
var quotesValue=['Education is the first step for people to gain the knowledge critical thinking, empowerment and skills they need to make this world a better place.'
,'You can have access to professors from the best universities in the world, but you still need to be willing to do the work, even when it’s hard.',
'Education requires costly resources, like time and money, which are often hard to find.'];
 var counter = 0;
 var counter1=0;
var elem = document.getElementById("changeQuotes");
var elem1=document.getElementById("changeText");
var inst = setInterval(change, 5000);

function change() {
  elem.innerHTML = quotes[counter];
  elem1.innerHTML = quotesValue[counter1];
  counter++;
  counter1++;
  if (counter >= quotes.length || counter1 >= quotesValue.length ) {
    counter = 0;
    counter1=0;
//  clearInterval(inst); // uncomment this if you want to stop refreshing after one cycle
  }
}
setTimeout(()=>{
  document.getElementById("content").style.display = "none";
},5000)

// Courses Icon
var target = document.querySelector(".coursesTitle");
var target1= document.querySelector(".coursehide");
target.addEventListener("mouseover", mOver, false);
target.addEventListener("mouseout", mOut, false);

function mOver() {
   target.setAttribute("style", "opacity: 1;");
   target1.setAttribute("style","display:none;");
}

function mOut() {
   target.setAttribute("style", "opacity: 0;")
   target1.setAttribute("style","display:block;");
}
 function myFunction() {
    alert('Button was clicked!');
     box.setAttribute('value', 'true');
  }
  
  $.get("/getCourseDetails", function(data, status) {
	});
	
	$("#success").click(function () {
  $(".notify").toggleClass("active");
  $("#notifyType").toggleClass("success");
  
  setTimeout(function(){
    $(".notify").removeClass("active");
    $("#notifyType").removeClass("success");
  },2000);
});

$("#failure").click(function () {
  $(".notify").addClass("active");
  $("#notifyType").addClass("failure");
  
  setTimeout(function(){
    $(".notify").removeClass("active");
    $("#notifyType").removeClass("failure");
  },2000);
});
  
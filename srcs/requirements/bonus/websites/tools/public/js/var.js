


let yourChoice = 0;
let  houseChoice = 0;
let score = 0;

const paper = document.getElementById("paper");
const scissors = document.getElementById("scissors");
const rock = document.getElementById("rock");
const screen1 = document.getElementById("big-container")
const screen2 = document.getElementById("combat");
const my_pick = document.getElementById("my-pick");
const result = document.getElementById("result");
const score_number = document.getElementById("score-number");
const play_again = document.getElementById("play-again");
const house_pick = document.getElementById("house-pick");
const rules = document.getElementById("rules");
const rules_page = document.getElementById("rules-page");
const rules_box = document.getElementById("rule-box");
const icon_close = document.getElementById("icon-close");

play_again.addEventListener('click', function(){
	screen1.style.display = "grid";
	screen2.style.display = "none";
});

rules.addEventListener('click', function(){
	rules_box.style.display = "grid";
	rules_page.style.position = "absolute";
	rules_page.style.opacity = "0.5";
});

icon_close.addEventListener('click', function(){
	rules_box.style.display = "none";
	rules_page.style.position = "none";
	rules_page.style.display = "none";
	rules_page.style.opacity = "0";
});




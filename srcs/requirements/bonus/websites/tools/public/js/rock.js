rock.addEventListener('click', function(){
	yourChoice = 2;
	screen1.style.display = "none";
	screen2.style.display = "flex";
	my_pick.innerHTML = "<img id='rock-image' src='images/icon-rock.svg' alt='rock'></img>";
	my_pick.style.border = "25px solid hsl(349, 70%, 56%)";
	houseChoice = Math.floor(Math.random() * 3);
	if (houseChoice == 0)
	{
		result.textContent = "YOU LOSE";
		score -= 1;
		house_pick.innerHTML = "<img id='paper-image' src='images/icon-paper.svg' alt='paper'></img>"
		house_pick.style.border = "25px solid hsl(230, 89%, 65%)";
	}
	else if (houseChoice == 2)
	{
		result.textContent = "DRAW";
		house_pick.innerHTML = "<img id='rock-image' src='images/icon-rock.svg' alt='rock'></img>"
		house_pick.style.border = "25px solid hsl(349, 70%, 56%)";
	}
	else if (houseChoice == 1)
	{
		result.textContent = "YOU WIN";
		score += 1;
		house_pick.innerHTML = "<img id='scissors-image' src='images/icon-scissors.svg' alt='scissors'></img>"
		house_pick.style.border = "25px solid hsl(40, 84%, 53%)";
	}
	score_number.textContent = score;
});
var rows = prompt("How many rows would you like?");
var col = prompt("How many columns would you like?");

var $row = $("<div />", {
	class: 'row'	
});

var $square = $("<div />", {
	class: 'square'
});

$(document).ready(function () {
	for (var i = 0; i < col; i++){
		$row.append($square.clone());
		
	}
	for (var i = 0; i < rows; i++) {
		$("#wrapper").append($row.clone());
		
	}
	
	$("div.square").hover(function() {
		$(this).css("background-color", "#7b44f3")
	})
	
	$("#clear").click(function () {
		$("div.square").css("background-color", "#FFFFFF")
		
	});
	
});
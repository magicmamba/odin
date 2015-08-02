$(document).ready(function () {
	displayGrid(20);

	$('.square').mouseenter(function () {
		$(this).css("background", "white");
	});

	$('.clear').click(function () {
		clear();
	});

	$(".new").click(function () {
		setGrid();
		$(".square").unbind();
		$(".square").mouseenter(function () {
			$(this).css("background", "white");
		});
	});

});


// Accept number of columns  
function setGrid() {
	var col = prompt("Enter number of columns: ");
	displayGrid(col);
	clear();
}

// Create grid
function displayGrid(n) {
	var size = 960;
	var boxSize = ((960 - 4 * n) / n);
	var wrap = $(".wrap").html("");
	for (var j = 0; j < n; j++) {
		for (var i = 0; i < n; i++) {
			wrap.append($("<div></div>").addClass("square").height(boxSize).width(boxSize));
		}
		wrap.append($("<div></div>").css("clear", "both"));
	}
}

// Clear grid
function clear() {
	$(".square").css("background", "#004D40").css('opacity', '1');
}
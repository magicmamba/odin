$(document).ready(function () {
	displayGrid(20);
	$('.square').mouseenter(function () {
		$(this).css("background", "white");
	});

	$('.clear').click(function () {
		clean();
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
	clean();
}

// Create Grid
function displayGrid(n) {
	var size = 1100;
	var boxSize = ((1100 - 4 * n) / n);
	var wrap = $(".wrap").html("");
	for (var j = 0; j < n; j++) {
		for (var i = 0; i < n; i++) {
			wrap.append($("<div></div>").addClass("square").height(boxSize).width(boxSize));
		}
		wrap.append($("<div></div>").css("clear", "both"));
	}
}


function clean() {
	$(".square").css("background", "#004D40").css('opacity', '1');
}
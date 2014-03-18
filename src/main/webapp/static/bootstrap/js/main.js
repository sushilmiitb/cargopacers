// JavaScript Document

var divSelected = null;

  function changeStyle(active,deactive1,deactive2,deactive3) {
	  if (divSelected != null) divSelected.className = '';
			 divSelected = document.getElementById(active);
		 document.getElementById(active).className = 'active';
		document.getElementById(deactive1).className = '';
		document.getElementById(deactive2).className = '';
		document.getElementById(deactive3).className = '';
		 
}

function activeDropdown(active) {
	document.getElementById(active).getElementsByClassName("dropdown-menu")
			.item(0).style.display = "block";
	document.getElementById(active).className = 'active';
}

function closeDropdown(deactive) {
	document.getElementById(deactive).getElementsByClassName("dropdown-menu")
			.item(0).style.display = "none";
	document.getElementById(deactive).className = '';
}

$(window).on("load", function() {
	if (typeof loadSlides == "function" && typeof cargo.slides != "undefined") {
		loadSlides(cargo.slides)
	}
});

function loadSlides(b) {
	var d = new Image();
	var c = $("#foodshot-1");
	var a = 0;
	var e = c.position().left;
	$(d).load(
			function() {
				var f = $('<div class="foodshot" id="foodshot' + slidesLoaded
						+ '"></div>');
				f.css({
					position : "absolute",
					top : a,
					left : e,
					minWidth : "1000px",
					width : "100%",
					opacity : 0,
					backgroundImage : "url(" + this.src + ")"
				});
				f.attr("data-href", b[slidesLoaded].url).attr("data-fs-title",
						b[slidesLoaded].title).attr("data-fs-subtitle",
						b[slidesLoaded].subtitle);
				$("#foodshot" + Number(slidesLoaded - 1)).before(f);
				slidesLoaded += 1;
				if (slidesLoaded < b.length) {
					loadSlides(b)
				}
				if (!controlsLoaded) {
					controlsLoaded = true;
					$(".foodshot-controls").fadeIn(250);
					$("#foodshot-controls-play").hide();
					$("#foodshot-controls-prev").click(
							function(g) {
								g.preventDefault();
								play(currentSlide - 1 >= 0 ? currentSlide - 1
										: slidesLoaded - 1);
								$("#foodshot-controls-play").hide();
								$("#foodshot-controls-pause").show()
							});
					$("#foodshot-controls-next").click(function(g) {
						g.preventDefault();
						play();
						$("#foodshot-controls-play").hide();
						$("#foodshot-controls-pause").show()
					});
					$("#foodshot-controls-pause").click(function(g) {
						g.preventDefault();
						clearInterval(switchInterval);
						$(this).hide();
						$("#foodshot-controls-play").show()
					});
					$("#foodshot-controls-play").click(function(g) {
						g.preventDefault();
						setTimeout(play, 1500);
						$(this).hide();
						$("#foodshot-controls-pause").show()
					});
					$("#foodshot0").animate({
						opacity : 1
					}, function() {
						$("#foodshot-1").css("background-image", "none")
					});
					play()
				}
			}).attr("src", b[slidesLoaded].src)
}
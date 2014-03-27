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

$(window).load(function(){
	$("#slider1").responsiveSlides({
        auto: true,
        pager: false,
        nav: true,
        speed: 500,
        namespace: "callbacks",
        before: function () {
          $('.events').append("<li>before event fired.</li>");
        },
        after: function () {
          $('.events').append("<li>after event fired.</li>");
        }
	}
)});
  
  
$(document).ready(function () {
    $('#datetimepicker1').datetimepicker({
        pickTime: false,
		showToday: true,
		minDate: moment()
    });
});




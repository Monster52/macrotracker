// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap
//= require moment 
//= require fullcalendar
//= require Chart.bundle
//= require chartkick
//= require rails-ujs
//= require turbolinks
//= require_tree .


var get_dates = document.getElementsByClassName("fc-day");
var dates = [];
var highlight_date = "";

$.ajax({
    type:"GET",
    url:"/trackers/highlight",
    dataType:"json",
    data:"{}",
    success:function(result){
        console.log(result);
        highlight_date = result[0].met_date.slice(0,10)


				for(x=0;x<get_dates.length;x++){
						if (get_dates[x].dataset.date == highlight_date) {
							get_dates[x].style.background = "green";

						}
				    dates.push(get_dates[x].dataset.date)
				}


    }
})
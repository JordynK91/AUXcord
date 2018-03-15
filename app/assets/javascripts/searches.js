$(document).on('turbolinks:load', function(){
    var dateField = document.getElementById('date');
    var dt = new Date();
    var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
    var startDateTime = dt.getFullYear().toString() + "-" + (dt.getMonth() + 1).toString() + "-" + dt.getDate().toString() + "T00:00:00Z";
    dateField.value= startDateTime;
});
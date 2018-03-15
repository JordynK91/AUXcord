// startDateTime=2018-03-15T00:00:00
 $(document).ready(function() {
    var dateField = document.getElementById('date');
    var dt = new Date();
    var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
    var startDateTime = dt.getFullYear().toString() + "-" + (dt.getMonth() + 1).toString() + "-" + dt.getDate().toString() + "T00:00:00Z";
    dateField.value= startDateTime;
    console.log(startDateTime);
    console.log("this is the dateField", dateField);
    console.log(time, dt.getFullYear().toString());
});
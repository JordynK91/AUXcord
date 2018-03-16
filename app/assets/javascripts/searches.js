$(document).on('turbolinks:load', function(){
    var dateField = document.getElementById('date');
    var dt = new Date();
    var month = preZero(dt.getMonth() + 1);
    var day = preZero(dt.getDate());
    
    var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
    var startDateTime = dt.getFullYear().toString() + "-" + month + "-" + day + "T00:00:00Z";
    dateField.value= startDateTime;


    function preZero(num){
        result = num.toString();
        if(result.length < 2){
            return "0" + result;
        }
        else{
            return result;
        }
    }
});

//2020-08-01T14:00:00Z
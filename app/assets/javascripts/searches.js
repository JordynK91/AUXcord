$(document).on('turbolinks:load', function(){
    getLocation();
    var dateField = document.getElementById('date');
    var stateSelect = document.querySelector(".stateSelect");
    var searchField = document.getElementById('keyword').focus();
    var changeLocation = document.querySelector(".changeLocation");
    var locationField = document.getElementById('latlon');
    var dt = new Date();
    var month = preZero(dt.getMonth() + 1);
    var day = preZero(dt.getDate());
    var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
    var startDateTime = dt.getFullYear().toString() + "-" + month + "-" + day + "T00:00:00Z";
    dateField.value= startDateTime;
    stateSelect.style.display = "none";

    changeLocation.addEventListener("click", hideStuff);

    function hideStuff(){
        locationField.value = "";
        stateSelect.style.display = "block";
        changeLocation.style.display = "none";
    }

//Prepends a zero if the month/day is single digit.
    function preZero(num){
        result = num.toString();
        if(result.length < 2){
            return "0" + result;
        }
        else{
            return result;
        }
    }

    function getLocation() {
        if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(setPosition,handleError);
        } 
        console.log("getLocation ran");
    }
    function setPosition(position) {
        curLocation = position.coords.latitude + "," + position.coords.longitude;
        console.log("setPosition ran")
        locationField.value = position.coords.latitude + "," + position.coords.longitude;
    }
    function handleError(error) {
        switch(error.code) {
            case error.PERMISSION_DENIED:
            console.log(error.message);
            stateSelect.style.display = "block";
                break;
            case error.POSITION_UNAVAILABLE:
            console.log(error.message);
            stateSelect.style.display = "block";   
                break;
            case error.TIMEOUT:
            console.log(error.message);
            stateSelect.style.display = "block";    
                break;
            case error.UNKNOWN_ERROR:
            console.log(error.message);
            stateSelect.style.display = "block";    
                break;
        }
    }
    
    //latlong=39.9525839,-75.1652215
    
   
});


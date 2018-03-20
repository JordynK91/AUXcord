$(document).on('turbolinks:load', function(){
    var dateSelect = document.querySelector(".dateSelect");
    var pickDates = document.querySelector(".pickDates");
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
    dateSelect.style.display = "none";

    pickDates.addEventListener("click", showDates);
    function showDates(){
        dateSelect.style.display = "block";
        pickDates.style.display = "none";
    }
    //shows states when user selects "change location"
    changeLocation.addEventListener("click", showStates);
    function showStates(){
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

    if(sessionStorage.loc == undefined || sessionStorage.loc == ""){
        getLocation();
    }
    else{
        locationField.value = sessionStorage.loc;
    }

    function getLocation() {
        if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(setPosition,handleError);
        } 
        console.log("getLocation ran");
    }
    function setPosition(position) {
        curLocation = position.coords.latitude + "," + position.coords.longitude;
        sessionStorage.setItem('loc', position.coords.latitude + "," + position.coords.longitude );
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
    
   
});


$(document).ready(function() {
     $("#error-container").addClass('hidden');
     $("#data-container").addClass('hidden');
     $("#btn-weather").click(function(e) {
          e.preventDefault();
          var zip = $("#zipInput").val();
          if (isNaN(zip))
                showErrorZip();
          else
              getWeatherInfo(zip);
     });
});

function getWeatherInfo(zip) {
     $.getJSON("./weather/get/" + zip, function(data) {
          if (data.operationStatus == "success") {
               showData(data.responseData);
          } else {
               showError(data.responseData);
          }
     });
}


function showData(responseData) {
     $("#zipInput").val("");
     $("#error-container").addClass('hidden');
     $("#data-container").removeClass('hidden');
     $("#zipCode").html(responseData.zip);
     $("#city").html(responseData.city);
     $("#country").html(responseData.country);
     $("#temperature-body").html(responseData.temperature + " &deg;C");
     $("#percipitation-body").html(responseData.pressure);
     $("#humidity-body").html(responseData.humidity + "  %");
     $("#windSpeed-body").html(responseData.windSpeed + " km/h");
}


function showError(responseData) {
     $("#zipInput").val("");
     $("#data-container").addClass('hidden');
     $("#error-container").removeClass('hidden');
     $("#error-message").html(responseData);
}
function showErrorZip() {
      $("#zipInput").val("");
     $("#data-container").addClass('hidden');
     $("#error-container").removeClass('hidden');
     $("#error-message").html("Please enter a valid zip value");
}
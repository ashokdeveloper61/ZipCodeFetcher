<!DOCTYPE html>
<html>
     <head>

          <meta charset="utf-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">

          <title>Weather Report</title>
          <!-- jQuery library -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- bootstrap library -->
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <script src="js/weather.js"></script>
     </head>
     <body>

          <div class="container-fluid">
               <div class="row">
                    <div class="col-md-4">
                         <h3>Enter zip code to get weather information.</h3>
                         <label for="zipInput"> zip code </label>
                         <div class="input-group">
                              <input type="text" class="form-control" id="zipInput" />
                              <span class="input-group-btn" style="width:0;">
                                   <button id="btn-weather" type="button" class="btn btn-primary" >GO!</button>
                              </span>
                         </div>
                    </div>
                    <div id="error-container" class="col-md-8">
                         <div class="alert alert-dismissable alert-danger"
                         contenteditable="true">
                         <h4>Alert!</h4>
                         <span id="error-message"></span>                   
               </div>
          </div>

          <div id="data-container" class="col-md-8 hidden">
               <h3>Weather Info for given zip: <span id="zipCode"></span></h3>
               <h4 >City: <span id="city">City</span></h4>
               <h4>Country: <span id="country">Country></span></h4>
               <br />

               <div class="row">
                    <div class="col-md-3">
                         <div class="panel panel-default">
                              <div class="panel-heading" style="color: #fff;background-color: #337ab7; border-color: #2e6da4;">
                                   <h3 class="panel-title">Temperature</h3>
                              </div>
                              <div id="temperature-body" class="panel-body">Panel content
                              </div>
                         </div>
                    </div>
                    <div class="col-md-3">
                         <div class="panel panel-default">
                              <div class="panel-heading" style="color: #fff;background-color: #337ab7; border-color: #2e6da4;">
                                   <h3 class="panel-title">Pressure</h3>
                              </div>
                              <div id="percipitation-body" class="panel-body">Panel
                                   content</div>
                         </div>
                    </div>
                    <div class="col-md-3">
                         <div class="panel panel-default">
                              <div class="panel-heading" style="color: #fff;background-color: #337ab7; border-color: #2e6da4;">
                                   <h3 class="panel-title">Humidity</h3>
                              </div>
                              <div id="humidity-body" class="panel-body">Panel content</div>
                         </div>
                    </div>
                    <div class="col-md-3">
                         <div class="panel panel-default">
                              <div class="panel-heading" style="color: #fff;background-color: #337ab7; border-color: #2e6da4;">
                                   <h3 class="panel-title">Wind Speed</h3>
                              </div>
                              <div id="windSpeed-body" class="panel-body">Panel content</div>
                         </div>
                    </div>
               </div>
          </div>
     </div>
</div>


</body>
</html>

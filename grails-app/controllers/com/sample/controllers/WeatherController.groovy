package com.sample.controllers

import grails.converters.JSON

class WeatherController {

     // inject weather service 
     def weatherService 
	
     def index() { }	
	
     def get(String zip){
          log.info "Request received for weather of zip : "+ zip
		
          def result = [operationStatus : "fail", responseData: null]
		
          try{
               def responseData = weatherService.getWeatherInfo(zip)
			
               if(responseData != null){
                    result.operationStatus = "success"
                    def weatherData= [
                         temperature: responseData.main.temp,
                         pressure: responseData.main.pressure,
                         humidity: responseData.main.humidity,
                         windSpeed: responseData.wind.speed,
                         zip:zip,
                         city: responseData.name,
                         country: responseData.sys.country
                    ]
                    result.responseData = weatherData
               }else{
                    log.error "Failed to get Weather Info for zip: ${zip}, try after some time"
                    result.responseData = "Failed to get Weather Info for zip: ${zip}, try after some time"
               }
			
          }catch(Exception e){           
               log.error "Failed to get Weather Info for zip: ${zip}, try after some time"
               result.responseData = "Failed to get Weather Info for zip: ${zip}, try after some time"
          }
		
          render result as JSON
     }	
}

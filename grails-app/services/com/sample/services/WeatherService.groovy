package com.sample.services

import grails.transaction.Transactional

@Transactional
class WeatherService {

     def weatherRestClient
	
     def getWeatherInfo(def zip) {
		
          try{
               def serviceResponse = weatherRestClient.get(
                    query: [q: zip+",us"]
               )

               if( serviceResponse == null ){
                    log.fatal("Failed to get data from API, status code: "+serviceResponse.statusCode)
                    throw new Exception("Failed to get data from API, status code: "+serviceResponse.statusCode);
               }
               if( serviceResponse.error != null){
                    log.fatal("Failed to get data from API, status code: "+serviceResponse.statusCode)
                    throw new Exception("Failed to get data from API, status code: "+serviceResponse.statusCode);
               }
				
			
               serviceResponse ?.json
			
          }catch (Exception e) {
               log.fatal("Failed to get data from API, error:"+e.getMessage())
               throw e
          }
     }
}

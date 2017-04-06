import grails.util.Holders

beans = {
	
	genericHttpClient(wslite.http.HTTPClient) {
		connectTimeout = 30000
		readTimeout = 30000
		useCaches = false
		followRedirects = true
		sslTrustAllCerts = true
	}
	
	weatherRestClient(wslite.rest.RESTClient) {
		url =  "http://api.openweathermap.org/data/2.5/weather?appid=2efdd7efe5ef15ae11e96aeb67c77b92&" //zip=411021,us
		httpClient = ref('genericHttpClient')
	}
}

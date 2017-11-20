class InicioController < BaseController
	
	def casa	
	 
	 render layout: "application"
	 #redirect_to "http://elheraldo.co"	
	 #render html: "<h1>Hola mundo cruel</h1>".html_safe
	 #render file: "public/404.html"
	 
	end
	
	def noacceso	  
     
	end
end

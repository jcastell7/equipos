class SeguridadController < ApplicationController
    skip_before_action:verify_authenticity_token #desactiva el control de autencicidad del la solicitud
 require "pp"
 require 'securerandom'
 include Servicios 
 def login 
 	render  layout: 'application1'
 end
   
 def autenticar
 	xpass=Encriptar(params[:password])
    xusuario=Usuario.where(usuario:params[:usuario],password:xpass)
    
    if xusuario != []
    	session[:id] = SecureRandom.hex  
	    session[:usuario]=xusuario.map(&:usuario)[0]	    
	    session[:idusuario]=xusuario.map(&:id)[0]
	    session[:idrol]=xusuario.map(&:idrol)[0]	   
	    redirect_to "/inicio"
	else 
		flash.alert="Usuario y/o password incorrecto. Verifique"
	    redirect_to "/login"  
    end
 end

 def logout
 	    reset_session
 	    session[:id] =""
        session[:usuario]=""
	    session[:idusuario]=""
	    session[:idrol]=""	  
        redirect_to "/login"
 end

end

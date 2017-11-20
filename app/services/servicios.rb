module Servicios
   require 'digest/md5'
   
   def TraerValorParametro(params)	    
	      unless params.nil?
	        ValorParametro.find(params).valor
	      end  
	    
   end 

   def TraerParametros(params)
	   	unless params.nil?
		     ValorParametro.where(["parametro_id ='#{params}'"]).select(:valor,:id) 
		end 
   end   

   def Encriptar(params)
       unless params.nil?       
          res = Digest::MD5.hexdigest(params)
          return res  
       end 
    end
    
    def TraerOpcion(params)
        unless params.nil?
          Opcione.find(params).opcion
        end 
    end

    def validarAccesoOpcion(idrol,controlador)     
       puts "controlador en validar=#{controlador}"
      excepciones = ['noacceso','inicio','login','logout','valp']
    
      if excepciones.include?(controlador)
         puts  "Entre a las excepciones"
          return true

      else    
         puts "nojoda ..........." 
       res=RolOpcionOperacione.select('op.controller')
               .joins('INNER JOIN opciones as op ON rol_opcion_operaciones.opcione_id = op.id')
               .where("rol_opcion_operaciones.idrol=#{idrol} 
                      and op.controller ='#{controlador}'
                      and rol_opcion_operaciones.estadorolop='A' 
                      and op.estadoopcion='A'
                      and rol_opcion_operaciones.idoperacion=7
                      and op.eshoja=?",true)                              
          
          resul=res.map(&:controller)
          if resul.empty?
            return false 
          else
            return true
         end
     end
  end
   

  def getOperaciones(idRol,controlador)
     
        resul=RolOpcionOperacione.select("distinct idoperacion")
            .joins("INNER JOIN opciones as op ON rol_opcion_operaciones.opcione_id = op.id")
            .where("rol_opcion_operaciones.idrol = #{idRol} and
        rol_opcion_operaciones.estadorolop = 'A' and op.estadoopcion = 'A' and op.eshoja =?  and
        op.controller = '#{controlador}'",true)
        
        operaciones_id=resul.map(&:idoperacion)
        operaciones= operaciones_id.map{|op| TraerValorParametro(op)}
        return operaciones
   
  end

   

end
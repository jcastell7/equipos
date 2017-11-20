# == Schema Information
#
# Table name: usuarios
#
#  id              :integer          not null, primary key
#  usuario         :string
#  idrol           :integer
#  idestadousuario :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  eliminado       :integer          default(0)
#  password        :string
#

include Servicios
class Usuario < ApplicationRecord  
	 before_save :encriptarPass
	
   has_many :rol_opcion_operacione
      
  validates :usuario, presence: true, length: { minimum: 4 },
    uniqueness: { case_sensitive: false,message: "Usuario existe. Verifique" }
  validates :password, presence: {message: "Debe agregar un password valido." }

  scope :sin_eliminados, -> { where(eliminado: 0)   }

  private 
  def encriptarPass 
    if self.password !=nil           	
    	self.password = Encriptar(self.password)
    end    
 end

end

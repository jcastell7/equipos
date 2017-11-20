# == Schema Information
#
# Table name: parametros
#
#  id              :integer          not null, primary key
#  atributo        :string
#  descripcion     :string
#  estadoParametro :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Parametro < ApplicationRecord
	has_many :valor_parametro
	
end

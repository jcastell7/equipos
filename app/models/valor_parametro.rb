# == Schema Information
#
# Table name: valor_parametros
#
#  id                   :integer          not null, primary key
#  parametroId          :integer
#  valor                :string
#  orden                :string(3)
#  estadoValorParametro :string(1)
#  eliminado            :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  parametro_id         :integer
#

class ValorParametro < ApplicationRecord
	 belongs_to :parametro
end

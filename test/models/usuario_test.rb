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

require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

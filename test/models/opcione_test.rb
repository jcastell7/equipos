# == Schema Information
#
# Table name: opciones
#
#  id           :integer          not null, primary key
#  idpadre      :integer
#  opcion       :string
#  url          :string
#  estadoopcion :string
#  orden        :string
#  eshoja       :boolean
#  controller   :string
#  eliminado    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class OpcioneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

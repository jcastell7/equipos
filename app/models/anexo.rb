class Anexo < ApplicationRecord
  mount_uploader :archivo, ArchivoUploader

  def self.opciones
    @op = {
    :opcione => {
      :id => 1,
      :opcion => "Factura",
    },
    :opcione => {
      :id => 1,
      :opcion => "Equipo",
    }
  }
  end
end

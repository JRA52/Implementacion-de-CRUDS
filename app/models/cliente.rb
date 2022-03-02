class Cliente < ApplicationRecord
  belongs_to :empresa
  has_many :proyectos

  def self.cliente_name(empresa_name)
    cliente = Empresa.find_by_name(empresa_name)
   if !cliente.nil?
     Cliente.where(empresa_id: cliente.id)
    end
  end
end
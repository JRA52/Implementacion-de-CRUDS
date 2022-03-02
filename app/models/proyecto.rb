class Proyecto < ApplicationRecord
  belongs_to :cliente
  belongs_to :estatus

  def self.cliente_name(codigo)
    Proyecto.where('proyectos.codigo =?', codigo).select(:name)
  end
end

=begin
  def self.cliente_name(codigo)
   project = Proyecto.where('proyectos.codigo = ?', codigo).select(:name)
    if !project.nil?
      Proyecto.where(proyecto_id: project.id)
     end
  end
end
=end
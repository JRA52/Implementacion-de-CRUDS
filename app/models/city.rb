class City < ApplicationRecord
  belongs_to :state
  has_many :empresas

  def self.state_id(state_id)
    City.where('state_id = ?', state_id)
  end
  
  def self.state_name(state_name)
    estado = State.find_by_name(state_name)
    if !estado.nil?
      City.where(state_id: estado.id)
    end
  end
end

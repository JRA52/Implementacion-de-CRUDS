class Empresa < ApplicationRecord
  belongs_to :city
  has_many :clientes

  def self.city_name(city_name)
    ciudad = City.find_by_name(city_name)
    if !ciudad.nil?
      Empresa.where(city_id: ciudad.id)
    end
  end
end
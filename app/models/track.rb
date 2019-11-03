class Track < ApplicationRecord
  belongs_to :album
  belongs_to :genre
  belongs_to :media_type
  scope :filtrar, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
  validates_presence_of :name, :album, :media_type, :genre,
                        :milliseconds, :bytes

  validates_inclusion_of :unit_price, :in => 0.1..Float::INFINITY, :message => "Tem que ser maior que 0"
                        
                      
end

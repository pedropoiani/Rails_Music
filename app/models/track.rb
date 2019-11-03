class Track < ApplicationRecord
  belongs_to :album
  belongs_to :genre
  belongs_to :media_type
  scope :filtrar, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
  validates_presence_of :name, :album, :media_type, :genre,
                        :milliseconds, :bytes

  validates :unit_price, numericality: { greater_than: 0 }, :message => "O Valor do Preço não pode ser negativo"
                        
                      
end

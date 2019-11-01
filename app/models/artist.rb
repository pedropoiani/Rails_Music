class Artist < ApplicationRecord
  has_many :albums
  scope :filtrar, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
  validates_presence_of :name
end

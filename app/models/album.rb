class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks
  scope :filtrar, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
  validates_presence_of :title, :artist
end

class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks
  scope :name_album, ->(title) { where("title LIKE ?", "%#{title}%") if title.present? }
  scope :name_artist, ->(id) { where(artist_id: id) if id.present? }
  validates_presence_of :title, :artist
end

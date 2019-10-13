class Track < ApplicationRecord
  belongs_to :album
  belongs_to :genre
  belongs_to :media_type

  validates_presence_of :name, :album, :media_type, :genre,
                        :milliseconds, :bytes, :unit_price
end

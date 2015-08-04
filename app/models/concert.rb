class Concert < ActiveRecord::Base
  belongs_to :place
  belongs_to :conductor
  belongs_to :orchestra
  has_many :concerts_song
  has_many :songs, through: :concerts_song
end

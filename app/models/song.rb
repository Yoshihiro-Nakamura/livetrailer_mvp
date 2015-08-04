class Song < ActiveRecord::Base
  belongs_to :composer
  has_many :concerts_song
  has_many :concerts, through: :concerts_song

  scope :arr_youtube_id, -> {where('youtube_id is not null').pluck(:youtube_id)}
end

class TopsController < ApplicationController
  def index
    @concerts = Concert.all
    @youtube_ids = Song.arr_youtube_id
  end
end

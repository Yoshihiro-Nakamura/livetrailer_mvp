class SongsController < ApplicationController

  def search
    @song = Song.find_by(youtube_id: params[:videoId])
  end
end

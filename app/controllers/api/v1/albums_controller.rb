module Api::V1
  class AlbumsController < ApplicationController
    def show
      @album = Album.find(params[:id])
    end
  end
end

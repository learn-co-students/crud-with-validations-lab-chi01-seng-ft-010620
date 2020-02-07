class SongsController < ApplicationController
    def index
    @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(params[])
       if @song.valid?
        @song.save
        redirect_to song_path(@song)
       else
        redirect :new
       end
    end

    def edit
        @song = Song.find(params[:id])
       @yes_or_no = ["true,fasle"]

    end

    def update

    end
end

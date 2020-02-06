require 'pry'

class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        set_song
    end

    def edit
        set_song
    end

    def new
        @song = Song.new
    end
    
    def create
        binding.pry
        if Song.new(song_params).valid?
            @song = Song.create(song_params)
            redirect_to song_path(@song)
        else
            render :new
        end
    end

    def update
        set_song
        @song.assign_attributes(song_params)
        if @song.valid?
            @song.update(song_params)
            redirect_to song_path(@song)
        else
            render :edit
        end
    end

    def destroy
        set_song
        @song.destroy
        redirect_to songs_path
    end

    private

    def set_song
        @song = Song.find_by(id: params[:id])
    end

    def song_params
        params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end
end

class MoviesController < ApplicationController
  def index
    # this array is being replaced with 
    # @movies = ['The Equalizer', 'The Judge', 'The Book Of Life', 'John Wick', 'Gone Girl', 'Dracula Untold', 'Fury', 'Annabelle']
    # which is beign call my the model
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @response = HTTParty.get('http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?limit=16&country=us&apikey=echs8gdkqgzwsksygfbc6vz9')

  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    movie_params = params.require(:movie).
                    permit(:variety, :title, :rating, :total_gross, :released_on, :image_file_name)
    @movie = Movie.new(movie_params)
    if @movie.save
       redirect_to @movie
     else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    movie_params = params.require(:movie).
                    permit(:variety, :title, :rating, :total_gross, :released_on, :image_file_name)
    @movie.update(movie_params)
    redirect_to @movie
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to @movie
end
end

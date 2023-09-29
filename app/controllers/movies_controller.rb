class MoviesController < ApplicationController
  
  def index 
      render({ :template => "/movie_templates/list"})
    end
    
    def show 
      
      x_the_id = params.fetch("the_id")
  
      the_record = Movie.where({ :id => x_the_id})
  
      @the_movie = the_record.at(0)
  
      render({ :template => "/movie_templates/details"})
  
    end 
  end 
  
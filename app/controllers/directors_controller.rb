class DirectorsController < ApplicationController
  
def index 
    render({ :template => "/directors_templates/list"})
  end
  
  def show 
    
    x_the_id = params.fetch("the_id")

    the_record = Director.where({ :id => x_the_id})

    @the_director = the_record.at(0)

    render({ :template => "/directors_templates/details"})

  end 
end 

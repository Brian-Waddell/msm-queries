class ActorsController < ApplicationController

  def index 
  render({:template => "actor_templates/list"})
  end

  def show 

    the_id = params.fetch("the_id")

    matching_profile = Actor.where({:id => the_id})

    @the_actor = matching_profile.at(0)
    
    render({:template => "actor_templates/details"})
  end 
end 

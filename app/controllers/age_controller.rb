class AgeController < ApplicationController

  def index_young

    @the_record = Director.where.not(dob: nil).order({:dob => :desc}).at(0)
    
    render({ :template => "/age_template/youngest_details"})

  end 

  def show_old 

    the_record = Director.where.not(dob: nil).order({:dob => :asc})

    @the_solution = the_record.at(0) 

    render({ :template => "/age_template/oldest_details"})
  end 
end 

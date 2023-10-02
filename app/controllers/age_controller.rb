class AgeController < ApplicationController

  def index_young
    
    render({ :template => "/age_template/youngest_details"})
    

  end 

  def show_old 

    render({ :template => "/age_template/oldest_details"})
  end 
end 

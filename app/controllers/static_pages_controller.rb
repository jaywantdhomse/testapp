class StaticPagesController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
  end
  
  def datasets
    @datasets = Dataset.all
  end
  
  def data_categories
    @datacategories = Datacategory.all
  end
  
  def datatypes
    @datatypes = Datatype.all
  end
  
  def location_categories
    @location_categories = LocationCategory.all
  end
  
  def locations
    @locations = Location.all
  end
  
  def stations
  
  end  
end

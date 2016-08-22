require 'rubygems'
require 'json'
namespace :api do
  task :download_datasets => :environment do
    response = `curl -H "token:EFmQMIdpjUrzstsqAPFZMxpLxUcHwvCY" "http://www.ncdc.noaa.gov/cdo-web/api/v2/datasets?limit=50"`
    if response
      response_obj = JSON.parse(response)
      if response_obj && response_obj["results"]
        puts response_obj["results"]
        response_obj["results"].each do |res|
         dataset = Dataset.new
         dataset.uid = res["uid"]
         dataset.mindate = res["mindate"]
         dataset.maxdate = res["maxdate"]
         dataset.name = res["name"]
         dataset.data_coverage = res["datacoverage"]
         dataset.d_id = res["id"]
         dataset.save
        end
      end
    end
  end
  
  task :download_datacategories => :environment do
    response = `curl -H "token:EFmQMIdpjUrzstsqAPFZMxpLxUcHwvCY" "http://www.ncdc.noaa.gov/cdo-web/api/v2/datacategories?limit=50"`
    if response
      response_obj = JSON.parse(response)
      if response_obj && response_obj["results"]
        puts response_obj["results"]
        response_obj["results"].each do |res|
          datacategory = Datacategory.new
          datacategory.d_id = res["id"]
          datacategory.name = res["name"]
          datacategory.save
        end
      end
    end
  end

  task :download_datatypes => :environment do
    response = `curl -H "token:EFmQMIdpjUrzstsqAPFZMxpLxUcHwvCY" "http://www.ncdc.noaa.gov/cdo-web/api/v2/datatypes?limit=50"`
    if response
      response_obj = JSON.parse(response)
      if response_obj && response_obj["results"]
        puts response_obj["results"]
        response_obj["results"].each do |res|
         datatype = Datatype.new
         datatype.mindate = res["mindate"]
         datatype.maxdate = res["maxdate"]
         datatype.name = res["name"]
         datatype.data_coverage = res["datacoverage"]
         datatype.d_id = res["id"]
         datatype.save
        end
      end
    end
  end  
  
  task :download_location_categories => :environment do
    response = `curl -H "token:EFmQMIdpjUrzstsqAPFZMxpLxUcHwvCY" "http://www.ncdc.noaa.gov/cdo-web/api/v2/locationcategories"`
    if response
      response_obj = JSON.parse(response)
      if response_obj && response_obj["results"]
        puts response_obj["results"]
        response_obj["results"].each do |res|
          l_category = LocationCategory.new
          l_category.d_id = res["id"]
          l_category.name = res["name"]
          l_category.save
        end
      end
    end
  end

  task :download_locations => :environment do
    response = `curl -H "token:EFmQMIdpjUrzstsqAPFZMxpLxUcHwvCY" "http://www.ncdc.noaa.gov/cdo-web/api/v2/locations?limit=50"`
    if response
      response_obj = JSON.parse(response)
      if response_obj && response_obj["results"]
        puts response_obj["results"]
        response_obj["results"].each do |res|
         location = Location.new
         location.mindate = res["mindate"]
         location.maxdate = res["maxdate"]
         location.name = res["name"]
         location.data_coverage = res["datacoverage"]
         location.d_id = res["id"]
         location.save
        end
      end
    end
  end    
end

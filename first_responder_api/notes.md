Project Backend Associations

First Responder App - Ben Harter-Murphy 6/25/11


class Hospital < ActiveRecord::Base
  has_many :patients	
  has_many :emts , :through => :patients	
end
 
 
class EMT < ActiveRecord::Base
  has_many :hospitals
  has_many :paitents, :through => :hospitals
end
 
 
class Patient	
  belongs_to :hospital, optional: true 
  belongs_to :emt
end

Hypothetically, and EMS worker would be iterating this information to a third party who is filling out a form, then when then the form gets sent it is sent to the hospital that they are going too. 

The Third party fills out the Patient form with Vitals -> Chooses Hospital to send it to => then instantiates an object under that hospital page that shows patient name and options for that patient. Each Hospital Can have many patients

ASSOCIATIONS 

-Find out what is going on with the gem versions

-after you can run rails s / make repo for here and front end DO NOT ```git init``` rails/react makes its own repo just ```git add . ``` and tell them where to go

-Make sure the folder the api and react app are the repos not the apps them self 
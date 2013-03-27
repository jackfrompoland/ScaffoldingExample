class Micropost < ActiveRecord::Base
  # zapis 'ActiveRecord::Base' oznacza, ze klasa 'Micropost' dziedziczy z 'ActiveRecord::Base' a wiec 
  # our model objects gain the ability to communicate with the database, treat the database columns as Ruby attributes, and so on.  
  
  attr_accessible :content, :user_id
  validates :content, :length => { :maximum => 140 } #walidacja dlugosci
  
  belongs_to :user #micropost nalezy do user'a'
  
  
end

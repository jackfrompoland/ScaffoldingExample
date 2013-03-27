class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts #jeden user moze miec wiele micropostow
end

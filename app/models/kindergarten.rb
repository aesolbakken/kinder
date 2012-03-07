class Kindergarten < ActiveRecord::Base
  attr_accessible :email, :name, :phone

  validates_presence_of :name, :phone
end

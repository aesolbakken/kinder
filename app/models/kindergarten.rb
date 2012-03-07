class Kindergarten < ActiveRecord::Base
  attr_accessible :email, :name, :phone
  validates_presence_of :name, :phone

  has_many :departments, :dependent => :destroy
end

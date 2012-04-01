class Child < ActiveRecord::Base
  belongs_to :department
  attr_accessible :name, :birthday
  validates_presence_of :name
end

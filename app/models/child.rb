class Child < ActiveRecord::Base
  belongs_to :department
  attr_accessible :name, :birthday
end

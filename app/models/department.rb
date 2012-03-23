class Department < ActiveRecord::Base
  belongs_to :kindergarten
  validates_presence_of :name
  attr_accessible :name
end

class Department < ActiveRecord::Base
  belongs_to :kindergarten
  attr_accessible :name
  validates_presence_of :name
end

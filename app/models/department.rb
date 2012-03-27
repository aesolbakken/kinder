class Department < ActiveRecord::Base
  belongs_to :kindergarten
  has_many :children, :dependent => :destroy
  validates_presence_of :name
  attr_accessible :name, :children_attributes

  accepts_nested_attributes_for :children, :allow_destroy => true
end

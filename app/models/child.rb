class Child < ActiveRecord::Base
  belongs_to :department
  attr_accessible :name, :birthday, :parents_attributes
  validates_presence_of :name
  has_many :parents, :dependent => :destroy
  accepts_nested_attributes_for :parents, :allow_destroy => true
end

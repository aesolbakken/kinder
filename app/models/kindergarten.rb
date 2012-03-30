class Kindergarten < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :departments_attributes
  validates_presence_of :name, :phone
  has_many :departments, :dependent => :destroy
  accepts_nested_attributes_for :departments, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end

class Kindergarten < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :departments_attributes
  validates_presence_of :name, :phone, :user_id
  has_many :departments, :dependent => :destroy
  accepts_nested_attributes_for :departments, :allow_destroy => true
  belongs_to :user
  validates :email, :allow_blank => true, :uniqueness => {:case_sensitive => false}, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end

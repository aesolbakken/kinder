class Parent < ActiveRecord::Base
  belongs_to :child
  attr_accessible :name, :phone, :email
  validates_presence_of :name, :phone
  validates :email, :allow_blank => true, :uniqueness => {:case_sensitive => false}, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end

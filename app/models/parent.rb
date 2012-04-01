class Parent < ActiveRecord::Base
  belongs_to :child
  attr_accessible :name, :phone, :email
  validates_presence_of :name, :phone
end

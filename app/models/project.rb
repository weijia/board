class Project < ActiveRecord::Base
  attr_accessible :description, :owner_id, :title
  has_many :tickets
end

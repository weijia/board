class Ticket < ActiveRecord::Base
  attr_accessible :content, :creator_id, :description, :owner_id, :project_id, :title
  belongs_to :project
  belongs_to :creator,:class_name => "User", :foreign_key => "creator_id"
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  has_many :comments
end

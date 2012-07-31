class Ticket < ActiveRecord::Base
  attr_accessible :content, :creator_id, :description, :owner_id, :project_id, :title
  belongs_to :project
  has_many :comments
end

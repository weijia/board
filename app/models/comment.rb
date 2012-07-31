class Comment < ActiveRecord::Base
  attr_accessible :content, :creator_id, :ticket_id
  belongs_to :ticket
end

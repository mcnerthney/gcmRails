class Message < ActiveRecord::Base
  belongs_to :phone
  attr_accessible :body
  scope :desc, order("messages.created_at DESC")
end

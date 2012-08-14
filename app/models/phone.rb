class Phone < ActiveRecord::Base
  attr_accessible :deviceid, :gcmid
  has_many :messages, dependent: :destroy
 
end

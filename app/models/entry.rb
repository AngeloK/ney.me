class Entry < ActiveRecord::Base
  include FriendlyId
  
  validates :name, :content, :slug, presence: true

  friendly_id :name, :use => :slugged
end

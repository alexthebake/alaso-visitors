class Visit < ActiveRecord::Base
  belongs_to :visitor
  validates :visitor_id, presence: true
end

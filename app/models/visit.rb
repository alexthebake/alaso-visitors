class Visit < ActiveRecord::Base
  belongs_to :visitor
  validates :visitor_id, presence: true

  def duration
    return if checked_out_at.nil?
    checked_out_at - created_at
  end
end

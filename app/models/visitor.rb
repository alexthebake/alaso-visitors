class Visitor < ActiveRecord::Base
  has_many :visits

  def name
    "#{first_name} #{last_name}"
  end

  class << self
    def find_by_first_and_last_name(fname, lname)
      where(first_name: fname, last_name: lname).first
    end
  end
end

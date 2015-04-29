class Event < ActiveRecord::Base
  validates :title, :start_time, presence: true
  belongs_to :user
  
  before_create :check_dates
  before_update :check_dates
  
  private
  
  def check_dates
    if self.all_day
      self.end_time = self.start_time
    end
    if self.end_time.blank?
      self.all_day = true
      self.end_time = self.start_time
    end
    if self.end_time < self.start_time
      self.end_time = self.start_time
    end
  end
end

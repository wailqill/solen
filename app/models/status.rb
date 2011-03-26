class Status < ActiveRecord::Base
  
  validates :date, :presence => true
  
  def position_string n, default = "Nu"
    time = self.send("position#{n}")
    unless time.blank?
      I18n.l(time, :format => :short_time)
    else
      default
    end
  end
end

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
  
  def birth_string
    unless birth.blank?
      I18n.l(birth, :format => :short_time)
    else
      "Upp"
    end
  end
end

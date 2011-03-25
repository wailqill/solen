class Status < ActiveRecord::Base
  def position_string n, default = "Nu"
    time = self.send("position#{n}")
    unless time.blank?
      I18n.l(time, :format => :short_time)
    else
      default
    end
  end
end

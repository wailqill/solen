class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  def set_current_status
    @status ||= Status.find_by_date(Date.today) || Status.new(:date => Date.today)
  end
end

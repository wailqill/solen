class StatusController < ApplicationController
  before_filter :set_current_status
  
  def disappear
    @status.disappeared_at = Time.now
    @status.save!
    redirect_to root_path, :notice => "Solens bortkomst noterad"
  end
end

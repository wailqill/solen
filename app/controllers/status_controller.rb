class StatusController < ApplicationController
  def disappear
    redirect_to root_path, :notice => "Solens bortkomst noterad"
  end
end

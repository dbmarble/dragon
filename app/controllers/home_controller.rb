class HomeController < ApplicationController
  def about
  end

  def contact
  end

  def index
    @users = User.all
    if user_signed_in?
      @meetings = Meeting.where(:user_id => [current_user.id])
    else
      ""
    end
  end

  def pricing
  end

end


class HomeController < ApplicationController
  def about
  end

  def agenda_templates
    @agenda_email = AgendaEmail.new
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

  def meeting_minutes_templates
    @meeting_minutes_email = MeetingMinutesEmail.new
  end

  def pricing
  end

  def features
  end
end


class MeetingsController < ApplicationController
  before_filter :setup_user




  def index
    @meetings = Meeting.where(:user_id => [current_user.id])
  end


  def show
    @meeting = Meeting.find(params[:id])
  end




  def new
    @meeting = Meeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting }
    end
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end


  def create
    @meeting = @user.meetings.build(params[:meeting])
    if @meeting.save
      redirect_to user_meetings_path, :notice => "Your meeting has been created!"
    else
      render :new
    end
  end

  def update
    @meeting = Meeting.find(params[:id])
    if @meeting.update_attributes(params[:meeting])
      redirect_to user_meetings_path, :notice => "Your Meeting has been updated!"
    else
      render :edit
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    if @meeting.destroy
      redirect_to user_meetings_path, :notice => "Meeting Destroyed"
    else
      render :index
    end
  end


  def setup_user
    @user = User.find(params[:user_id])
  end

end

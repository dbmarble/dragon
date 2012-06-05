class MinutesSamplesController < InheritedResources::Base



  def create
    @minutes_sample = MinutesSample.new(params[:minutes_sample])
    if @minutes_sample.save
      Notifier.minutes_confirmation(@agenda_sample).deliver
      redirect_to root_path, notice: "Please Check you Email for the Meeting Minutes Template."
    else
      render :new
    end
  end


end

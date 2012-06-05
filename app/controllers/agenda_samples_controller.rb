class AgendaSamplesController < InheritedResources::Base



  def create
    @agenda_sample = AgendaSample.new(params[:agenda_sample])
    if @agenda_sample.save
      Notifier.agenda_confirmation(@agenda_sample).deliver
      redirect_to root_path, notice: "Please Check you Email for the Agenda Template."
    else
      render :new
    end
  end


end

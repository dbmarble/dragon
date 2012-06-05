class PrelaunchesController < InheritedResources::Base



  def create
    @prelaunch = Prelaunch.new(params[:prelaunch])
    if @prelaunch.save
      Notifier.prelaunch_confirmation(@prelaunch).deliver
      redirect_to root_path, notice: "Thank you for Signing Up, We'll let you know when we launch'"
    else
      render :new
    end
  end


end

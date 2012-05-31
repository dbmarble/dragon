class PrelaunchEmailsController < InheritedResources::Base


  def create
    @prelaunch_email = PrelaunchEmail.new(params[:prelaunch_email])

    respond_to do |format|
      if @prelaunch_email.save
        ConfirmationMailer.prelaunch_email(@prelaunch_email).deliver
        format.html { redirect_to @prelaunch_email, notice: 'Thank you, have a great day!' }
        format.json { render json: @prelaunch_email, status: :created, location: @prelaunch_email }
      else
        format.html { redirect_to root_path  , notice: 'This Email is Invalid.' }
        format.json { render json: @prelaunch_email.errors, status: :unprocessable_entity }
      end
    end
  end
end

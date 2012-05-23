class AgendaEmailsController < InheritedResources::Base

  def show
    @agenda_email = AgendaEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agenda_email }
    end
  end

  # GET /meeting_minutes_templates/new
  # GET /meeting_minutes_templates/new.json
  def new
    @agenda_email = AgendaEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agenda_email }
    end
  end

  # GET /meeting_minutes_templates/1/edit
  def edit
    @agenda_email = AgendaEmail.find(params[:id])
  end

  # POST /meeting_minutes_templates
  # POST /meeting_minutes_templates.json
  def create
    @agenda_email = AgendaEmail.new(params[:agenda_email])

    respond_to do |format|
      if @agenda_email.save
        Confirmation.agenda_template(@agenda_email).deliver
        format.html { redirect_to @agenda_email, notice: 'Thank you, have a great day!' }
        format.json { render json: @agenda_email, status: :created, location: @agenda_email }

      else
        format.html { redirect_to agenda_templates_path  , notice: 'This Email is Invalid.' }
        format.json { render json: @agenda_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meeting_minutes_templates/1
  # PUT /meeting_minutes_templates/1.json
  def update
    @agenda_email = AgendaEmail.find(params[:id])

    respond_to do |format|
      if @agenda_email.update_attributes(params[:agenda_email])
        format.html { redirect_to @agenda_email, notice: 'Meeting minutes template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agenda_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_minutes_templates/1
  # DELETE /meeting_minutes_templates/1.json
  def destroy
    @agenda_email = AgendaEmail.find(params[:id])
    @agenda_email.destroy

    respond_to do |format|
      format.html { redirect_to agenda_emails_url }
      format.json { head :no_content }
    end
  end
end


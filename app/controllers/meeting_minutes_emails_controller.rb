class MeetingMinutesEmailsController < ApplicationController
    # GET /meeting_minutes_templates
    # GET /meeting_minutes_templates.json
def index
 @meeting_minutes_emails = MeetingMinutesEmail.all

   respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @meeting_minutes_emails }
   end
 end

    # GET /meeting_minutes_templates/1
    # GET /meeting_minutes_templates/1.json
    def show
      @meeting_minutes_email = MeetingMinutesEmail.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @meeting_minutes_email }
      end
    end

    # GET /meeting_minutes_templates/new
    # GET /meeting_minutes_templates/new.json
    def new
      @meeting_minutes_email = MeetingMinutesEmail.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @meeting_minutes_email }
      end
    end

    # GET /meeting_minutes_templates/1/edit
    def edit
      @meeting_minutes_email = MeetingMinutesEmail.find(params[:id])
    end

    # POST /meeting_minutes_templates
    # POST /meeting_minutes_templates.json
    def create
      @meeting_minutes_email = MeetingMinutesEmail.new(params[:meeting_minutes_email])

      respond_to do |format|
        if @meeting_minutes_email.save
          format.html { redirect_to @meeting_minutes_email, notice: 'Thank you, have a great day!' }
          format.json { render json: @meeting_minutes_email, status: :created, location: @meeting_minutes_email }
        else
          format.html { render action: "new" }
          format.json { render json: @meeting_minutes_email.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /meeting_minutes_templates/1
    # PUT /meeting_minutes_templates/1.json
    def update
      @meeting_minutes_email = MeetingMinutesEmail.find(params[:id])

      respond_to do |format|
        if @meeting_minutes_email.update_attributes(params[:meeting_minutes_email])
          format.html { redirect_to @meeting_minutes_email, notice: 'Meeting minutes template was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @meeting_minutes_email.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /meeting_minutes_templates/1
    # DELETE /meeting_minutes_templates/1.json
    def destroy
      @meeting_minutes_email = MeetingMinutesEmail.find(params[:id])
      @meeting_minutes_email.destroy

      respond_to do |format|
        format.html { redirect_to meeting_minutes_emails_url }
        format.json { head :no_content }
      end
    end
  end


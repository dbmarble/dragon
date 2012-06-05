class ConfirmationMailer < ActionMailer::Base
  default from: "contact@meetingfix.com"



  def meeting_minutes_confirmation(meeting_minutes_email)
    @meeting_minutes_email = meeting_minutes_email

    mail to: meeting_minutes_email.address, subject: "Meeting Minutes Templates from Meetingfix.com"
  end


  def agenda_email_confirmation(agenda_email)
    @agenda_email = agenda_email

    mail to: agenda_email.address, subject: "Agenda Templates from Meetingfix.com"
  end
end

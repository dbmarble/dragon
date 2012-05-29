class ConfirmationMailer < ActionMailer::Base
  default from: "contact@meetingfix.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation_mailer.prelaunch_confirmation.subject
  #
  def prelaunch_confirmation(prelaunch_email)
    @prelaunch_email = prelaunch_email


    mail to: prelaunch_email.address, subject: "Sign Up Confirmation"
  end

  def meeting_minutes_confirmation(meeting_minutes_email)
    @meeting_minutes_email = meeting_minutes_email

    mail to: meeting_minutes_email.address, subject: "Meeting Minutes Templates from Meetingfix.com"
  end

  def agenda_email_confirmation(agenda_email)
    @agenda_email = agenda_email

    mail to: agenda_email.address, subject: "Agenda Templates from Meetingfix.com"
  end
end

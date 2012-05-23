class Confirmation < ActionMailer::Base
  default from: "contact@meetingfix.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation.prelaunch.subject
  #
  def prelaunch(prelaunch_email)
    @prelaunch_email = prelaunch_email


    mail to: prelaunch_email.address, subject: 'Your on the short list, Congratulations from Meetingfix.com'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation.agenda_template.subject
  #
  def agenda_template(agenda_email)
    @agenda_email = agenda_email

    mail to: agenda_email.address, subject: 'Your Agenda Templates from Meetingfix are attached.'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation.meeting_minutes_template.subject
  #
  def meeting_minutes_template(meeting_minutes_email)
    @meeting_minutes_email = meeting_minutes_email

    mail to: "to@example.org"
  end
end

class Notifier < ActionMailer::Base
  default from: "contact@meetingfix.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.agenda_confirmation.subject
  #
  def agenda_confirmation(agenda_sample)
    @agenda_sample = agenda_sample

    attachments['agenda_template.pdf'] =  File.read('public/sample/agenda_template.pdf')

    mail to: agenda_sample.email, subject: "Agenda Template"
  end

  def minutes_confirmation(minutes_sample)
    @minutes_sample = minutes_sample

    mail to: minutes_sample.email, subject: "Meeting Minutes Template"
  end

  def prelaunch_confirmation(prelaunch)
    @prelaunch = prelaunch

    mail to: prelaunch.email, subject: "Thank you for signing up!"
  end



end

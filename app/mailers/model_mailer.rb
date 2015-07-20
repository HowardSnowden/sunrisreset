class ModelMailer < ActionMailer::Base
  default from: "postmaster@sunrisereset.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.incoming_messages.subject
  #
  def incoming_messages(record)
    @record = record

    mail to: "sunrisereset@gmail.com", subject: record.subject
  end
end

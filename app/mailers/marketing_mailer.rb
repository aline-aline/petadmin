class MarketingMailer < ApplicationMailer
  def campaign(client, title, body)
    @body = body
    mail to: client.email, subject: title
  end

  def schedule_service(schedule_service)
    @schedule_service = schedule_service
    mail to: schedule_service.client.email, subject: 'Schedule Services'
  end
end
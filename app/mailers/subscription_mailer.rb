class SubscriptionMailer < ApplicationMailer
  def daily_email(subscription)
    @subscription = subscription

    mail(to: @subscription.email, subject: "#{@subscription.artist_name} Just released a new album")
  end
end

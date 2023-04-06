class SendNotificationToSubscribersJob < ApplicationJob
  queue_as :default

  def perform()
    subscribers = Subscription.all
    subscribers.each do |sub_data|
      SubscriptionMailer.daily_email(sub_data).deliver_now
    end
  end
end

class SendNotificationToSubscribersJob < ApplicationJob
  queue_as :default

  def perform()
    subscribers = Subscription.all
    subscribers.each do |sub_data|
      if checkAlbumReleaseDate(sub_data)
        SubscriptionMailer.daily_email(sub_data).deliver_now
      end
    end
  end

  def checkAlbumReleaseDate(subscriber)
    artist = RSpotify::Artist.find(subscriber.artist_id)
    albums = artist.albums

    albums.each do |album|
      return true if album.release_date > subscriber.last_checked
      false
    end

  end
end

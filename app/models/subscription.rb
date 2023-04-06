class Subscription < ApplicationRecord
  validates :artist_name, :email, :artist_id, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

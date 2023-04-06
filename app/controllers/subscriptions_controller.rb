class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      flash[:success] = 'Subscription created!'
    else
      flash[:error] = 'Unable to create subscription.'
    end

    redirect_to root_path
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email, :artist_id, :artist_name)
  end
end

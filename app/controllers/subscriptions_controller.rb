class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  private

  def subscription_params
    params.require(:subscription).permit(:product_title)
  end
end

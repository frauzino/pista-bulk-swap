class PagesController < ApplicationController
  before_action :find_subscriptions, only: %i[home]
  before_action :replace_product, only: %i[home]

  def home
  end

  def find_subscriptions
    @subscriptions = search_product.nil? || search_product == "" ? Subscription.all : Subscription.all.where(product_title: search_product)
    render "pages/home"
  end

  def replace_product
    # raise
    # @new_subscriptions = new_product.nil? || new_product == "" ? Subscription.all : @subscriptions.map { |sub| sub.update({product_title: new_product}) }
    @subscriptions = Subscription.all
    subs_to_change = Subscription.all.where(product_title: old_product)
    if new_product.nil? || new_product == ""
      @subscriptions = Subscription.all
    else
      subs_to_change.each { |sub| sub.update({ product_title: new_product }) }
      @new_subscriptions = Subscription.all.where(product_title: new_product)
    end
    render "pages/home"
  end

  private

  def search_product
    params[:search_product]
  end

  def old_product
    params[:old_product]
  end

  def new_product
    params[:new_product]
  end
end

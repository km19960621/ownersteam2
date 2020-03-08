class OrdersController < ApplicationController
  before_action :login_required, except: [:index]

  def index
    @cards = Card.all
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end
end

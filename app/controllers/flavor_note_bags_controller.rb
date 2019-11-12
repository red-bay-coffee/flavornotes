class FlavorNoteBagsController < ApplicationController
  def show
    @flavor_note_bag = FlavorNoteBag.find_by(access_token: params[:access_token])
    @coffee = @flavor_note_bag.coffee
    @user = @flavor_note_bag.user
  end
end

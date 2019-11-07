# frozen_string_literal: true

class UsersController < ApplicationController
  protect_from_forgery prepend: true
  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    # just update the flavor notes if we already know about this user
    @user = User.find_by_email(user_params[:email]) || User.new(user_params)
    @user.flavor_notes = [FlavorNote.find(params[:flavor_note])]

    respond_to do |format|
      if @user.save
        format.html { redirect_to "/noted/#{@user.access_token}" }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @user = User.find_by(access_token: params[:access_token])
    @coffee = Coffee.find_by_flavor_note(@user.flavor_notes.first)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :birthday)
  end
end

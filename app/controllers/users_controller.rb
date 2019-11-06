# frozen_string_literal: true

class UsersController < ApplicationController
  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.flavor_notes = [FlavorNote.find(params[:flavor_note])]

    respond_to do |format|
      if @user.save
        format.html { render '/users/new' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :birthday)
  end
end

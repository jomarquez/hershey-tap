class UsersController < ApplicationController
  def create
    @user = User.new(twitter_name: params[:twitter_name])

    if @user.save!
      render json: @user
    end
  end

  def update
    @user = User.where(twitter_name: params[:id]).first
    @user.progress += params[:new_taps]

    if @user.save!
      render json: @user
    end
  end

  def url
    @url = User.where(twitter_name: params[:id]).first.url
    render json: @url
  end

  def show
    @user = User.where(twitter_name: params[:id]).first
  end

  # TODO: get total taps to complete game (yours and your friends)..so we do need a url?

end

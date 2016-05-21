class UsersController < ApplicationController
  def update
    @user = User.where(twitter_name: params[:id]).first
    @user.progress = params[:progress]

    if @user.save!
      render json: @user
    end
  end

  def url
    @url = User.where(twitter_name: params[:id]).first.url
    render json: @url
  end

end

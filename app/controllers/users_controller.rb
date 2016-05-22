class UsersController < ApplicationController
  def create
    @user = User.new(twitter_name: params[:twitter_name])

    respond_to do |format|
      if @user.save!
        format.html { redirect_to @user, notice: 'You have signed up for Hershey Crush!' }
        format.json { render @user }
      end
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
    @user = User.where(twitter_name: params[:id]).first || User.where(id: params[:id]).first
  end

  # TODO: get total taps to complete game (yours and your friends)..so we do need a url?

end

class SignupController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    puts "params: #{params}"
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save
    render :index
  end
end

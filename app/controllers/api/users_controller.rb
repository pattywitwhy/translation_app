class Api::UsersController < ApplicationController
  def index
    @user = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation],
                    phone_number: params[:phone_number],
                    preferred_language: params[:preferred_language]
                    )

    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end
end
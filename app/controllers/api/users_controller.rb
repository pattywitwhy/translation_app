class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
                    # image: params[:image],
                    image.attach(params:[image]),
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

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(current_user.id)

    @user.image = params[:image] || @user.image
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.preferred_language = params[:preferred_language] || @user.preferred_language

    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
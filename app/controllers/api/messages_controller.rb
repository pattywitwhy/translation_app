class Api::MessagesController < ApplicationController
  def index
    @messages = Message.all
    render 'index.json.jbuilder'
  end

  def create
    @message = Message.new(
                            # user_id: current_user.id,
                            body: params[:body]
                          )
    if @message.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @message = Message.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @message = Message.find(params[:id])

    @message.user_id = params[:user_id] || @message.user_id
    @message.body = params[:body] || @message.body

    if @message.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy

    render json: {message: "Successfully removed message"}
  end
end

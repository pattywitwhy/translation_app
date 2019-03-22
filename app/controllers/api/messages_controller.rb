class Api::MessagesController < ApplicationController
  before_action :authenticate_user
  # , except: [:index, :show]

  def index
    @messages = current_user.messages 
    render 'index.json.jbuilder'
  end

  def create
    @message = Message.new(
                            user_id: current_user.id,
                            conversation_id: params[:conversation_id],
                            body: params[:body]
                          )

    # @message.translate
    
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

    @message.conversation_id = params[:conversation_id] || @message.conversation_id
    @message.body = params[:body] || @message.body

    if @message.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    message = Message.find(params[:id])

    if message.user_id == current_user.id
      message.destroy
      render json: {message: "Successfully removed message"}
    else
      render json: {}, status: :unauthorized
    end

  end
end
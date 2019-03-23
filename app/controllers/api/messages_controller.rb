require 'http'

class Api::MessagesController < ApplicationController
  before_action :authenticate_user
  # , except: [:index, :show]

  def index
    @messages = current_user.messages 
    render 'index.json.jbuilder'
  end

  def create
    message = params[:body]
    # response = HTTP.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20190320T200646Z.834031e5f9a4407a.a488be9050a3cd89d11da5dabafc996b6b3570af&lang=ko&text=#{message}")

    # translation = response.parse
    # body_translation = translation.values[2][0]

    @message = Message.new(
                            user_id: current_user.id,
                            conversation_id: params[:conversation_id],
                            body: body_translation
                          )
    
    @message.translate

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
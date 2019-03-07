class Api::ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
    render 'index.json.jbuilder'
  end

  def create
    @conversation = Conversation.new(
                                    user_id: params[:user_id],
                                    message_id: params[:message_id]
                                    )

    if @conversation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @conversation.errors.full_messages }, status: unprocessable_entity
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @conversation = Conversation.find(params[:id])

    @conversation.user_id = params[:user_id] || @conversation.user_id
    @conversation.message_id = params[:message_id] || @conversation.message_id

    if @conversation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @conversation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    conversation = Conversation.find(params[:id])
    conversation.destroy

    render json: { message: "Successfully removed conversation" }
  end

end

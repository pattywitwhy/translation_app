class Api::ConversationsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    # @conversations = current_user.conversations
    # @started_conversations = current_user.started_conversations
    @conversations = Conversation.where(starter_id: current_user.id)
    #this cannot be removed, it breaks the conversation index page
    render 'index.json.jbuilder'
  end

  def create
    @conversation = Conversation.new(
                                    starter_id: current_user.id,
                                    name: params[:name]
                                    )
    if @conversation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @conversation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @conversation = Conversation.find(params[:id])

    if @conversation.starter_id == current_user.id
      render 'show.json.jbuilder'
    else
      render json: {}, status: :unauthorized
    end
  end

  def update
    @conversation = Conversation.find(params[:id])

    # @conversation.starter_id = params[:starter_id] || @conversation.starter_id
    @conversation.name = params[:name] || @conversation.name

    if @conversation.starter_id == current_user.id && @conversation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @conversation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    conversation = Conversation.find(params[:id])

    if conversation.starter_id == current_user.id
      conversation.destroy
      render json: { message: "Successfully removed conversation" }
    else
      render json: {}, status: :unauthorized
    end
  end
end
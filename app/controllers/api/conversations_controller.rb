class Api::ConversationsController < ApplicationController
  def index
    @conversations = current_user.uniq_conversations
    @started_conversations = current_user.started_conversations

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

    # if @conversation.starter_id == current_user.id
      @conversation = Conversation.find(params[:id])
      render 'show.json.jbuilder'
    # end
  end

  def update
    @conversation = Conversation.find(params[:id])

    @conversation.starter_id = params[:starter_id] || @conversation.starter_id
    @conversation.name = params[:name] || @conversation.name

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

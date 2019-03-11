class Api::ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
    render 'index.json.jbuilder'
  end

  def create
    @conversation = Conversation.new(
                                    starter_id: params[:starter_id]
                                    )

    if @conversation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @conversation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @conversation = Conversation.find(params[:id])

    @conversation.starter_id = params[:starter_id] || @conversation.starter_id

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

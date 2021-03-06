class Api::InvitationsController < ApplicationController
  def index
    @invitations = Invitation.all
    render 'index.json.jbuilder'
  end

  def create
    @invitation = Invitation.new(
                                  user_id: params[:user_id],
                                  conversation_id: params[:conversation_id]
                                )
    render 'index.json.jbuilder'
  end

  def show
    @invitation = Invitation.find(params[:id])
    @users = User.all
    render 'show.json.jbuilder'
  end

  def destroy
    invitation = Invitation.find(params[:id])
    invitation.destroy

    render json: {message: "Successfully removed messages"}
  end
end
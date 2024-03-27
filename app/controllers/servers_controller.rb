class ServersController < ApplicationController
  before_action :authenticate_user!

  def index
    @servers = Server.all
  end

  def show
    @server = Server.find(server_params)
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Server not found."
    redirect_to servers_path
  end

  private

  def server_params
    params.require(:server).permit(:name, :id)
  end
end

class PagesController < ApplicationController
  def home

    @id = Boss.first&.id
    @server_id = Server.first&.id
  end
end

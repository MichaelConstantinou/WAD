class UsersController < ApplicationController

  def index
    @crags = Crag.all
  end

end

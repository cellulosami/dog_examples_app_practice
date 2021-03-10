class Api::DogsController < ApplicationController
  def create
    render "show.json.jb"
  end
end

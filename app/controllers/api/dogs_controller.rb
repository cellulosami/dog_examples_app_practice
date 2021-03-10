class Api::DogsController < ApplicationController
  def create
    if current_user
      @dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id
      )
      @dog.save
      render "show.json.jb"
    else
      render json: { message: "You must be logged in in order to, uh, 'create' new dogs." }
    end
  end
end

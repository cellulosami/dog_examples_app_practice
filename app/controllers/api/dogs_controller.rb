class Api::DogsController < ApplicationController
  def create
    if current_user
      @image = Image.new(url: params[:url])
      @dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id
      )
      @dog.save
      @image.dog_id = @dog.id
      @image.save
      render "show.json.jb"
    else
      render json: { message: "You must be logged in in order to, uh, 'create' new dogs." }
    end
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render 'show.json.jb'
  end
end

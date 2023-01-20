class ListsController < ApplicationController
  def index
    @lists = List.all
    render :index
  end

  def show
    @list = List.find_by(id: params["id"])
    render :show
  end

  def create
    @list = List.create(
      item: params["item"],
      description: params["description"],
      priority: params["priority"],
    )
    render :show
  end

  def update
    @list = List.find_by(id: params["id"])
    @list.update(
      item: params["item"] || @list.item,
      description: params["description"] || @list.description,
      priority: params["priority"] || @list.priority,
    )
    render :show
  end

  def destroy
    @lists = List.find_by(id: params["id"])
    @lists.destroy
    render json: { message: "you done did destroy that there task!!" }
  end
end

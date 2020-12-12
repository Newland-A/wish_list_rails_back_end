class WishListsController < ApplicationController
  before_action :set_wish_list, only: [:show, :update, :destroy]

  # GET /wish_lists
  def index
    @wish_lists = WishList.all
    # binding.pry
    render json: @wish_lists.as_json(include: {wish_items: {only: [:id, :name, :color, :height, :weight, :link, :description, :price, :wish_list_id]}})
  end

  # GET /wish_lists/1
  def show
    # binding.pry
    render json: @wish_list.as_json(include: {wish_items: {only: [:id, :name, :color, :height, :weight, :link, :description, :price, :wish_list_id]}})
  end

  # POST /wish_lists
  def create
    @wish_list = WishList.new(wish_list_params)
    if @wish_list.save
      render json: @wish_list, status: :created, location: @wish_list
    else
      render json: @wish_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wish_lists/1
  def update
    if @wish_list.update(wish_list_params)
      render json: @wish_list
    else
      render json: @wish_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wish_lists/1
  def destroy
    @wish_list.destroy
    # binding.pry
    # redirect_to wish_lists_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish_list
      @wish_list = WishList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wish_list_params
      params.require(:wish_list).permit(:title, :item_count, :delivery_date, wish_items_attributes: [:id, :name, :color, :height, :weight, :link, :description, :price, :wish_list_id])
    end
end

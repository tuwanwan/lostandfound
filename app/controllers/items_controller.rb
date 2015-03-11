class ItemsController < ApplicationController
 
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  # below written by wz
  def search
    if params[:opt_id]
      @results = result
    end
  end
  # def search
  #   @search = "search"
  #   @item ||= find_items
  # end



  # up written by wz

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end


  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :type)
    end

    def result
      title = "%#{params[:title]}%"
      description = "%#{params[:description]}%"
      owner = "%#{params[:owner]}%"
      type_id = params[:item][:type_id]
      if params[:opt_id] == '1'
        Item.where("title LIKE ? OR description LIKE ? OR owner LIKE ? OR type_id = #{type_id}", title, description, owner)
      elsif params[:opt_id] == '2'
        Item.where("title LIKE ? AND description LIKE ? AND owner LIKE ? AND type_id = #{type_id}", title, description, owner)
      end
    end
end



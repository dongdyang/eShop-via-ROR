class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
 # protect_from_forgery with: :null_session
 # protect_from_forgery with: :exception
  
  respond_to :json, :html

  # GET /shops
  # GET /shops.json
  def index
    @shops = Shop.all
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
   @shop = Shop.find(params[:id])
   # @products = @shop.products.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end

  # GET /shops/new
  def new
   @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops
  # POST /shops.json
  def create
  	@shop = Shop.new(shop_params)
    #@shop = Shop.new
    #@shop.product_id = params[:shop][:product_id]
    #@shop.attributes = params[:shop]

     respond_to do |format|
      if @shop.save

        format.html { redirect_to @shop, notice: 'Shop was successfully created.' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: 'Shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    @shop.destroy
    respond_to do |format|
      format.html { redirect_to shops_url, notice: 'Shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:name, :telephone, :location, :product_id)
    end
end
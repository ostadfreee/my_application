class StoresController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /stores
  def index
    @products = Product.order("name ASC").paginate(:page => params[:page], :per_page => 10)
  end

  # GET /stores/1
  def show
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :content, :released_at, :cost, :image)
    end
end

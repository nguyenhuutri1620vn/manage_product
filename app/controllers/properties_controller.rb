class PropertiesController < ApplicationController
    before_action :set_property, only: %i[edit create destroy]
    before_action :set_find_property, only: %i[edit update destroy]

    def create
        @property = @product.properties.create(property_params)
        @product.quantity = Property.where("product_id = #{params[:product_id]}").sum(:quantity)
        respond_to do |format|
            if @product.save
                format.html { redirect_to @product, notice: "Property was successfully created." }
                format.json { render :show, status: :created, location: @property }
            else
                format.html { render 'products/show', status: :unprocessable_entity }
                format.json { render json: @property.errors, status: :unprocessable_entity }
            end
        end
    end

    def edit 
    end

    def update
        respond_to do |format|
            if @property.update(property_params)
              format.html { redirect_to @product, notice: "Product was successfully updated." }
              format.json { render :show, status: :ok, location: @property }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @property.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def destroy
        @property.destroy
        @product.quantity = Property.where("product_id = #{params[:product_id]}").sum(:quantity)
        if @product.save
            redirect_to product_path(@product)
        end
    end

    private
    def set_property
        @product = Product.find(params[:product_id])
    end

    def set_find_property
        @property = @product.properties.find(params[:id])
    end

    def property_params
        params.require(:property).permit(:title, :quantity, :image)
    end
end

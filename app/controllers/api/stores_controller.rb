class Api::StoresController < ApplicationController
  def index 
    stores = Store.all

    render json: {
      status: {code: 200, message: 'Stores List'},
      data: stores.map { |store| StoreSerializer.new(store).serializable_hash[:data][:attributes] }
    }
  end

  def create
    store = Store.new(store_params)
    
    if store.save
      render json: {
        status: {code: 200, message: 'Store Created.'},
        data: StoreSerializer.new(store).serializable_hash[:data][:attributes]
      }
    else
      render json: {
        status: {message: "Store couldn't be created successfully. #{store.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end

  private

  def store_params
    params.require(:store).permit(
      :name,
      :location,
      :address,
      :price_per_bag,
      :max_number_of_bags
    )
  end
end
json.extract! product, :id, :name, :price, :description
json.url product_url(product, format: :json)
json.array!(@products) do |product|
  json.extract! product, :id, :style_number, :fd_number, :confirmation_number, :category_id, :mobility_id, :mobility_rank, :gender, :warranty, :warranty_url, :image_url, :description, :comments
  json.url product_url(product, format: :json)
end

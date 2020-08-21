categories = %w(Electronics Furniture Party Garden Beach Tableware)
categories.each do |category|
  Category.create!(name: category)
end

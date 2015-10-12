json.extract! @book, :id, :name, :price, :created_at
json.name_with_id "#{@book.id} - #{@book.name}"
json.publisher do
  json.name @book.publisher.name
  json.address @book.publisher.address
end
unless @book.high_price?
  json.low_price true
end

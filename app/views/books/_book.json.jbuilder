json.extract! book, :id, :title, :description, :price, :author, :link_page, :created_at, :updated_at
json.url book_url(book, format: :json)

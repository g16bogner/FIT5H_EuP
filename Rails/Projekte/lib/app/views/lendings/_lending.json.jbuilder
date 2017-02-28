json.extract! lending, :id, :lending_date, :return_date, :book_id, :user_id, :created_at, :updated_at
json.url lending_url(lending, format: :json)
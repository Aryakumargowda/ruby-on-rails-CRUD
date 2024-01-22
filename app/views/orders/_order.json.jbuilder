json.extract! order, :id, :customer_id, :order_date, :total_amount, :quantity, :status, :created_at, :updated_at
json.url order_url(order, format: :json)

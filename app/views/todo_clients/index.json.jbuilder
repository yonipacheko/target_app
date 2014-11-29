json.array!(@todo_clients) do |todo_client|
  json.extract! todo_client, :id, :title, :notes
  json.url todo_client_url(todo_client, format: :json)
end

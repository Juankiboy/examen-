json.array!(@juans) do |juan|
  json.extract! juan, :id, :nombre, :dirrecion, :pedido
  json.url juan_url(juan, format: :json)
end

json.array!(@test_tables) do |test_table|
  json.extract! test_table, :name
  json.url test_table_url(test_table, format: :json)
end

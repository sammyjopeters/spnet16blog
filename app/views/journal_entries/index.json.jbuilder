json.array!(@journal_entries) do |journal_entry|
  json.extract! journal_entry, :id, :byline, :notes, :temperature, :rainfall_24hr, :garden_id, :impression
  json.url journal_entry_url(journal_entry, format: :json)
end

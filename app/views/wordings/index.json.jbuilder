json.array!(@wordings) do |wording|
  json.extract! wording, :id, :title, :text, :category_id
  json.url wording_url(wording, format: :json)
end

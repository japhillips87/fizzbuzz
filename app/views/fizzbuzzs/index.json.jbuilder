json.array!(@fizzbuzzs) do |fizzbuzz|
  json.extract! fizzbuzz, :id
  json.url fizzbuzz_url(fizzbuzz, format: :json)
end

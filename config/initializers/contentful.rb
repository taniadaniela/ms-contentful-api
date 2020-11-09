require 'contentful'

CONTENTFUL_CLIENT = Contentful::Client.new(
  access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
  space: ENV['CONTENTFUL_SPACE_ID'],
  dynamic_entries: :auto,
  raise_errors: true
)
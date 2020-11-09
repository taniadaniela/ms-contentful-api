require 'rails_helper'

RSpec.describe Recipe, type: :model do

  # mock requests to avoid fetching real url
  before(:each) do
    stub_request(:get, # get recipes request
        "https://cdn.contentful.com/spaces/#{ENV['CONTENTFUL_SPACE_ID']}/environments/master/entries?content_type=recipe&include=3").
      with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(status: 200, body: "stubbed response", headers: {})

    stub_request(:get, # client register request
        "https://cdn.contentful.com/spaces/#{ENV['CONTENTFUL_SPACE_ID']}?access_token=#{ENV['CONTENTFUL_ACCESS_TOKEN']}").
      with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(status: 200, body: "stubbed response", headers: {})
  end

  context 'Contentful connection' do
    it 'should fetch all recipe records from Contentful' do
      allow_any_instance_of(Contentful::Client).to receive(:entries)

      expect(CONTENTFUL_CLIENT).to receive(:entries)

      Recipe.render_all
    end

    it 'should fetch a single recipe from Contentful' do
      allow_any_instance_of(Contentful::Client).to receive(:entries)

      expect(CONTENTFUL_CLIENT).to receive(:entries)

      Recipe.render('contentful_id')
    end
  end
end

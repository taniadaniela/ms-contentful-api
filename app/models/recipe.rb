class Recipe < ApplicationRecord

  CONTENT_TYPE = 'recipe'.freeze

  def self.render_all
    CONTENTFUL_CLIENT.entries(content_type: CONTENT_TYPE, include: 3) 
    # include defines how deep to go in associations
  end

  def self.render(contentful_id)
    CONTENTFUL_CLIENT.entries(content_type: CONTENT_TYPE, include: 3, 'sys.id' => contentful_id)&.first
  end
end

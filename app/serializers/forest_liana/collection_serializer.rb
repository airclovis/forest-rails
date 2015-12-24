require 'jsonapi-serializers'

class ForestLiana::CollectionSerializer
  include JSONAPI::Serializer

  attribute :name
  attribute :fields

  has_many :actions do
    object.actions
  end

  def relationship_related_link(attribute_name)
    nil
  end

  def relationship_self_link(attribute_name)
    nil
  end
end

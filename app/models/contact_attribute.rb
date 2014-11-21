class ContactAttribute
  include Mongoid::Document

  embedded_in :contactable_attribute, polymorphic: true

  field :attribute_type, type: String
  field :value,          type: String
end

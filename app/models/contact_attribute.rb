class ContactAttribute
  include Mongoid::Document

  embedded_in :contactable_attribute, polymorphic: true

  field :attribute_type
  field :value
end

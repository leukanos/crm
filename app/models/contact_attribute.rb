class ContactAttribute
  include Mongoid::Document
  extend Enumerize

  embedded_in :contactable_attribute, polymorphic: true

  scope :email, -> { where(:attribute_type => 'email')}
  scope :phone, -> { where(:attribute_type.in => ['mobile', 'landline'])}
  scope :other, -> { where(:attribute_type => 'other')}

  enumerize :attribute_type, in: [:email, :mobile, :landline, :other]

  field :attribute_type
  field :value
end

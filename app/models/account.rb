class Account
  include Mongoid::Document


  belongs_to :user
  has_many :addresses, as: :addressable
  embeds_many :contact_attributes, as: :contactable_attribute

  accepts_nested_attributes_for :contact_attributes, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  field :name
  field :acronym
  field :description

  validates :name, uniqueness: true, presence: true
end
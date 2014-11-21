class Account
  include Mongoid::Document

  belongs_to :user
  has_many :addresses, as: :addressable
  embeds_many :contact_attributes, as: :contactable_attribute

  accepts_nested_attributes_for :contact_attributes

  field :name,        :type => String
  field :acronym,     :type => String
  field :description, :type => String

  validates :name, uniqueness: true, presence: true
end

class Address
  include Mongoid::Document
  include Mongoid::Timestamps
  extend Enumerize

  belongs_to :addressable, polymorphic: true

  validates :address_type, presence: true

  enumerize :address_type, in: [:home, :billing]


  field :address_type
  field :street
  field :city
  field :zipcode
  field :country

end

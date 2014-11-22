class Address
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :addressable, polymorphic: true

  validates :address_type, presence: true


  field :address_type
  field :street
  field :city
  field :zipcode
  field :country

end

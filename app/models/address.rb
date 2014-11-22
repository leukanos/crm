class Address
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :addressable, polymorphic: true

  validates :address_type, presence: true


  field :address_type,    :type => String
  field :street,          :type => String
  field :city,            :type => String
  field :zipcode,         :type => String
  field :country,         :type => String

end

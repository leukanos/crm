class Person
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :firstname,   type: String
  field :lastname,    type: String
  field :title,       type: String
  field :position,    type: String
  field :www,         type: String
  field :linkedin,    type: String
  field :facebook,    type: String
  field :skype,       type: String
  field :born_on,     type: Date
  field :do_not_call, type: Boolean

  search_in :firstname, :lastname

  has_many :addresses, as: :addressable
  embeds_many :contact_attributes, as: :contactable_attribute


end

class Person
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :firstname,
  field :lastname,
  field :title,
  field :www,
  field :linkedin,
  field :facebook,
  field :skype,
  field :born_on,     type: Date
  field :do_not_call, type: Boolean

  has_and_belongs_to_many :accounts
  has_many                :addresses, as: :addressable

  embeds_many             :contact_attributes, as: :contactable_attribute

  accepts_nested_attributes_for :contact_attributes, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  search_in :firstname, :lastname


  def full_name
    "#{firstname} #{lastname}"
  end


end

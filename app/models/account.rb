class Account
  include Mongoid::Document
  include Mongoid::Search


  belongs_to :user
  belongs_to :assignee, :class_name => "User", :foreign_key => :assigned_to
  has_many :addresses, as: :addressable
  embeds_many :contact_attributes, as: :contactable_attribute

  accepts_nested_attributes_for :contact_attributes, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  field :name
  field :acronym
  field :description

  validates :name, uniqueness: true, presence: true

  search_in :name, :acronym

  scope :created_by, ->(user) {where user: user}
  scope :assigned_to, ->(user) {where assignee: user}
end
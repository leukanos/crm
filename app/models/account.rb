class Account
  include Mongoid::Document
  include Mongoid::Search

  field :name
  field :acronym
  field :description

  belongs_to              :user, inverse_of: :accounts
  belongs_to              :assignee, :class_name => "User", :foreign_key => :assigned_to, inverse_of: :assigned_accounts
  has_many                :addresses, as: :addressable
  has_and_belongs_to_many :persons

  embeds_many :contact_attributes, as: :contactable_attribute

  accepts_nested_attributes_for :contact_attributes, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  validates :name, uniqueness: true, presence: true

  search_in :name, :acronym

  scope :created_by, ->(user) {where user: user}
  scope :assigned_to, ->(user) {where assignee: user}

  def assigned_user_name
    assignee.username if assignee
  end
end
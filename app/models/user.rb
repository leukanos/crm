class User
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :addresses, as: :addressable

  has_many :accounts, inverse_of: :user
  has_many :assigned_accounts, :class_name => 'Account', :foreign_key => 'assigned_to', inverse_of: :assignee

  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  ## Database authenticatable
  field :username
  field :email,              :default => ''
  field :encrypted_password, :default => ''

  ## Recoverable
  field :reset_password_token
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, :default => 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip
  field :last_sign_in_ip

  ## Confirmable
  field :confirmation_token
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email

  ## Role (CanCan)
  field :admin, type: Boolean

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time
end

class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [ :login ]

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""
  
  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  ## Token authenticatable
  # field :authentication_token, type: String

  field :username, type: String
  field :name, type: String
  field :boss, type: Boolean, default: false
  field :enable, type: Boolean, default: true

  belongs_to :company
  has_many :rosters

  # TODO: validates :company_id, presence: true

  attr_accessor :login
  attr_accessible :login, :username, :email, :password

  scope :active, -> { where(enable: true) }

  # function to handle user's login via email or username
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login).downcase
      where(conditions).where('$or' => [ {:username => /^#{Regexp.escape(login)}$/i}, {:email => /^#{Regexp.escape(login)}$/i} ]).first
    else
      where(conditions).first
    end
  end

  def nick
    name || username
  end

end

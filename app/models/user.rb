class User < ActiveRecord::Base
  
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  attr_accessor :password, :current_password, :password_confirmation

  has_many :tokens

  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_length_of :password, :minimum => 4, :message => "debe tener al menos 4 caracteres"
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_uniqueness_of :email 
  #validates_presence_of :first_name
  #validates_presence_of :last_name
  
  def to_s
    (self.first_name ? self.first_name.to_s+' ' : '')+self.last_name.to_s
  end

  def full_name
    self.to_s
  end

  def name
    self.to_s
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
   if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end

class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation,:password_digest
  has_secure_password
  validates_presence_of :password, :on => :create
  
  validates :email, :presence => true
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mi|biz|info|qa))$/i, :message => "is not a valid format"
  
end

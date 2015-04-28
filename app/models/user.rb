class User < ActiveRecord::Base
  has_many :events
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  before_create :set_default_role

  ROLES = %w[admin member]
  
  def forem_name
    name
  end
  
  private
  
  def set_default_role
    self.role ||= 'member'
  end

end

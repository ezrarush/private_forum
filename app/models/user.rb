class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :events
  
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
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

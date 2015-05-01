class User < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: { case_sensitive: false }
  has_many :events
  
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  before_create :set_default_role

  ROLES = %w[admin member guest]
  
  def forem_name
    name
  end
  
  private
  
  def set_default_role
    self.role ||= 'guest'
  end

end

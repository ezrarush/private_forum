class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_many :events
  
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  
         # :recoverable, :confirmable,
  
  before_create :set_default_role

  ROLES = %w[admin member guest]
  
  def forem_name
    name
  end
  
  # override default forem permission
  def can_read_forem_category?(category)
    true if (self.role == 'admin' or self.role == 'member')
  end
  
  private
  
  def set_default_role
    self.role ||= 'guest'
  end

end

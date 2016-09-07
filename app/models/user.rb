class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable #:validatable
  def email_required?
  false
  end
end

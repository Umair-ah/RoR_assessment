class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def doctor?
    self.type == "Doctor"
  end

  def patient?
    self.type == "Patient"
  end

  def receptionist?
    self.type == "Receptionist"
  end
end

class User < ApplicationRecord
  devise :two_factor_authenticatable
  devise :two_factor_backupable, otp_backup_code_length: 6, otp_number_of_backup_codes: 10
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :validatable

  serialize :otp_backup_codes, Array
end

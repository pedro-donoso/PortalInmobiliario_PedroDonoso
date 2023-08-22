# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  bio                    :text
#  role                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #Agrego Validaciones
  validates :role, inclusion: { in: %w[normal administrador] }
  # Enum de roles
  enum role: {
    normal: 'normal',
    admin: 'administrador'
  }, _default: 'normal'

 # Creo método para mostrar usuario por defecto
  def full_name
    name.blank? ? email : name
  end

end

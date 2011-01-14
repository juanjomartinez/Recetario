require 'digest/sha2'

class Usuario < ActiveRecord::Base
  validates :user, :nombre, :presence => true, :uniqueness => true
 
  validates :password, :confirmation => true
	# Pide confirmación con otro campo más en los formularios.
  attr_accessor :password_confirmation
  attr_reader   :password

  validate  :password_must_be_present
  
  def Usuario.auth(user, password)
    if user = find_by_user(user)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end

  def Usuario.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end
	# Retorna un string SHA2 mezclando el password con el salt
  
  def password=(password)
    @password = password

    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end
	# Cuando se le asigna una password, automáticamente se ejecuta este método dentro del objecto.
  
  private

    def password_must_be_present
      errors.add(:password, "Missing password") unless hashed_password.present?
    end
  
    def generate_salt
      self.salt = self.object_id.to_s + rand.to_s
    end
		# Crear un String aleatorio para luego ser mezclado con la pass y pasarlo por SHA2, guardándolo en la variable "salt"
end

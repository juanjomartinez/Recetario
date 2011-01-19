class Comentario < ActiveRecord::Base
	validates :cuerpo, :receta_id, :usuario_id, :presence => true
	#validate :existen_receta_y_usuario
	validates_presence_of :receta

	belongs_to :receta
	belongs_to :usuario

	#def existen_receta_y_usuario
	#	errors.add(:receta_id, "No es una receta válida") if receta_id && !Receta.exists?(receta_id)
	#	errors.add(:usuario_id, "No es un usuario válido") if usuario_id && !Usuario.exists?(usuario_id)
	#end

end

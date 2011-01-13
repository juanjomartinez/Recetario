class Comentario < ActiveRecord::Base
	validates :cuerpo, :presence => true

	belongs_to :receta
end

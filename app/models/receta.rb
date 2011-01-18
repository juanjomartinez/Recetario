class Receta < ActiveRecord::Base
	validates :titulo, :descripcion, :codigo, :presence => true
	validates :titulo, :uniqueness => true

	has_many :comentarios, :dependent => :destroy
end

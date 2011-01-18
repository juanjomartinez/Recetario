require 'test_helper'

class ComentarioTest < ActiveSupport::TestCase

	test "no se puede guardar un comentario sin cuerpo" do
		c = Receta.find(:all).first.comentarios.build(:usuario_id => Usuario.find(:all).first.id)
		assert !c.save, "Se ha guardado sin cuerpo"
	end

	test "no se puede guardar un comentario sin referencia a una receta" do
		c = Comentario.new(:cuerpo => 'Prueba')
		assert !c.save, "Se ha guardado sin referencia a una receta ni a un usuario"
	end

	test "no se puede guardar un comentario con una referencia no valida" do
		c = Comentario.new(:cuerpo => 'Prueba', :usuario_id => Usuario.find(:all).first.id, :receta_id => -10)
		assert !c.save, "Se ha guardado sin referencia a una receta ni a un usuario"
	end

	test "se debería guardar sin problemas" do
		c = Receta.find(:all).first.comentarios.build(:usuario_id => Usuario.find(:all).first.id, :cuerpo => 'Prueba de comentario')
		assert c.save, "Se debería guardar sin problemas"
	end

end

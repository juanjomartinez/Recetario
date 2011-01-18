require 'test_helper'

class RecetaTest < ActiveSupport::TestCase

	test "no debería guardarse sin datos" do
		r = Receta.new
		assert !r.save, "Se ha guardado la receta sin datos"
	end

	test "no debería guardarse si hay otra receta con el mismo nombre" do
		r = Receta.new(:titulo => Receta.find(:all).first.titulo, :descripcion => 'Prueba', :codigo => 'codigo de prueba')
		assert !r.save, "Se ha guardado con el mismo titulo que otra receta"
	end

	test "debería guardarse sin problemas" do
		r = Receta.new(:titulo => 'Prueba de test 1', :descripcion => 'Descripcion de prueba 1', :codigo => 'Codigo de prueba 1')
		assert r.save
	end

end

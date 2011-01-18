require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

	test "debería crearse sin problema" do
		u = Usuario.new(:user => 'Prueba_de_usuario', :nombre => 'Prueba de usuario', :password => 'prueba')
		assert u.save
	end

	test "no pruede guardarse sin nombre" do
		u = Usuario.new(:user => 'Prueba_de_usuario', :password => 'sadf')
		assert !u.save
	end

	test "no puede crearse sin password" do
		u = Usuario.new(:user => 'Prueba_de_usuario', :nombre => 'prueba')
		assert !u.save
	end

	test "no puede guardarse sin no concuerdan el password y el password_confirmation" do
		u = Usuario.new(:user => 'Prueba_de_usuario', :nombre => 'prueba', :password => 'a', :password_confirmation => 'b')
		assert !u.save
	end

end

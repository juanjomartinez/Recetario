class SesionesController < ApplicationController
  def new
  end

  def create
		if user = Usuario.auth(params[:user],params[:password])
			session[:usuario_id] = user.id
			redirect_to recetas_path
		else
			redirect_to login_path, :notice => 'Usuario o contraseña inválidos'
		end
  end

  def destroy
		session[:usuario_id] = nil
		redirect_to recetas_path
  end

end

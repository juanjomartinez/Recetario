class ComentariosController < ApplicationController
	before_filter :cargar_receta


	def create
		@comentario = @receta.comentarios.new(params[:comentario])
		@comentario.usuario_id = session[:usuario_id]
		if @comentario.save
			respond_to do |format|
				format.html { redirect_to @receta, :notice => 'Gracias por dejar su comentario' }
				format.js
			end
		else
			respond_to do |format|
				format.html { redirect_to @receta, :notice => 'Gracias por dejar su comentario' }
				format.js
			end
		end
		
	end

	private
		def cargar_receta
			@receta = Receta.find(params[:receta_id])
		end
end

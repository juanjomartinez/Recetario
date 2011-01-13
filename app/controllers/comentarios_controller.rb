class ComentariosController < ApplicationController
	before_filter :cargar_receta


	def create
		@comentario = @receta.comentarios.new(params[:comentario])
		if @comentario.save
			redirect_to @receta, :notice => 'Gracias por dejar su comentario'
		else
			redirect_to @receta, :notice => 'No se pueden dejar comentarios en blanco'
		end
	end

	private
		def cargar_receta
			@receta = Receta.find(params[:receta_id])
		end
end

class AddUsuarioToComentarios < ActiveRecord::Migration
  def self.up
    add_column :comentarios, :usuario_id, :integer
  end

  def self.down
    remove_column :comentarios, :usuario_id
  end
end

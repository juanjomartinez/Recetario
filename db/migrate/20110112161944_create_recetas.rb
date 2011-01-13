class CreateRecetas < ActiveRecord::Migration
  def self.up
    create_table :recetas do |t|
      t.string :titulo
      t.string :descripcion
      t.text :codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :recetas
  end
end

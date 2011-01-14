class AddColumnsToUsuario < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :user, :string
    add_column :usuarios, :email, :string
  end

  def self.down
    remove_column :usuarios, :email
    remove_column :usuarios, :user
  end
end

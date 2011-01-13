# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Receta.create(:titulo => 'Truncate de una tabla en SQLite',
							:descripcion => 'Truncate de una table en SQLite con reseteo del campo auto_increment',
							:codigo => "delete from your_table;\n delete from sqlite_sequence where name=your_table")

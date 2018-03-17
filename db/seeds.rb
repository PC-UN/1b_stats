# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
puts 'Listado_de_puntos_de_recolecci_n_de_residuos_posconsumo.csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Listado_de_puntos_de_recolecci_n_de_residuos_posconsumo.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
i = 0
csv.each do |row|
  t = DisposalPoint.new
  t.disposal_point_name = row[0]
  t.disposal_point_address = row[1]
  t.city = row[2]
  t.department = row[3]
  t.country = row[4]
  t.residue_category = row[5]
  t.residue_type = row[6]
  t.residue_name = row[7]
  t.location = row[8]
  t.schedule = row[9]
  t.postconsumption_program_name = row[10]
  t.contact_person = row[11]
  t.email = row[12]
  t.save
  i = i + 1
  puts "#{i} "
end

#0 Nombre Punto de Recolección      disposal_point_name
#1 Dirección punto de recolección,  disposal_point_address
#2 Ciudad,                          city
#3 Departamento,                    department
#4 País,                            country
#5 Categoria residuo,               residue_category
#6 Tipo Residuo,                    residue_type
#7 Nombre residuo,                  residue_name
#8 Ubicacion,                       location
#9 Horario,                         schedule
#A Nombre Programa Posconsumo,      postconsumption_program_name
#B Persona Contacto,                contact_person
#C Correo electrónico               email

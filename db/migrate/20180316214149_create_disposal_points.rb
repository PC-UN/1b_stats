class CreateDisposalPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :disposal_points do |t|
      t.string :disposal_point_name
      t.string :disposal_point_address
      t.string :city
      t.string :department
      t.string :country
      t.string :residue_category
      t.string :residue_type
      t.string :residue_name
      t.string :location
      t.string :schedule
      t.string :postconsumption_program_name
      t.string :contact_person
      t.string :email

      t.timestamps
    end
  end
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

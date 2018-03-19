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

class DisposalPoint < ApplicationRecord
    def self.count_by(column)
        DisposalPoint.group(column).count
    end

    def self.person_disposal_ratio
      @ratios = {}
      DisposalPoint.count_by("department").each do |department, count|
        if $POPULATION_PER_DEPARTMENT[department].to_i != 0
          @ratios[department] = $POPULATION_PER_DEPARTMENT[department].to_f/count
        end
      end
      return @ratios
    end
end

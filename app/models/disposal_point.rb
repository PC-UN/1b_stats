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

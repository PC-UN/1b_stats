class StatsHandlerController < ApplicationController
  # GET
  def db_status
      @db_row_count = DisposalPoint.count('id')
      render json: @db_row_count
  end
  
  # GET
  def disposal_count_per_city
      @count = DisposalPoint.count_by("city")
      render json: @count
  end
  
  def disposal_count_per_city_sorted
      @count = DisposalPoint.count_by("city").invert.sort.reverse.to_h.invert
      render json: @count    
  end

  # GET
  def disposal_count_per_department
      @count = DisposalPoint.count_by("department")
      render json: @count
  end
  
  # GET
  def disposal_count_per_department_sorted
      @count = DisposalPoint.count_by("department").invert.sort.reverse.to_h.invert
      render json: @count
  end

  # GET
  def disposal_count_per_residue_name
      @count = DisposalPoint.count_by("residue_name")
      render json: @count

  end
  
  # GET
  def disposal_count_per_residue_name_sorted
      @count = DisposalPoint.count_by("residue_name").invert.sort.reverse.to_h.invert
      render json: @count
  end

  # GET
  def disposal_count_per_residue_type
      @count = DisposalPoint.count_by("residue_type")
      render json: @count
  end
  
  # GET
  def disposal_count_per_residue_type_sorted
      @count = DisposalPoint.count_by("residue_type").invert.sort.reverse.to_h.invert
      render json: @count
  end

  # GET
  def disposal_count_per_program_name
      @count = DisposalPoint.count_by("postconsumption_program_name")
      render json: @count
  end
  
  # GET
  def disposal_count_per_program_name_sorted
      @count = DisposalPoint.count_by("postconsumption_program_name").invert.sort.reverse.to_h.invert
      render json: @count
  end
  
  # GET
  def person_per_disposal
      @ratios = DisposalPoint.person_disposal_ratio()
      render json: @ratios
  end
  
  # GET
  def person_per_disposal_sorted
      @ratios = DisposalPoint.person_disposal_ratio()
      @sorted_ratios = @ratios.invert.sort.reverse.to_h.invert
      render json: @sorted_ratios
  end
end

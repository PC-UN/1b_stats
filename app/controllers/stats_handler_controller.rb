class StatsHandlerController < ApplicationController
  # GET
  def db_status
      @db_row_count = DisposalPoint.count('id')
      render json: @db_row_count
  end
  
  # GET
  def disposal_count_per_city
      @count = DisposalPoint.group("city").count
      render json: @count
  end

  # GET
  def disposal_count_per_department
      @count = DisposalPoint.group("department").count
      render json: @count
  end

  # GET
  def disposal_count_per_residue_name
      @count = DisposalPoint.group("residue_name").count
      render json: @count

  end

  # GET
  def disposal_count_per_residue_type
      @count = DisposalPoint.group("residue_type").count
      render json: @count
  end

  # GET
  def disposal_count_per_program_name
      @count = DisposalPoint.group("postconsumption_program_name").count
      render json: @count
  end
end

class StatsHandlerController < ApplicationController
  # GET
  def db_status
      @db_row_count = DisposalPoint.count('id')
      render json: @db_row_count
  end
  
  # GET
  def disposal_count_per_city
      data = DisposalPoint.count_by("city")
      @ans = to_list_of_hash(data)
      render json: @ans
  end
  
  def disposal_count_per_city_sorted
      data = DisposalPoint.count_by("city")
      @ans = to_list_of_hash_sorted(data)
      render json: @ans
  end

  # GET
  def disposal_count_per_department
      data = DisposalPoint.count_by("department")
      @ans = to_list_of_hash(data)
      render json: @ans
  end
  
  # GET
  def disposal_count_per_department_sorted
      data = DisposalPoint.count_by("department")
      @ans = to_list_of_hash_sorted(data)
      render json: @ans
  end

  # GET
  def disposal_count_per_residue_name
      data = DisposalPoint.count_by("residue_name")
      @ans = to_list_of_hash(data)
      render json: @ans
  end
  
  # GET
  def disposal_count_per_residue_name_sorted
      data = DisposalPoint.count_by("residue_name")
      @ans = to_list_of_hash_sorted(data)
      render json: @ans
  end

  # GET
  def disposal_count_per_residue_type
      data = DisposalPoint.count_by("residue_type")
      @ans = to_list_of_hash(data)
      render json: @ans
  end
  
  # GET
  def disposal_count_per_residue_type_sorted
      data = DisposalPoint.count_by("residue_type")
      @ans = to_list_of_hash_sorted(data)      
      render json: @ans
  end

  # GET
  def disposal_count_per_program_name
      data = DisposalPoint.count_by("postconsumption_program_name")
      @ans = to_list_of_hash(data)      
      render json: @ans
  end
  
  # GET
  def disposal_count_per_program_name_sorted
      data = DisposalPoint.count_by("postconsumption_program_name").invert.sort.reverse.to_h.invert
      @ans = to_list_of_hash_sorted(data)
      render json: @ans
  end
  
  # GET
  def people_per_disposal
      data = DisposalPoint.person_disposal_ratio()
      @ans = to_list_of_hash(data)
      render json: @ans
  end
  
  # GET
  def people_per_disposal_sorted
      data = DisposalPoint.person_disposal_ratio()
      @ans = to_list_of_hash_sorted(data)
      render json: @ans
  end
  
  def to_list_of_hash(data) # data is a hash of hashes
      ans = []
      data.to_a.each do |entry|
        ans.push({item: entry[0], quantity: entry[1]})
      end
      return ans
  end
  
  def to_list_of_hash_sorted(data) # data is a hash of hashes
      ans = []
      temparr = []
      data.to_a.each do |entry|
        temparr.push([entry[1], entry[0]])
      end
      sortarr = temparr.sort
      print sortarr
      sortarr.each do |entry|
        ans.push({item: entry[1], quantity: entry[0]})
      end
      return ans
  end
end

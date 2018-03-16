require 'test_helper'

class StatsHandlerControllerTest < ActionDispatch::IntegrationTest
  test "should get db_status" do
    get stats_handler_db_status_url
    assert_response :success
  end

  test "should get disposal_count_per_city" do
    get stats_handler_disposal_count_per_city_url
    assert_response :success
  end

  test "should get disposal_count_per_department" do
    get stats_handler_disposal_count_per_department_url
    assert_response :success
  end

  test "should get disposal_count_per_residue_name" do
    get stats_handler_disposal_count_per_residue_name_url
    assert_response :success
  end

  test "should get disposal_count_per_residue_type" do
    get stats_handler_disposal_count_per_residue_type_url
    assert_response :success
  end

  test "should get disposal_count_per_program_name" do
    get stats_handler_disposal_count_per_program_name_url
    assert_response :success
  end

end

require 'test_helper'

class DisposalPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disposal_point = disposal_points(:one)
  end

  test "should get index" do
    get disposal_points_url, as: :json
    assert_response :success
  end

  test "should create disposal_point" do
    assert_difference('DisposalPoint.count') do
      post disposal_points_url, params: { disposal_point: { city: @disposal_point.city, contact_person: @disposal_point.contact_person, country: @disposal_point.country, department: @disposal_point.department, disposal_point_address: @disposal_point.disposal_point_address, disposal_point_name: @disposal_point.disposal_point_name, email: @disposal_point.email, location: @disposal_point.location, postconsumption_program_name: @disposal_point.postconsumption_program_name, residue_category: @disposal_point.residue_category, residue_name: @disposal_point.residue_name, residue_type: @disposal_point.residue_type, schedule: @disposal_point.schedule } }, as: :json
    end

    assert_response 201
  end

  test "should show disposal_point" do
    get disposal_point_url(@disposal_point), as: :json
    assert_response :success
  end

  test "should update disposal_point" do
    patch disposal_point_url(@disposal_point), params: { disposal_point: { city: @disposal_point.city, contact_person: @disposal_point.contact_person, country: @disposal_point.country, department: @disposal_point.department, disposal_point_address: @disposal_point.disposal_point_address, disposal_point_name: @disposal_point.disposal_point_name, email: @disposal_point.email, location: @disposal_point.location, postconsumption_program_name: @disposal_point.postconsumption_program_name, residue_category: @disposal_point.residue_category, residue_name: @disposal_point.residue_name, residue_type: @disposal_point.residue_type, schedule: @disposal_point.schedule } }, as: :json
    assert_response 200
  end

  test "should destroy disposal_point" do
    assert_difference('DisposalPoint.count', -1) do
      delete disposal_point_url(@disposal_point), as: :json
    end

    assert_response 204
  end
end

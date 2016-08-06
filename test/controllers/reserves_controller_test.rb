require 'test_helper'

class ReservesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserf = reserves(:one)
  end

  test "should get index" do
    get reserves_url
    assert_response :success
  end

  test "should get new" do
    get new_reserf_url
    assert_response :success
  end

  test "should create reserf" do
    assert_difference('Reserve.count') do
      post reserves_url, params: { reserf: { amount_pay: @reserf.amount_pay, car_id: @reserf.car_id, date_entry: @reserf.date_entry, date_out: @reserf.date_out, id_reserve: @reserf.id_reserve, parking_id: @reserf.parking_id } }
    end

    assert_redirected_to reserf_url(Reserve.last)
  end

  test "should show reserf" do
    get reserf_url(@reserf)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserf_url(@reserf)
    assert_response :success
  end

  test "should update reserf" do
    patch reserf_url(@reserf), params: { reserf: { amount_pay: @reserf.amount_pay, car_id: @reserf.car_id, date_entry: @reserf.date_entry, date_out: @reserf.date_out, id_reserve: @reserf.id_reserve, parking_id: @reserf.parking_id } }
    assert_redirected_to reserf_url(@reserf)
  end

  test "should destroy reserf" do
    assert_difference('Reserve.count', -1) do
      delete reserf_url(@reserf)
    end

    assert_redirected_to reserves_url
  end
end

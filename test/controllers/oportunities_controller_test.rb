require 'test_helper'

class OportunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oportunity = oportunities(:one)
  end

  test "should get index" do
    get oportunities_url
    assert_response :success
  end

  test "should get new" do
    get new_oportunity_url
    assert_response :success
  end

  test "should create oportunity" do
    assert_difference('Oportunity.count') do
      post oportunities_url, params: { oportunity: { budget: @oportunity.budget, category_id: @oportunity.category_id, company_id: @oportunity.company_id, deadline: @oportunity.deadline, description: @oportunity.description, money: @oportunity.money, name: @oportunity.name, published_date: @oportunity.published_date, result_date: @oportunity.result_date, status: @oportunity.status } }
    end

    assert_redirected_to oportunity_url(Oportunity.last)
  end

  test "should show oportunity" do
    get oportunity_url(@oportunity)
    assert_response :success
  end

  test "should get edit" do
    get edit_oportunity_url(@oportunity)
    assert_response :success
  end

  test "should update oportunity" do
    patch oportunity_url(@oportunity), params: { oportunity: { budget: @oportunity.budget, category_id: @oportunity.category_id, company_id: @oportunity.company_id, deadline: @oportunity.deadline, description: @oportunity.description, money: @oportunity.money, name: @oportunity.name, published_date: @oportunity.published_date, result_date: @oportunity.result_date, status: @oportunity.status } }
    assert_redirected_to oportunity_url(@oportunity)
  end

  test "should destroy oportunity" do
    assert_difference('Oportunity.count', -1) do
      delete oportunity_url(@oportunity)
    end

    assert_redirected_to oportunities_url
  end
end

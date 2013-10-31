require 'test_helper'

class TestTablesControllerTest < ActionController::TestCase
  setup do
    @test_table = test_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_table" do
    assert_difference('TestTable.count') do
      post :create, test_table: { name: @test_table.name }
    end

    assert_redirected_to test_table_path(assigns(:test_table))
  end

  test "should show test_table" do
    get :show, id: @test_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_table
    assert_response :success
  end

  test "should update test_table" do
    patch :update, id: @test_table, test_table: { name: @test_table.name }
    assert_redirected_to test_table_path(assigns(:test_table))
  end

  test "should destroy test_table" do
    assert_difference('TestTable.count', -1) do
      delete :destroy, id: @test_table
    end

    assert_redirected_to test_tables_path
  end
end

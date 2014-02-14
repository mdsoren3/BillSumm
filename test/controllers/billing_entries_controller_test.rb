require 'test_helper'

class BillingEntriesControllerTest < ActionController::TestCase
  setup do
    @billing_entry = billing_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billing_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing_entry" do
    assert_difference('BillingEntry.count') do
      post :create, billing_entry: { client_id: @billing_entry.client_id, expensesBilled: @billing_entry.expensesBilled, timeBilled: @billing_entry.timeBilled }
    end

    assert_redirected_to billing_entry_path(assigns(:billing_entry))
  end

  test "should show billing_entry" do
    get :show, id: @billing_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing_entry
    assert_response :success
  end

  test "should update billing_entry" do
    patch :update, id: @billing_entry, billing_entry: { client_id: @billing_entry.client_id, expensesBilled: @billing_entry.expensesBilled, timeBilled: @billing_entry.timeBilled }
    assert_redirected_to billing_entry_path(assigns(:billing_entry))
  end

  test "should destroy billing_entry" do
    assert_difference('BillingEntry.count', -1) do
      delete :destroy, id: @billing_entry
    end

    assert_redirected_to billing_entries_path
  end
end

require 'test_helper'

class ArTransactionsControllerTest < ActionController::TestCase
  setup do
    @ar_transaction = ar_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_transaction" do
    assert_difference('ArTransaction.count') do
      post :create, ar_transaction: { date: @ar_transaction.date, note: @ar_transaction.note, transactionAmount: @ar_transaction.transactionAmount, transactionType: @ar_transaction.transactionType }
    end

    assert_redirected_to ar_transaction_path(assigns(:ar_transaction))
  end

  test "should show ar_transaction" do
    get :show, id: @ar_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_transaction
    assert_response :success
  end

  test "should update ar_transaction" do
    patch :update, id: @ar_transaction, ar_transaction: { date: @ar_transaction.date, note: @ar_transaction.note, transactionAmount: @ar_transaction.transactionAmount, transactionType: @ar_transaction.transactionType }
    assert_redirected_to ar_transaction_path(assigns(:ar_transaction))
  end

  test "should destroy ar_transaction" do
    assert_difference('ArTransaction.count', -1) do
      delete :destroy, id: @ar_transaction
    end

    assert_redirected_to ar_transactions_path
  end
end

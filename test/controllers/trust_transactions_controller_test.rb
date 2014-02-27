require 'test_helper'

class TrustTransactionsControllerTest < ActionController::TestCase
  setup do
    @trust_transaction = trust_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trust_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trust_transaction" do
    assert_difference('TrustTransaction.count') do
      post :create, trust_transaction: { date: @trust_transaction.date, note: @trust_transaction.note, transactionAmount: @trust_transaction.transactionAmount, transactionType: @trust_transaction.transactionType }
    end

    assert_redirected_to trust_transaction_path(assigns(:trust_transaction))
  end

  test "should show trust_transaction" do
    get :show, id: @trust_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trust_transaction
    assert_response :success
  end

  test "should update trust_transaction" do
    patch :update, id: @trust_transaction, trust_transaction: { date: @trust_transaction.date, note: @trust_transaction.note, transactionAmount: @trust_transaction.transactionAmount, transactionType: @trust_transaction.transactionType }
    assert_redirected_to trust_transaction_path(assigns(:trust_transaction))
  end

  test "should destroy trust_transaction" do
    assert_difference('TrustTransaction.count', -1) do
      delete :destroy, id: @trust_transaction
    end

    assert_redirected_to trust_transactions_path
  end
end

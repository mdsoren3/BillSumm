class TrustTransactionsController < ApplicationController
  before_action :set_trust_transaction, only: [:show, :edit, :update, :destroy]

  # GET /trust_transactions
  # GET /trust_transactions.json
  def index
    @trust_transactions = TrustTransaction.all
  end

  # GET /trust_transactions/1
  # GET /trust_transactions/1.json
  def show
  end

  # GET /trust_transactions/new
  def new
    @trust_transaction = TrustTransaction.new
  end

  # GET /trust_transactions/1/edit
  def edit
  end

  # POST /trust_transactions
  # POST /trust_transactions.json
  def create
    @trust_transaction = TrustTransaction.new(trust_transaction_params)

    respond_to do |format|
      if @trust_transaction.save
        format.html { redirect_to @trust_transaction, notice: 'Trust transaction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trust_transaction }
      else
        format.html { render action: 'new' }
        format.json { render json: @trust_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trust_transactions/1
  # PATCH/PUT /trust_transactions/1.json
  def update
    respond_to do |format|
      if @trust_transaction.update(trust_transaction_params)
        format.html { redirect_to @trust_transaction, notice: 'Trust transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trust_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trust_transactions/1
  # DELETE /trust_transactions/1.json
  def destroy
    @trust_transaction.destroy
    respond_to do |format|
      format.html { redirect_to trust_transactions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trust_transaction
      @trust_transaction = TrustTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trust_transaction_params
      params.require(:trust_transaction).permit(:date, :transactionAmount, :transactionType, :note)
    end
end

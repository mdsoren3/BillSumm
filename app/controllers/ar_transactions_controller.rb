class ArTransactionsController < ApplicationController
  before_action :set_ar_transaction, only: [:show, :edit, :update, :destroy]

  # GET /ar_transactions
  # GET /ar_transactions.json
  def index
    @ar_transactions = ArTransaction.all
  end

  # GET /ar_transactions/1
  # GET /ar_transactions/1.json
  def show
  end

  # GET /ar_transactions/new
  def new
    @ar_transaction = ArTransaction.new
  end

  # GET /ar_transactions/1/edit
  def edit
  end

  # POST /ar_transactions
  # POST /ar_transactions.json
  def create
    @ar_transaction = ArTransaction.new(ar_transaction_params)

    respond_to do |format|
      if @ar_transaction.save
        format.html { redirect_to @ar_transaction, notice: 'Ar transaction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ar_transaction }
      else
        format.html { render action: 'new' }
        format.json { render json: @ar_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_transactions/1
  # PATCH/PUT /ar_transactions/1.json
  def update
    respond_to do |format|
      if @ar_transaction.update(ar_transaction_params)
        format.html { redirect_to @ar_transaction, notice: 'Ar transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ar_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_transactions/1
  # DELETE /ar_transactions/1.json
  def destroy
    @ar_transaction.destroy
    respond_to do |format|
      format.html { redirect_to ar_transactions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_transaction
      @ar_transaction = ArTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_transaction_params
      params.require(:ar_transaction).permit(:date, :transactionAmount, :transactionType, :note)
    end
end

class BillingEntriesController < ApplicationController
  before_action :set_billing_entry, only: [:show, :edit, :update, :destroy]

  # GET /billing_entries
  # GET /billing_entries.json
  def index
    @billing_entries = BillingEntry.all
  end

  # GET /billing_entries/1
  # GET /billing_entries/1.json
  def show
  end

  # GET /billing_entries/new
  def new
    @billing_entry = BillingEntry.new
  end

  # GET /billing_entries/1/edit
  def edit
  end

  # POST /billing_entries
  # POST /billing_entries.json
  def create
    @billing_entry = BillingEntry.new(billing_entry_params)

    respond_to do |format|
      if @billing_entry.save
        format.html { redirect_to @billing_entry, notice: 'Billing entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @billing_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @billing_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_entries/1
  # PATCH/PUT /billing_entries/1.json
  def update
    respond_to do |format|
      if @billing_entry.update(billing_entry_params)
        format.html { redirect_to @billing_entry, notice: 'Billing entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @billing_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_entries/1
  # DELETE /billing_entries/1.json
  def destroy
    @billing_entry.destroy
    respond_to do |format|
      format.html { redirect_to billing_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_entry
      @billing_entry = BillingEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_entry_params
      params.require(:billing_entry).permit(:timeBilled, :expensesBilled, :client_id)
    end
end

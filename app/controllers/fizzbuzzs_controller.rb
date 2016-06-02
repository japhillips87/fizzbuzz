class FizzbuzzsController < ApplicationController
  before_action :set_fizzbuzz, only: [:show, :edit, :update, :destroy]

  # GET /fizzbuzzs
  # GET /fizzbuzzs.json
  def index
    @fizzbuzzs = Fizzbuzz.all
  end

  # GET /fizzbuzzs/1
  # GET /fizzbuzzs/1.json
  def show
  end

  # GET /fizzbuzzs/new
  def new
    @fizzbuzz = Fizzbuzz.new
  end

  # GET /fizzbuzzs/1/edit
  def edit
  end

  # POST /fizzbuzzs
  # POST /fizzbuzzs.json
  def create
    @fizzbuzz = Fizzbuzz.new(fizzbuzz_params)

    respond_to do |format|
      if @fizzbuzz.save
        format.html { redirect_to @fizzbuzz, notice: 'Fizzbuzz was successfully created.' }
        format.json { render :show, status: :created, location: @fizzbuzz }
      else
        format.html { render :new }
        format.json { render json: @fizzbuzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fizzbuzzs/1
  # PATCH/PUT /fizzbuzzs/1.json
  def update
    respond_to do |format|
      if @fizzbuzz.update(fizzbuzz_params)
        format.html { redirect_to @fizzbuzz, notice: 'Fizzbuzz was successfully updated.' }
        format.json { render :show, status: :ok, location: @fizzbuzz }
      else
        format.html { render :edit }
        format.json { render json: @fizzbuzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fizzbuzzs/1
  # DELETE /fizzbuzzs/1.json
  def destroy
    @fizzbuzz.destroy
    respond_to do |format|
      format.html { redirect_to fizzbuzzs_url, notice: 'Fizzbuzz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fizzbuzz
      @fizzbuzz = Fizzbuzz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fizzbuzz_params
      params.fetch(:fizzbuzz, {})
    end
end

class TestTablesController < ApplicationController
  before_action :set_test_table, only: [:show, :edit, :update, :destroy]

  # GET /test_tables
  # GET /test_tables.json
  def index
    @test_tables = TestTable.all
  end

  # GET /test_tables/1
  # GET /test_tables/1.json
  def show
  end

  # GET /test_tables/new
  def new
    @test_table = TestTable.new
  end

  # GET /test_tables/1/edit
  def edit
  end

  # POST /test_tables
  # POST /test_tables.json
  def create
    @test_table = TestTable.new(test_table_params)

    respond_to do |format|
      if @test_table.save
        format.html { redirect_to @test_table, notice: 'Test table was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_table }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_tables/1
  # PATCH/PUT /test_tables/1.json
  def update
    respond_to do |format|
      if @test_table.update(test_table_params)
        format.html { redirect_to @test_table, notice: 'Test table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_tables/1
  # DELETE /test_tables/1.json
  def destroy
    @test_table.destroy
    respond_to do |format|
      format.html { redirect_to test_tables_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_table
      @test_table = TestTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_table_params
      params.require(:test_table).permit(:name)
    end
end

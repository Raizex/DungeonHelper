class FeatAssignmentsController < ApplicationController
  before_action :set_feat_assignment, only: [:show, :edit, :update, :destroy]

  # GET /feat_assignments
  # GET /feat_assignments.json
  def index
    @feat_assignments = FeatAssignment.all
  end

  # GET /feat_assignments/1
  # GET /feat_assignments/1.json
  def show
  end

  # GET /feat_assignments/new
  def new
    @feat_assignment = FeatAssignment.new
  end

  # GET /feat_assignments/1/edit
  def edit
  end

  # POST /feat_assignments
  # POST /feat_assignments.json
  def create
    @feat_assignment = FeatAssignment.new(feat_assignment_params)

    respond_to do |format|
      if @feat_assignment.save
        format.html { redirect_to @feat_assignment, notice: 'Feat assignment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @feat_assignment }
      else
        format.html { render action: 'new' }
        format.json { render json: @feat_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feat_assignments/1
  # PATCH/PUT /feat_assignments/1.json
  def update
    respond_to do |format|
      if @feat_assignment.update(feat_assignment_params)
        format.html { redirect_to @feat_assignment, notice: 'Feat assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @feat_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feat_assignments/1
  # DELETE /feat_assignments/1.json
  def destroy
    @feat_assignment.destroy
    respond_to do |format|
      format.html { redirect_to feat_assignments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feat_assignment
      @feat_assignment = FeatAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feat_assignment_params
      params.require(:feat_assignment).permit(:character_id, :feat_id)
    end
end

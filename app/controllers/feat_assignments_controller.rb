class FeatAssignmentsController < ApplicationController
  before_action :set_feat_assignment, only: [:show, :edit, :update, :destroy]
  before_action :set_character

  # GET /feat_assignments
  # GET /feat_assignments.json
  def index
    @feat_assignments = @character.feat_assignments
  end

  # GET /feat_assignments/1
  # GET /feat_assignments/1.json
  def show
  end

  # GET /feat_assignments/new
  def new
    @feat_assignment = @character.feat_assignments.build
  end

  # GET /feat_assignments/1/edit
  def edit
  end

  # POST /feat_assignments
  # POST /feat_assignments.json
  def create
    @feat_assignment = @character.feat_assignments.build (feat_assignment_params)

    respond_to do |format|
      if @feat_assignment.save
        format.html {
          if (@character.feat_assignments.size < 2)
            redirect_to new_character_feat_assignment_path(@character), notice: 'Feat assignment was successfully created.' 
          else
            redirect_to @character, notice: 'All Feat assignments were successfully created.'
          end
        }
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
        format.html { redirect_to character_feat_assignments_path(@character), notice: 'Feat assignment was successfully updated.' }
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
      format.html { redirect_to character_feat_assignments_path(@character) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feat_assignment
      @feat_assignment = FeatAssignment.find(params[:id])
    end

    def set_character
      @character = Character.find(params[:character_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feat_assignment_params
      params.require(:feat_assignment).permit(:character_id, :feat_id)
    end
end

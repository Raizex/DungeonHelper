class AttributeListsController < ApplicationController
  before_action :set_attribute_list, only: [:show, :edit, :update, :destroy]

  # GET /attribute_lists
  # GET /attribute_lists.json
  def index
    @attribute_lists = AttributeList.all
  end

  # GET /attribute_lists/1
  # GET /attribute_lists/1.json
  def show
  end

  # GET /attribute_lists/new
  def new
    @attribute_list = AttributeList.new
  end

  # GET /attribute_lists/1/edit
  def edit
  end

  # POST /attribute_lists
  # POST /attribute_lists.json
  def create
    @attribute_list = AttributeList.new(attribute_list_params)

    respond_to do |format|
      if @attribute_list.save
        format.html { redirect_to @attribute_list, notice: 'Attribute list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attribute_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @attribute_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_lists/1
  # PATCH/PUT /attribute_lists/1.json
  def update
    respond_to do |format|
      if @attribute_list.update(attribute_list_params)
        format.html { redirect_to @attribute_list, notice: 'Attribute list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attribute_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_lists/1
  # DELETE /attribute_lists/1.json
  def destroy
    @attribute_list.destroy
    respond_to do |format|
      format.html { redirect_to attribute_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_list
      @attribute_list = AttributeList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_list_params
      params[:attribute_list]
    end
end

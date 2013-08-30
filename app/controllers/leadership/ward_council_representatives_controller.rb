class Leadership::WardCouncilRepresentativesController < ApplicationController
  # GET /leadership/ward_council_representatives
  # GET /leadership/ward_council_representatives.json
  def index
    @leadership_ward_council_representatives = Leadership::WardCouncilRepresentative.where{new_and_returning_member_progress_id == my{params[:new_and_returning_member_progress_id]}}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leadership_ward_council_representatives }
    end
  end

  # GET /leadership/ward_council_representatives/1
  # GET /leadership/ward_council_representatives/1.json
  def show
    @leadership_ward_council_representative = Leadership::WardCouncilRepresentative.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leadership_ward_council_representative }
    end
  end

  # GET /leadership/ward_council_representatives/new
  # GET /leadership/ward_council_representatives/new.json
  def new
    @leadership_ward_council_representative = Leadership::WardCouncilRepresentative.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leadership_ward_council_representative }
    end
  end

  # GET /leadership/ward_council_representatives/1/edit
  def edit
    @leadership_ward_council_representative = Leadership::WardCouncilRepresentative.find(params[:id])
  end

  # POST /leadership/ward_council_representatives
  # POST /leadership/ward_council_representatives.json
  def create
    @leadership_ward_council_representative = Leadership::WardCouncilRepresentative.new(params[:leadership_ward_council_representative])

    respond_to do |format|
      if @leadership_ward_council_representative.save
        format.html { redirect_to @leadership_ward_council_representative, notice: 'Ward council representative was successfully created.' }
        format.json { render json: @leadership_ward_council_representative, status: :created, location: @leadership_ward_council_representative }
      else
        format.html { render action: "new" }
        format.json { render json: @leadership_ward_council_representative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leadership/ward_council_representatives/1
  # PUT /leadership/ward_council_representatives/1.json
  def update
    @leadership_ward_council_representative = Leadership::WardCouncilRepresentative.find(params[:id])

    respond_to do |format|
      if @leadership_ward_council_representative.update_attributes(params[:leadership_ward_council_representative])
        format.html { redirect_to @leadership_ward_council_representative, notice: 'Ward council representative was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leadership_ward_council_representative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leadership/ward_council_representatives/1
  # DELETE /leadership/ward_council_representatives/1.json
  def destroy
    @leadership_ward_council_representative = Leadership::WardCouncilRepresentative.find(params[:id])
    @leadership_ward_council_representative.destroy

    respond_to do |format|
      format.html { redirect_to leadership_ward_council_representatives_url }
      format.json { head :no_content }
    end
  end
end

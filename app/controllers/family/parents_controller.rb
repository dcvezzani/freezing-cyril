class Family::ParentsController < ApplicationController
  # GET /family/parents
  # GET /family/parents.json
  def index
    @family_parents = Family::Parent.where{new_and_returning_member_progress_id == my{params[:new_and_returning_member_progress_id]}}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_parents }
    end
  end

  # GET /family/parents/1
  # GET /family/parents/1.json
  def show
    @family_parent = Family::Parent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_parent }
    end
  end

  # GET /family/parents/new
  # GET /family/parents/new.json
  def new
    @family_parent = Family::Parent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_parent }
    end
  end

  # GET /family/parents/1/edit
  def edit
    @family_parent = Family::Parent.find(params[:id])
  end

  # POST /family/parents
  # POST /family/parents.json
  def create
    @family_parent = Family::Parent.new(params[:family_parent])

    respond_to do |format|
      if @family_parent.save
        format.html { redirect_to @family_parent, notice: 'Parent was successfully created.' }
        format.json { render json: @family_parent, status: :created, location: @family_parent }
      else
        format.html { render action: "new" }
        format.json { render json: @family_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family/parents/1
  # PUT /family/parents/1.json
  def update
    @family_parent = Family::Parent.find(params[:id])

    respond_to do |format|
      if @family_parent.update_attributes(params[:family_parent])
        format.html { redirect_to @family_parent, notice: 'Parent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family/parents/1
  # DELETE /family/parents/1.json
  def destroy
    @family_parent = Family::Parent.find(params[:id])
    @family_parent.destroy

    respond_to do |format|
      format.html { redirect_to family_parents_url }
      format.json { head :no_content }
    end
  end
end

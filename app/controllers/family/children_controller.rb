class Family::ChildrenController < ApplicationController
  # GET /family/children
  # GET /family/children.json
  def index
    @family_children = Family::Child.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_children }
    end
  end

  # GET /family/children/1
  # GET /family/children/1.json
  def show
    @family_child = Family::Child.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_child }
    end
  end

  # GET /family/children/new
  # GET /family/children/new.json
  def new
    @family_child = Family::Child.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_child }
    end
  end

  # GET /family/children/1/edit
  def edit
    @family_child = Family::Child.find(params[:id])
  end

  # POST /family/children
  # POST /family/children.json
  def create
    @family_child = Family::Child.new(params[:family_child])

    respond_to do |format|
      if @family_child.save
        format.html { redirect_to @family_child, notice: 'Child was successfully created.' }
        format.json { render json: @family_child, status: :created, location: @family_child }
      else
        format.html { render action: "new" }
        format.json { render json: @family_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family/children/1
  # PUT /family/children/1.json
  def update
    @family_child = Family::Child.find(params[:id])

    respond_to do |format|
      if @family_child.update_attributes(params[:family_child])
        format.html { redirect_to @family_child, notice: 'Child was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family/children/1
  # DELETE /family/children/1.json
  def destroy
    @family_child = Family::Child.find(params[:id])
    @family_child.destroy

    respond_to do |format|
      format.html { redirect_to family_children_url }
      format.json { head :no_content }
    end
  end
end

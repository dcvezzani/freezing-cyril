class Leadership::VisitingTeachersController < ApplicationController
  # GET /leadership/visiting_teachers
  # GET /leadership/visiting_teachers.json
  def index
    @leadership_visiting_teachers = Leadership::VisitingTeacher.where{new_and_returning_member_progress_id == my{params[:new_and_returning_member_progress_id]}}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leadership_visiting_teachers }
    end
  end

  # GET /leadership/visiting_teachers/1
  # GET /leadership/visiting_teachers/1.json
  def show
    @leadership_visiting_teacher = Leadership::VisitingTeacher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leadership_visiting_teacher }
    end
  end

  # GET /leadership/visiting_teachers/new
  # GET /leadership/visiting_teachers/new.json
  def new
    @leadership_visiting_teacher = Leadership::VisitingTeacher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leadership_visiting_teacher }
    end
  end

  # GET /leadership/visiting_teachers/1/edit
  def edit
    @leadership_visiting_teacher = Leadership::VisitingTeacher.find(params[:id])
  end

  # POST /leadership/visiting_teachers
  # POST /leadership/visiting_teachers.json
  def create
    @leadership_visiting_teacher = Leadership::VisitingTeacher.new(params[:leadership_visiting_teacher])

    respond_to do |format|
      if @leadership_visiting_teacher.save
        format.html { redirect_to @leadership_visiting_teacher, notice: 'Visiting teacher was successfully created.' }
        format.json { render json: @leadership_visiting_teacher, status: :created, location: @leadership_visiting_teacher }
      else
        format.html { render action: "new" }
        format.json { render json: @leadership_visiting_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leadership/visiting_teachers/1
  # PUT /leadership/visiting_teachers/1.json
  def update
    @leadership_visiting_teacher = Leadership::VisitingTeacher.find(params[:id])

    respond_to do |format|
      if @leadership_visiting_teacher.update_attributes(params[:leadership_visiting_teacher])
        format.html { redirect_to @leadership_visiting_teacher, notice: 'Visiting teacher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leadership_visiting_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leadership/visiting_teachers/1
  # DELETE /leadership/visiting_teachers/1.json
  def destroy
    @leadership_visiting_teacher = Leadership::VisitingTeacher.find(params[:id])
    @leadership_visiting_teacher.destroy

    respond_to do |format|
      format.html { redirect_to leadership_visiting_teachers_url }
      format.json { head :no_content }
    end
  end
end

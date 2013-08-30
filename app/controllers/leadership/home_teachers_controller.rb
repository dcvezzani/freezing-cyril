class Leadership::HomeTeachersController < ApplicationController
  # GET /leadership/home_teachers
  # GET /leadership/home_teachers.json
  def index
    @leadership_home_teachers = Leadership::HomeTeacher.where{new_and_returning_member_progress_id == my{params[:new_and_returning_member_progress_id]}}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leadership_home_teachers }
    end
  end

  # GET /leadership/home_teachers/1
  # GET /leadership/home_teachers/1.json
  def show
    @leadership_home_teacher = Leadership::HomeTeacher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leadership_home_teacher }
    end
  end

  # GET /leadership/home_teachers/new
  # GET /leadership/home_teachers/new.json
  def new
    @leadership_home_teacher = Leadership::HomeTeacher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leadership_home_teacher }
    end
  end

  # GET /leadership/home_teachers/1/edit
  def edit
    @leadership_home_teacher = Leadership::HomeTeacher.find(params[:id])
  end

  # POST /leadership/home_teachers
  # POST /leadership/home_teachers.json
  def create
    @leadership_home_teacher = Leadership::HomeTeacher.new(params[:leadership_home_teacher])

    respond_to do |format|
      if @leadership_home_teacher.save
        format.html { redirect_to @leadership_home_teacher, notice: 'Home teacher was successfully created.' }
        format.json { render json: @leadership_home_teacher, status: :created, location: @leadership_home_teacher }
      else
        format.html { render action: "new" }
        format.json { render json: @leadership_home_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leadership/home_teachers/1
  # PUT /leadership/home_teachers/1.json
  def update
    @leadership_home_teacher = Leadership::HomeTeacher.find(params[:id])

    respond_to do |format|
      if @leadership_home_teacher.update_attributes(params[:leadership_home_teacher])
        format.html { redirect_to @leadership_home_teacher, notice: 'Home teacher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leadership_home_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leadership/home_teachers/1
  # DELETE /leadership/home_teachers/1.json
  def destroy
    @leadership_home_teacher = Leadership::HomeTeacher.find(params[:id])
    @leadership_home_teacher.destroy

    respond_to do |format|
      format.html { redirect_to leadership_home_teachers_url }
      format.json { head :no_content }
    end
  end
end

class NewAndReturningMemberProgressesController < ApplicationController
  # GET /new_and_returning_member_progresses
  # GET /new_and_returning_member_progresses.json
  def index
    @new_and_returning_member_progresses = NewAndReturningMemberProgress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_and_returning_member_progresses }
    end
  end

  # GET /new_and_returning_member_progresses/1
  # GET /new_and_returning_member_progresses/1.json
  def show
    @new_and_returning_member_progress = NewAndReturningMemberProgress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_and_returning_member_progress }
    end
  end

  def print_form
    @new_and_returning_member_progress = NewAndReturningMemberProgress.find(params[:id])
    @record = @new_and_returning_member_progress
    respond_to do |format|
      format.pdf { render :layout => false }
    end
  end


  # GET /new_and_returning_member_progresses/new
  # GET /new_and_returning_member_progresses/new.json
  def new
    @new_and_returning_member_progress = NewAndReturningMemberProgress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_and_returning_member_progress }
    end
  end

  # GET /new_and_returning_member_progresses/1/edit
  def edit
    @new_and_returning_member_progress = NewAndReturningMemberProgress.find(params[:id])
  end

  # POST /new_and_returning_member_progresses
  # POST /new_and_returning_member_progresses.json
  def create
    @new_and_returning_member_progress = NewAndReturningMemberProgress.new(params[:new_and_returning_member_progress])

    respond_to do |format|
      if @new_and_returning_member_progress.save
        format.html { redirect_to @new_and_returning_member_progress, notice: 'New and returning member progress was successfully created.' }
        format.json { render json: @new_and_returning_member_progress, status: :created, location: @new_and_returning_member_progress }
      else
        format.html { render action: "new" }
        format.json { render json: @new_and_returning_member_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_and_returning_member_progresses/1
  # PUT /new_and_returning_member_progresses/1.json
  def update
    @new_and_returning_member_progress = NewAndReturningMemberProgress.find(params[:id])

    respond_to do |format|
      if @new_and_returning_member_progress.update_attributes(params[:new_and_returning_member_progress])
        format.html { redirect_to @new_and_returning_member_progress, notice: 'New and returning member progress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_and_returning_member_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_and_returning_member_progresses/1
  # DELETE /new_and_returning_member_progresses/1.json
  def destroy
    @new_and_returning_member_progress = NewAndReturningMemberProgress.find(params[:id])
    @new_and_returning_member_progress.destroy

    respond_to do |format|
      format.html { redirect_to new_and_returning_member_progresses_url }
      format.json { head :no_content }
    end
  end
end

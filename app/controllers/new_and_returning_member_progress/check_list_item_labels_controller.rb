class NewAndReturningMemberProgress::CheckListItemLabelsController < ApplicationController
  # GET /new_and_returning_member_progress/check_list_item_labels
  # GET /new_and_returning_member_progress/check_list_item_labels.json
  def index
    @new_and_returning_member_progress_check_list_item_labels = NewAndReturningMemberProgress::CheckListItemLabel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_and_returning_member_progress_check_list_item_labels }
    end
  end

  # GET /new_and_returning_member_progress/check_list_item_labels/1
  # GET /new_and_returning_member_progress/check_list_item_labels/1.json
  def show
    @new_and_returning_member_progress_check_list_item_label = NewAndReturningMemberProgress::CheckListItemLabel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_and_returning_member_progress_check_list_item_label }
    end
  end

  # GET /new_and_returning_member_progress/check_list_item_labels/new
  # GET /new_and_returning_member_progress/check_list_item_labels/new.json
  def new
    @new_and_returning_member_progress_check_list_item_label = NewAndReturningMemberProgress::CheckListItemLabel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_and_returning_member_progress_check_list_item_label }
    end
  end

  # GET /new_and_returning_member_progress/check_list_item_labels/1/edit
  def edit
    @new_and_returning_member_progress_check_list_item_label = NewAndReturningMemberProgress::CheckListItemLabel.find(params[:id])
  end

  # POST /new_and_returning_member_progress/check_list_item_labels
  # POST /new_and_returning_member_progress/check_list_item_labels.json
  def create
    @new_and_returning_member_progress_check_list_item_label = NewAndReturningMemberProgress::CheckListItemLabel.new(params[:new_and_returning_member_progress_check_list_item_label])

    respond_to do |format|
      if @new_and_returning_member_progress_check_list_item_label.save
        format.html { redirect_to @new_and_returning_member_progress_check_list_item_label, notice: 'Check list item label was successfully created.' }
        format.json { render json: @new_and_returning_member_progress_check_list_item_label, status: :created, location: @new_and_returning_member_progress_check_list_item_label }
      else
        format.html { render action: "new" }
        format.json { render json: @new_and_returning_member_progress_check_list_item_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_and_returning_member_progress/check_list_item_labels/1
  # PUT /new_and_returning_member_progress/check_list_item_labels/1.json
  def update
    @new_and_returning_member_progress_check_list_item_label = NewAndReturningMemberProgress::CheckListItemLabel.find(params[:id])

    respond_to do |format|
      if @new_and_returning_member_progress_check_list_item_label.update_attributes(params[:new_and_returning_member_progress_check_list_item_label])
        format.html { redirect_to @new_and_returning_member_progress_check_list_item_label, notice: 'Check list item label was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_and_returning_member_progress_check_list_item_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_and_returning_member_progress/check_list_item_labels/1
  # DELETE /new_and_returning_member_progress/check_list_item_labels/1.json
  def destroy
    @new_and_returning_member_progress_check_list_item_label = NewAndReturningMemberProgress::CheckListItemLabel.find(params[:id])
    @new_and_returning_member_progress_check_list_item_label.destroy

    respond_to do |format|
      format.html { redirect_to new_and_returning_member_progress_check_list_item_labels_url }
      format.json { head :no_content }
    end
  end
end

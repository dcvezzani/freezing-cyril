class NewAndReturningMemberProgress::CheckListItemsController < ApplicationController
  # GET /new_and_returning_member_progress/check_list_items
  # GET /new_and_returning_member_progress/check_list_items.json
  def index
    @new_and_returning_member_progress_check_list_items = NewAndReturningMemberProgress::CheckListItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_and_returning_member_progress_check_list_items }
    end
  end

  # GET /new_and_returning_member_progress/check_list_items/1
  # GET /new_and_returning_member_progress/check_list_items/1.json
  def show
    @new_and_returning_member_progress_check_list_item = NewAndReturningMemberProgress::CheckListItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_and_returning_member_progress_check_list_item }
    end
  end

  # GET /new_and_returning_member_progress/check_list_items/new
  # GET /new_and_returning_member_progress/check_list_items/new.json
  def new
    @new_and_returning_member_progress_check_list_item = NewAndReturningMemberProgress::CheckListItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_and_returning_member_progress_check_list_item }
    end
  end

  # GET /new_and_returning_member_progress/check_list_items/1/edit
  def edit
    @new_and_returning_member_progress_check_list_item = NewAndReturningMemberProgress::CheckListItem.find(params[:id])
  end

  # POST /new_and_returning_member_progress/check_list_items
  # POST /new_and_returning_member_progress/check_list_items.json
  def create
    @new_and_returning_member_progress_check_list_item = NewAndReturningMemberProgress::CheckListItem.new(params[:new_and_returning_member_progress_check_list_item])

    respond_to do |format|
      if @new_and_returning_member_progress_check_list_item.save
        format.html { redirect_to @new_and_returning_member_progress_check_list_item, notice: 'Check list item was successfully created.' }
        format.json { render json: @new_and_returning_member_progress_check_list_item, status: :created, location: @new_and_returning_member_progress_check_list_item }
      else
        format.html { render action: "new" }
        format.json { render json: @new_and_returning_member_progress_check_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_and_returning_member_progress/check_list_items/1
  # PUT /new_and_returning_member_progress/check_list_items/1.json
  def update
    @new_and_returning_member_progress_check_list_item = NewAndReturningMemberProgress::CheckListItem.find(params[:id])

    respond_to do |format|
      if @new_and_returning_member_progress_check_list_item.update_attributes(params[:new_and_returning_member_progress_check_list_item])
        format.html { redirect_to @new_and_returning_member_progress_check_list_item, notice: 'Check list item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_and_returning_member_progress_check_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_and_returning_member_progress/check_list_items/1
  # DELETE /new_and_returning_member_progress/check_list_items/1.json
  def destroy
    @new_and_returning_member_progress_check_list_item = NewAndReturningMemberProgress::CheckListItem.find(params[:id])
    @new_and_returning_member_progress_check_list_item.destroy

    respond_to do |format|
      format.html { redirect_to new_and_returning_member_progress_check_list_items_url }
      format.json { head :no_content }
    end
  end
end

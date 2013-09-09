class AjaxableController < ApplicationController
  before_filter :check_layout
  before_filter :load_model
  before_filter :load_models, except: [:show, :new, :edit, :create]

  # GET /family/parents
  # GET /family/parents.json
  def index
    respond_to do |format|
      format.html { render layout: @use_layout }
      format.json { render json: @models }
    end
  end

  # GET /family/parents/1
  # GET /family/parents/1.json
  def show
    respond_to do |format|
      format.html { render layout: @use_layout }
      format.json { render json: @model }
    end
  end

  # GET /family/parents/new
  # GET /family/parents/new.json
  def new
    respond_to do |format|
      format.html { render layout: @use_layout }
      format.json { render json: @model }
    end
  end

  # GET /family/parents/1/edit
  def edit
    respond_to do |format|
      format.html { render layout: @use_layout }
      format.json { render json: @model }
    end
  end

  # POST /family/parents
  # POST /family/parents.json
  def create
    respond_to do |format|
      if @model.save
        format.html { 
          if(@use_layout)
            redirect_to @model, notice: "#{@model.class.name} was successfully created."
          else
            load_models
            render action: :index, layout: @use_layout
          end
        }
        format.json { render json: @model, status: :created, location: @model }
      else
        format.html { render action: "new" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family/parents/1
  # PUT /family/parents/1.json
  def update
    respond_to do |format|
      if @model.update_attributes(params[model_id_parameter])
        format.html { 
          if(@use_layout)
            redirect_to @model, notice: "#{@model.class.name} was successfully updated."
          else
            render layout: @use_layout
          end
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family/parents/1
  # DELETE /family/parents/1.json
  def destroy
    #@model.destroy

    respond_to do |format|
      format.html { 
        if(@use_layout)
          redirect_to collection_url
        else
          load_models
          render action: :index, layout: @use_layout
        end
      }
      format.json { head :no_content }
    end
  end

  def load_models
    # guess the model class associated with the controller
    klass = guess_model_class
    foreign_key_id = "#{klass.reflect_on_all_associations.first.name.to_s}_id"

    puts ">>> found foreign_key_id: #{foreign_key_id}"

    # limit by foreign key
    if(params[foreign_key_id])
      @models = klass.find(:all, conditions: ["#{foreign_key_id} = ?", params[foreign_key_id.to_sym]])

    # get all; (#index?)
    else
      @models = klass.find(:all)
    end

    # set model instance variable associated with controller
    inst_var_name = params[:controller].gsub(/\//, "_")
    instance_variable_set("@#{inst_var_name}", @models)
  end

  def load_model
    klass = guess_model_class
    if(params[model_id_parameter])
      @model = klass.new(params[model_id_parameter])
    elsif(params[:id])
      @model = klass.find(params[:id])
    else
      @model = klass.new
    end

    inst_var_name = params[:controller].gsub(/\//, "_").singularize

    puts ">>> load_model: @#{inst_var_name}"
    instance_variable_set("@#{inst_var_name}", @model)
  end

  def collection_url(model = @model)
    #TODO: need to add '/family/parents' to the url to
    #isolate retrieving just the parents for record
    self.send("#{model.class.name.underscore}_url", model.id)
  end

  def model_id_parameter
    "#{params[:controller].gsub(/\//, "_")}".singularize.to_sym
  end

  def check_layout
    @use_layout = (params[:layout] != "none")
  end

private
  def guess_model_class
    parts = params[:controller].split(/\//)
    parts.map!{|x| 
      parts2 = x.split(/_/)
      parts2.map!(&:capitalize).join("")
    }
    parts[parts.length-1] = parts.last.singularize
    klass = eval(parts.join("::"))
  end
end

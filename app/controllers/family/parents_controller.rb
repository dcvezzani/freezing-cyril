class Family::ParentsController < AjaxableController
  def collection_url(model = @model)
    super(model.new_and_returning_member_progress)
  end
end

=begin
@model.class.reflect_on_all_associations
@model.class.reflect_on_all_associations.first.active_record
@model.class.reflect_on_all_associations.first
@model.class.reflect_on_all_associations.first.name

@model.class.reflect_on_all_associations.first.active_record.columns

=end

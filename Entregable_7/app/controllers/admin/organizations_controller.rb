def edit_multiple
  @organizations = Organization.title_sorted
end

def update_multiple
  authorize! :update, Organization
  @funciono = Organization.update(params[:organizations].keys, params[:organizations].values)
  #render :nothing
  #redirect_to edit_multiple_admin_organizations_path, notice: 'Cambios guardados'
end
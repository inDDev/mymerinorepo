ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :title, :description, :url

	index do
		column :id
		column :title, :sortable => :title
		column :description
		column :url
	end
	form do |f|
		f.inputs "Details" do
			f.input :title, :label => "Title of the Event"
			f.input :description, :label => "Enter upto 500 characters"
			f.input :url, :label => "Enter the URL of the image"
			f.actions
		end
	end
end

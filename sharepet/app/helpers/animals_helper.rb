module AnimalsHelper

	def resolve_boolean_parameter resource, attribute, options = {}
	  default = options.delete(:default)
	  return default unless params[:utf8]

	  return params[resource][attribute] == "true"
	end

end

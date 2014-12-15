AutoForm.addInputType 'tags',
	template: 'autoformTags'
	valueOut: ->
		@val()

Template.autoformTags.helpers
	schemaKey: ->
		@atts['data-schema-key']
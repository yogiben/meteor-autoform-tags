AutoForm.addInputType 'tags',
	template: 'autoformTags'
	valueOut: ->
		@val()
	valueConverters:
		stringArray: (value) ->
			value.split ','

Template.autoformTags.hooks
	rendered: ->
		self = @$ '.js-input'

		self.closest('form').on 'reset', ->
			self.tagsinput 'removeAll'

Template.autoformTags.helpers
	schemaKey: ->
		@atts['data-schema-key']
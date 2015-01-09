AutoForm.addInputType 'tags',
	template: 'autoformTags'
	valueOut: ->
		@val()
	valueConverters:
		stringArray: (value) ->
			value.split ','

Template.autoformTags.rendered = ->
	self = @$ '.js-input'

	self.closest('form').on 'reset', ->
		self.tagsinput 'removeAll'

	self.tagsinput @data.atts

Template.autoformTags.helpers
	schemaKey: ->
		@atts['data-schema-key']
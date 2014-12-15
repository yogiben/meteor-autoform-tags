Autoform tags
============

Tags input for autoForm and bootstrap with [bootstrap-tagsinput](http://timschlechter.github.io/bootstrap-tagsinput/examples/). 

###Setup###
1) Install `meteor add yogiben:autoform-tags`

2) Define your schema and set the `autoform` property like in the example below
```
Schemas = {}

@Entries = new Meteor.Collection('entries');

Schemas.Entries = new SimpleSchema
	title:
		type:String
		max: 60
		
	tags:
		type: String
		autoform:
			afFieldInput:
				type: 'tags-toggle'

Entries.attachSchema(Schemas.Entries)
```

3) Generate the form with `{{> quickform}}` or `{{#autoform}}`

e.g.
```
{{> quickForm collection="Entries" type="insert"}}
```

or

```
{{#autoForm collection="Entries" type="insert"}}
    {{> afQuickField name="title"}}
    {{> afQuickField name="tags"}}
    <button type="submit" class="btn btn-primary">Insert</button>
{{/autoForm}}
```

Tags will be comma separated string.

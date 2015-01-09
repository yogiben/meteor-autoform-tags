Package.describe({
  name: 'yogiben:autoform-tags',
  summary: 'Tags input for aldeed:autoform',
  version: '0.1.0',
  git: 'https://github.com/yogiben/meteor-autoform-tags'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0.1');

  api.use([
  	'templating',
  	'coffeescript',
  	'aldeed:autoform@4.2.1',
    'aldeed:template-extension@3.1.1'
  ], 'client');

  api.addFiles([
  	'lib/client/autoform-tags.html',
    'lib/client/bootstrap-tagsinput.css',
    'lib/client/autoform-tags.css',
    'lib/client/autoform-tags.coffee',
    'lib/client/bootstrap-tagsinput.min.js'
  ], 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('yogiben:autoform-tags');
  api.addFiles('yogiben:autoform-tags-tests.js');
});

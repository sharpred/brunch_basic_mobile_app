exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  paths:
    public: '/Library/Webserver/Documents/FFSbrunch'
    test: 'spec'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
        'test/js/test.js': /^test(\/|\\)(?!vendor)/
        'test/js/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: []
        after: ['vendor/scripts/jquery-1.8.2.min.js','vendor/scripts/modernizr-2.6.1.min.js']

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
        'test/css/test.css': /^test/
      order:
        before: ['vendor/styles/normalize.min.css','vendor/styles/main.css']
        after: []

    templates:
      defaultExtension: 'hbs'
      joinTo: 'js/templates.js'

  minify: yes

# quill-rails
Rails 3/4 asset pipeline loading for [Quill](http://quilljs.com/)

# Installation

This gem adds Quill to your Rails 3/4 asset pipeline.

Add the following lines to your applications Gemfile:

gem 'quill-rails', '~> 0.0.1'
Then run bundle install to update your application's bundle.

Add Quill to your manifest in app/assets/javascripts/application.js:

```
//= require quill
```

You can make the original Quill Snow theme available by adding the following to your manifest in app/assets/stylesheets/application.css:

```
/*
 *= require quill.snow
*/
```

# Usage

Refer to the [Quill Documentation](http://quilljs.com/docs/editor/) to use. This gem aims to add easier integration (see Roadmap)

# Roadmap

The following features would be nice to have:

- Make a view helper to automatically create the ['Full Example' demo seen here](http://quilljs.com/examples/#full-example)

# quill-rails
This gem provides Rails 3/4 asset pipeline loading for [Quill](http://quilljs.com/), as well as a very convienient helper method to quickly and easily get a nice looking rich text editor.

# Installation

Add the following lines to your applications Gemfile:

gem 'quill-rails', '~> 0.1.0'
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

This gem provides a View Helper to automatically create the ['Full Example' demo seen here](http://quilljs.com/examples/#full-example). Just add the following to your view:

```
<%= quill_editor %>
```

and a sexy looking Quill editor will be there!

Because this includes Quill assets, you can also refer to the [Quill Documentation](http://quilljs.com/docs/editor/) to use other, more custom, features.

# Roadmap

The following features would be nice to have:

- Configuring the default quill_editor e.g. pass in content, change wrapper id, etc.
- Add and sync a hidden tag field so the text can be submitted in forms
- Parse any RTE input for malicious tags

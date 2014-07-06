# quill-rails
This gem provides Rails 3/4 asset pipeline loading for [Quill](http://quilljs.com/), as well as a very convienient helper method to quickly and easily get a nice looking rich text editor.

# Installation

Add the following lines to your applications Gemfile:

```
gem 'quill-rails', '~> 0.1.0'
```

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

## Quick Start

This gem provides a View Helper to automatically create the ['Full Example' demo seen here](http://quilljs.com/examples/#full-example). Just add the following to your view:

```
<%= quill_editor %>
```

and a sexy looking Quill editor will be there!

## Useage in Forms

YO! - This is in development and is may change as more functionality is added.

For use in forms, the quill_editor helper creates a hidden field tag whose value is in sync with the text in the editor. By default, it has an id and name of 'quill-value'.

To change both the id or name, just pass a string as the first argument:

```
<%= quill_editor 'my-name-and-id' %>
```

To have an id that's different from the name:

```
<%= quill_editor nil, { name: 'my-name', id: 'my-id' } %>
```

To have an initial value in the editor:

```
<%= quill_editor nil, { name: 'my-name', value: 'Awesome!' } %>
```

## Custom Functionality

Because this includes Quill assets, you can also refer to the [Quill Documentation](http://quilljs.com/docs/editor/) to use other, more custom, features.

# Changelog

### 0.1.4
* Added 'value' option for the helper function (thanks nerdyglasses!)
* Updated from Quill 0.13 to 0.15

# Roadmap

The following features would be nice to have:

- Configuring the default quill_editor e.g. change wrapper, change theme, etc.
- Have a form helper tag (f.quill_editor)
- Parse any RTE input for malicious tags

# Contributing

Contributors are very welcome! Fork it, branch it, change it, push it, pull request it, and [bop it](https://www.youtube.com/watch?v=fH4XHwefPVY). 

If you have an idea for new features or improving existing features, let me know!

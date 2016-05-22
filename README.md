# Rails140

``` bash
rackup -r action_controller/railtie \
  -b "run Class.new(Rails::Application){config.secret_key_base=?x}.initialize!"
```

Deconstructing a brand-new, shiny Rails 5 app down to its absolute minimum size
commit-by-commit, with explanations along the way.

On every commit, the server can be run and will respond.

This repo is inspired by Nate Berkopec's RailsConf 2016 talk:
[Make a Rails App with 140 Characters (or less)](http://confreaks.tv/videos/railsconf2016-make-a-rails-app-with-140-characters-or-less)

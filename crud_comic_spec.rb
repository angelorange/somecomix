...FF......**

Pending: (Failures listed here are expected and do not affect your suite's status)

  1) Model add some examples to (or delete) /fonte/spec/models/model_spec.rb
     # Not yet implemented
     # ./spec/models/model_spec.rb:4

  2) User add some examples to (or delete) /fonte/spec/models/user_spec.rb
     # Not yet implemented
     # ./spec/models/user_spec.rb:4

Failures:

  1) CRUD of comics #edit and #update successfully
     Failure/Error: click_on 'Edit'

     Capybara::Ambiguous:
       Ambiguous match, found 2 elements matching visible link or button "Edit"
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/finders.rb:295:in `block in synced_resolve'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/finders.rb:287:in `synced_resolve'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/finders.rb:52:in `find'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/actions.rb:26:in `click_link_or_button'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/session.rb:749:in `block (2 levels) in <class:Session>'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/features/crud_comic_spec.rb:52:in `block (2 levels) in <top (required)>'

  2) CRUD of comics #delete successfully
     Failure/Error: click_on 'Delete'

     Capybara::Ambiguous:
       Ambiguous match, found 2 elements matching visible link or button "Delete"
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/finders.rb:295:in `block in synced_resolve'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/finders.rb:287:in `synced_resolve'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/finders.rb:52:in `find'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/node/actions.rb:26:in `click_link_or_button'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/session.rb:749:in `block (2 levels) in <class:Session>'
     # /usr/local/bundle/gems/capybara-3.29.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/features/crud_comic_spec.rb:69:in `block (2 levels) in <top (required)>'

Finished in 1.1 seconds (files took 1.21 seconds to load)
13 examples, 2 failures, 2 pending

Failed examples:

rspec ./spec/features/crud_comic_spec.rb:44 # CRUD of comics #edit and #update successfully
rspec ./spec/features/crud_comic_spec.rb:61 # CRUD of comics #delete successfully


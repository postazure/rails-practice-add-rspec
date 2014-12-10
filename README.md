# Setup

* Clone this repo into workspace
* cd into this repo
* `bundle`
* `rake db:create db:migrate db:seed`
* `rails s -p 3012`
* Open http://localhost:3012

## Find the bug!

Once you've added RSpec and capybara, spec the entire crud flow, and find and fix the bug.



```  
Failures:

  1) Delete User can delete an event
  Failure/Error: click_on "delete"
  ActiveRecord::RecordNotFound:
  Couldn't find Event without an ID
  # ./app/controllers/events_controller.rb:46:in destroy
  # ./spec/delete_spec.rb:8:in block (2 levels) in <top (required)>

```
Bug is in line 46 of `events_controller` misspelling => [:iid]

```
Failures:

  1) Delete User can delete an event
  Failure/Error: click_on "delete"
  NameError:
  undefined local variable or method `event_params' for #<EventsController:0x007ff8bac7d4a8>
  # ./app/controllers/events_controller.rb:47:in `destroy'
  # ./spec/delete_spec.rb:9:in `block (2 levels) in <top (required)>'
```
Bug on line 47 of `events_controller` extra => (event_params)

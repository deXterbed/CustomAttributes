# README

### Usage:

  In order to define `custom_attributes` for a class let's say `Customer`, we can include the `HasCustomAttributes` module into it and call `custom_attrs` and pass appropriate custom `attributes` that we would like the class to define:

  ```ruby
  class Customer < ApplicationRecord
    include HasCustomAttributes
    
    custom_attrs :email, :phone, :city
  end
  ```
  
  I haven't written a web UI, but implementation can be verified via `rails console`:

```sh
irb> Customer.create(email: 'abc@test.com', phone: '1234567890', city: 'xyz')
=> #<Customer id: 15, name: nil, phone_number: nil, created_at: "2018-08-07 23:18:41", updated_at: "2018-08-07 23:18:41"> 
irb> Customer.last.phone
=> "1234567890"
irb> Customer.last.city
=> "xyz"
```

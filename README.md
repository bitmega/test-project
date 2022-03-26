
# Tech Stack
+ Authentication: Devise
+ Image storage: ActiveStorage
+ Testing: Rspec + Capybara
+ Admin: ActiveAdmin
+ Database: Postgres

# Image storage
I'm using ActiveStorage for storing images. By default, it uses local files as the storage mechanism.

If we want to use S3, we can easily specify the AWS Key and Secret Key in the `storage.yml`, and then change the configuration accordingly (depending on the environment).

For example, I have configured this for production environment (in `config/environments/production.rb`)

```
config.active_storage.service = :amazon
```

# Admin Dashboard

I'm using ActiveAdmin gem as the AdminDashboard, the username/password of the admin when running the your local can be found in the `seeds.rb` file.

# Testing

I'm using Rspec + Capybara for testing. There are just a few simple tests implemented to demonstrate how it works.

# UI

To keep it simple, I use Bootstrap CDN. We can also manually add bootstrap libraries into the project source code if we want (via webpack)

The UI is pretty basic. I keep it simple just to show you the basic functionality.

# Others

+ I do not implement any validation in this project to keep things simple
+ The root path of Equipment list page is `equipment_index_path` because the plural version of the word `equipment` is also `equipment`
+ I do not implement other actions like Edit, Update to save time and it's not required for this exercise. Obviously it's straightforward to add those actions if needed.
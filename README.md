# Batalert

batalert aka *Battery Alert* is a ruby gem that is written to notify the user about the current battery status so that they never run out of charging.

With this library, the user neither has to worry about leaving the device on charge nor while they are working.

The gem will notify you to **Put-On Charging** when the battery is low and **Remove Charging** when the system is done charging. It points to the battery level in the notification as well.
## Installation

#### Setup for [batalert](https://github.com/utkarsh2102/batalert)

```ruby
# Install the gem via
$ gem install batalert

# Install via apt (it's in the NEW queue)
$ sudo apt install ruby-batalert

```
#### Ways of setting up cron

```bash
# Either do it Manually
$ crontab -e
# add following into the editor
*/15 * * * * </>

# Or, use whenever in the parent directory, it will set up cron automatically to run in every 15 minutes
$ cd batalert
$ whenever --update-crontab
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.  
Then, run `rake` to run the tests.  
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.  
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/utkarsh2102/batalert.  
This project is intended to be a safe and welcoming space for collaboration.

## License
The script is licensed under [MIT](https://github.com/utkarsh2102/batalert/blob/master/LICENSE) section.


##
Copyright © 2020 Utkarsh Gupta

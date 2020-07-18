# batalert

`batalert` (aka *Battery Alert*) is a tool, written in Ruby, to notify the users when their battery is either under-charged (default: < 10%) or over-charged (default: > 90%).  

> notify the users when their battery is either under-charged (default: < 10%) or over-charged (default: > 90%).  

Ever ran out of battery whilst in the middle of work?  
Well, say no more! `batalert` has got you covered!  
Just consider installing it and put it on cron so that you never have to worry about running out of battery in midst of your work! Isn't that...amazing? 🚀  

This is originally intended for [WM](https://en.wikipedia.org/wiki/Window_manager) users who don't get battery notifications by default, but can be used by everyone who sees its worth!

> How does it work?

Batlalert upon being set up, shall notify you when to put your battery on charging and when to unplug it too. Whilst notifying so, it also numerically mentions your battery percentage at that particular moment.

## Setting up `batalert`  

#### Ways of installation:  

- Install the [gem](https://rubygems.org/gems/batalert) from the [rubygems](https://rubygems.org/) archive:  
  `$gem install batalert`  

- Install the [package](https://tracker.debian.org/pkg/batalert) via apt (only for Debian Sid and Bullseye):   
  `$sudo apt install batalert`

- Download the deb and install it manually:  
  The [release page](https://github.com/utkarsh2102/batalert/releases) has a .deb binary which can be downloaded with a single click. Once done, run:  
 `$sudo dpkg -i <path-to-deb>/batalert_<version>_all.deb`

#### Ways of setting it as a cron job:

- Set it up manually:  
  `$ crontab -e`

  And then add a line in the following format at the end:  
  `*/n * * * * /usr/bin/batalert`

  **NOTE**: `n` is the duration of interval (in minutes) after which the binary is executed. So, for instance, if you want to schedule a cron after every 15 minutes (that's what I do), then the line becomes:  
  `*/15 * * * * /usr/bin/batalert`

- Use [whenever](https://www.rubyguides.com/2019/04/ruby-whenever-gem/) to schedule the cron automatically on your behalf:  
(you can install `whenever` via `gem install whenever` or `apt install ruby-whenever`)  
   - Clone this repository:  
     `$ git clone https://github.com/utkarsh2102/batalert.git`  
    - Move to its directory:  
      `$ cd batalert`  
    - Set the value of interval in `config/schedule.rb`.
    - Run `whenever` to schedule the cron:  
      `$ whenever --update-crontab`

## Development

After checking out the repo, run `bin/setup` to install dependencies.  
Then, run `rake` to run the tests.  
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.  
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

As always, bug reports and pull requests are heartily welcomed! 💖  
Batalert project is a safe and welcoming space for collaboration.

## License
`batalert` is available as a Free Software under the the [MIT](https://github.com/utkarsh2102/batalert/blob/master/LICENSE) license.  
Copyright © 2020 Utkarsh Gupta


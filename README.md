# RakeCommand

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'rake_command'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rake_command

## Usage
    RakeCommand.rake('db:migrate')  
    RakeCommand.rake('db:migrate',environment)  
*Default environment is RAILS_ENV

    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# CachedLogger

## Installation

Add this line to your application's Gemfile:

    gem 'cached_logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cached_logger

## Usage

    > logger = CachedLogger::Logger.new(STDOUT)
    > logger.info 'Hello'
    => I, [2012-06-29T12:11:18.848361 #21796]  INFO -- : Hello
    > logger.info 'Good bye'
    => I, [2012-06-29T12:11:25.707681 #21796]  INFO -- : Good bye
    > logger.caches
    => ["Hello", "Good bye"] 
    > logger.caches.clear!
    => [] 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

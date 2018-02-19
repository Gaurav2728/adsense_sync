[![Gem Version](https://badge.fury.io/rb/adsense_sync.svg)](https://badge.fury.io/rb/adsense_sync)
[![Open Source Helpers](https://www.codetriage.com/gaurav2728/adsense_sync/badges/users.svg)](https://www.codetriage.com/gaurav2728/adsense_sync)

# AdsenseSync

It is a helper to create the google adsense sync type tag in rails. Instead of using vanilla javascript for managing google adsense, it would be easier and hassle free to use `adsense_sync_tag` tag to achieve the same.


## Installation

Add below line to your application's Gemfile:

```ruby
gem 'adsense_sync'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adsense_sync

## Usage

In your appliction view, use `adsense_sync_tag` as mentioned below:

`<%= adsense_sync_tag client: 'ca-pub-269126xxxxx', slot: '8490xxxx', width: '300', height: '250' %>`

NOTE: If environment is not production, it'll show dummy image with slot `8490xxxx` number.


Out of all the parameters used by the `adsense_sync_tag`, below are the mandatory parameters which must be present for proper functioning.
```
  client: 'ca-pub-269126xxxxx'
    slot: '8490xxxx'
   width: '300'
  height: '250'
```

It automatically maps required parameter according to google adsence API.
```
  client: 'ca-pub-269126xxxxx'         google_ad_client: 'ca-pub-269126xxxxx'
    slot: '8490xxxx'                     google_ad_slot: '8490xxxx'
   width: '300'                         google_ad_width: '300'
  height: '250'                        google_ad_height: '250'
```

If arguments are valid, it shows image with slot: `890xxxxx` number.

<img src="https://dummyimage.com/120x80/000/fff&text=890xxxxx" />



If arguments are not valid, it shows default `120 x 80` size image.

<img src="https://dummyimage.com/120x80/000/fff&text" />


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gaurav2728/adsense_sync. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

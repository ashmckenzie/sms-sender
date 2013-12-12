# SmsSender

Send SMS's via Twilio, nice and easy.

## Installation

Add this line to your application's Gemfile:

    gem 'sms_sender'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sms_sender

## Config

    $ cat ~/.sms-sender.yml

    ---
    sid: <TWILIO_SID>
    auth_token: <TWILIO_AUTH_TOKEN>
    caller_id: '<TWILIO_PHONE_CALLER_ID>'

## Usage

    $ sms-sender --target '<phone number including international code>' "<message to send>"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

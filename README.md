<p align="center">
<img src="https://app.emailvalidation.io/img/logo/emailvalidation.png" width="300"/>
</p>

# emailvalidation-ruby

emailvalidation-ruby is the official Ruby Wrapper around the [emailvalidation](https://app.emailvalidation.io) API.

## Installation

Add this line to your application's Gemfile:

    gem 'emailvalidation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emailvalidation

## Configuration

You will need your apikey to use emailvalidation, you can get one [https://app.emailvalidation.io/register](https://app.emailvalidation.io/register).

Create an instance and pass your api key like here:

    emailvalidation = emailvalidation::Endpoints.new(:apikey => 'APIKEY')

## Usage & Endpoints

Use the instance to call the endpoints

#### Status
Returns your current quota

    emailvalidation.status()

#### Validate
Checks the provided phone_number and returns all available information.

    emailvalidation.validate(phone_number, country_code = '')

  | Parameter    | Data type | Mandatory | Description |
--------------| --- | ----------- | --- | ----------- |
  | email            | string | yes | The email address you want to check |
  | catch_all | boolean | no | If set to 1 we check if the email domain is a catch-all enabled domain (Only available in higher up plans)|


You can find further information on https://emailvalidation.io/docs/

Bug reports and pull requests are welcome on GitHub at https://github.com/everapihq/emailvalidation-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/everapihq/emailvalidation-ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the numlookupapi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/everapihq/emailvalidation-ruby/blob/master/CODE_OF_CONDUCT.md).

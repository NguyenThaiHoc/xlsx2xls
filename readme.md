# Xlsx2xls
The Xlsx2xls ruby library provides an easy way to convert file.xlsx to file.xls.

## Installation
Install LibreOffice

    $sudo apt-get install libreoffice

Add this line to your application's Gemfile:
```ruby
gem 'xlsx2xls'
```
And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install xlsx2xls

## Usage
```ruby
xls_output_file_name = Xlsx2xls.convert "file_name"
```


# Json2csv

A quick and dirty command for converting json data to csv.

Given a json file containing the following:

[
   {
      "name":"Joe Smith",
      "email":"jsmith@_google.com",
      "status":"Active",
      "gender":"Male"
   },
   {
      "name":"Jenny Jones",
      "email":"jjones@_gmail.com",
      "status":"Active",
      "animals":"yes",
      "gender":"Female"
   },
   {
      "name":"Biff Rogers",
      "email":"brogers@_gmail.com",
      "status":"Active",
      "gender":"Male",
      "occupation":"Landscaper"
   }
]

json2csv will return

name,email,status,gender,animals,occupation  
Joe Smith,jsmith@_google.com,Active,Male,"",""  
Jenny Jones,jjones@_gmail.com,Active,Female,yes,""  
Biff Rogers,brogers@_gmail.com,Active,Male,"",Landscaper  

## Installation

Add this line to your application's Gemfile:

    gem 'json2csv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json2csv

## Usage

json2csv path/to/file.json

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

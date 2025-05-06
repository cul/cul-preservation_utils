# Cul::PreservationUtils

A collection of modules with Utility Methods related to working with Preservation objects.

Incudes:
- **FilePath**: a module for standardizing filepaths for objects used in our Preservation services.

(More modules will be added in the future)

Preservation objects are put in cloud storage, either with Google Cloud or Amazon Web Services. Validation rules for object file paths were imlpemented based on the charactersets allowed in object names in Google Cloud and AWS.

## Installation
```bash
bundle add cul/preservation_utils
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install cul/preservation_utils
```

## Usage

You can access the FilePath module via namespace constants:
```
require 'cul/preservaion_utils'

# Determine if a file path is valid or not (invalid means it contains unsupported characters)

test_file_path = 'top_dir/!a$b%c%/我能.我能'
Cul::PreservationUtils::FilePath.valid_file_path?(test_file_path)
#=> False

# Remediate a file path

remediated_file_path = Cul::PreservationUtils::FilePath.remediate(test_file_path)
puts remediated_file_path #=> 'top_dir/_a_b_c_/Wo_Neng_.Wo_Neng_'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cul/cul-preservation_utils.
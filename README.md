Table of Contents
-----------------

* [Overview](#overview)
* [Installation](#installation)
* [Usage](#usage)
* [Configuration](#configuration)
* [Methods](#methods)
* [Contributing](#contributing)
* [License](#license)

### Overview

Sonic Pass is a Ruby gem designed to generate strong, unique passwords. It provides a simple and efficient way to create passwords of varying lengths, making it an ideal tool for developers and users alike.

### Installation

To install the Sonic Pass gem, run the following command in your terminal:

```bash
gem install sonic_pass
```

Alternatively, you can add the following line to your Gemfile:

```ruby
gem 'sonic_pass'
```

Then, run `bundle install` to install the gem.

### Usage

To use the Sonic Pass gem, simply require it in your Ruby file:

```ruby
require 'sonic_pass'
```

You can then generate a password using the `SonicPass.generate` method:

```ruby
password = SonicPass.generate(length: 12)
puts password
```

This will output a strong password of the specified length.

### Configuration

The Sonic Pass gem can be configured to use different character sets for password generation. The available character sets are:

* `ALPHANUMERIC_CHARSETS`: A combination of uppercase letters, lowercase letters, and digits.
* `SPECIAL_CHARSETS`: A set of special characters.

You can specify the character set to use when generating a password:

```ruby
password = SonicPass.generate(length: 12, charset: SonicPass::ALPHANUMERIC_CHARSETS)
puts password
```

### Methods

The Sonic Pass gem provides the following methods:

* `SonicPass.generate(length: 12, charset: SonicPass::ALPHANUMERIC_CHARSETS)`: Generates a strong password of the specified length using the specified character set.

### Contributing

Contributions to the Sonic Pass gem are welcome. To contribute, please fork the repository and submit a pull request with your changes.

### License

The Sonic Pass gem is released under the MIT License. See the LICENSE file for details.
![Ruby version](https://img.shields.io/badge/ruby-%3E%3D2.4.0-brightgreen?logo=ruby&logoColor=red)
![RubyGem version](https://img.shields.io/gem/v/sonic_pass?color=%25234cc61f&label=Gem%20version&logo=rubygems&logoColor=red&link=https%3A%2F%2Frubygems.org%2Fgems%2Fsonic_pass)
![RubyGem download](https://img.shields.io/gem/dt/sonic_pass?color=%2330c754&label=Downloads&logo=rubygems&logoColor=red&link=https%3A%2F%2Frubygems.org%2Fgems%2Fsonic_pass)
![Rubocop](https://img.shields.io/github/actions/workflow/status/papakvy/sonic_pass/main.yml?branch=master&logo=rubocop&logoColor=red&label=Rubocop%20Lint)
![Test](https://img.shields.io/github/actions/workflow/status/papakvy/sonic_pass/main.yml?branch=master&logo=rubocop&logoColor=red&label=Tests%20%F0%9F%A7%AA)

Table of Contents
-----------------

* [Overview](#overview)
* [Installation](#installation)
* [Usage](#usage)
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
# Default `length = 12`
password = SonicPass.generate # equals `SonicPass.generate(12)`
puts password

# cpzmh3OV\",C7
```

Or you can generate multiple passwords, using `count > 1` params

```ruby
passwords = SonicPass.generate(12, 5)
puts passwords

# ,Y36.9H-XqS;
# vRzCyIq.=$W5
# 1}-'D*'ya$Vg
# %66db&y$rjhU
# x';2I7y$<&5f
```

### How to use CLI command `sonic_pass`

- Put executable path into `PATH` directly

```bash
gem_bin_path=$(gem env | grep "EXECUTABLE DIRECTORY" | awk -F ': ' '{print $2}')
export PATH="$PATH:$gem_bin_path"
```

- Put executable path into `PATH` in the appropriate configuration file

Assume executable path is: `/home/user/.asdf/installs/ruby/3.0.0/bin`

For bash (usually ~/.bashrc or ~/.bash_profile):

```bash
echo 'export PATH="$PATH:/home/user/.asdf/installs/ruby/3.0.0/bin"' >> ~/.bashrc
source ~/.bashrc
```


For zsh (usually ~/.zshrc):

```bash
echo 'export PATH="$PATH:/home/user/.asdf/installs/ruby/3.0.0/bin"' >> ~/.zshrc
source ~/.zshrc
```

Verify the change: After updating your configuration file, you can check if the new path has been added by running:

```bash
echo $PATH
```

Finally, run CLI command:

```bash
$ sonic_pass

# Password: mM>]3ERLlD5L copied to clipboard
```

### Contributing

Contributions to the Sonic Pass gem are welcome. To contribute, please fork the repository and submit a pull request with your changes.

### License

The Sonic Pass gem is released under the MIT License. See the LICENSE file for details.

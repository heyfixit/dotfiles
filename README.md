# Dotfiles

## Prerequisites

```
=============
Install Zplug
=============

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

## Usage

1.  Copy `settings-example.yml` to `settings.yml`
2.  Validate proper path mappings in `settings.yml`
3.  Run `bin/install`
  - Settings files are backed up before being overwritten by default

## Development

To create additional configurations, create one directery per app `appname/configname`.
Add a new path mapping per each config.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/heyfixit/dotfiles.


## Copyright

Copyright (c) 2020 heyfixit. See [MIT License](LICENSE.txt) for further details.

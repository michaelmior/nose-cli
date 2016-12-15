# NoSQL Schema Evaluator (NoSE) CLI

[![Build Status](https://travis-ci.org/michaelmior/nose-cli.svg?branch=master)](https://travis-ci.org/michaelmior/nose-cli)
[![Dependency Status](https://gemnasium.com/michaelmior/nose-cli.svg)](https://gemnasium.com/michaelmior/nose-cli)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/michaelmior/nose-cli/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/michaelmior/nose-cli/?branch=master)
[![Code Coverage](https://scrutinizer-ci.com/g/michaelmior/nose-cli/badges/coverage.png?b=master)](https://scrutinizer-ci.com/g/michaelmior/nose-cli/?branch=master)

## Installation

### Requirements

 * [Ruby](https://www.ruby-lang.org/) 2+
 * [bundler](http://bundler.io/)
 * [Cbc](https://projects.coin-or.org/Cbc) solver (see the [Dockerfile](Dockerfile) for packages on Ubuntu, [Homebrew](https://github.com/coin-or-tools/homebrew-coinor) maybe useful on Mac OS, but has not been tested)

Once dependencies have been installed, clone the repository and install the necessary Ruby gems

    git clone https://github.com/michaelmior/nose-cli.git
    cd nose-cli
    bundle install --without=development mysql

Examples of the workload input format is given in the `workloads/` directory.
These workloads should give you a sense of the input format and can be a starting point for your own workloads.
For example, to run the schema advisor against the workload `rubis`, simply execute the command below

    bundle exec nose search rubis

If you are prompted, accept the default configuration.
Each recommended physical structure is referred to as an "index" and will be the first set of outputs.
These indexes will be followed by a list of plans for each query which makes use of these indexes.
More information on the other commands available can be found with `bundle exec nose help`.
If you have any questions, please [open an issue](https://github.com/michaelmior/NoSE/issues/new) or contact [@michaelmior](https://github.com/michaelmior/).

## Development

Testing has been done with Ruby 2+ but most of the code should also run under the latest [JRuby](http://jruby.org/).
However, under JRuby, any code depending on C extensions or MRI internals should be excluded with `--without=development mysql`.

All source code is documented and more details on the command line tool can be retrieved by running `bundle exec nose help`.
You can view complete documentation by running `bundle exec rake doc` and viewing the output in the `doc/` directory.
Tests are written using [RSpec](http://rspec.info/) and can be executed with `bundle exec rspec`.
If you do not have a copy of the Cbc solver available, you can exclude tests depending on it with `--tag ~solver`.

Some commands require a configuration file in lieu of command line options.
An example configuration file for the different components of NoSE is given in [nose.yml.example](data/nose-cli/nose.yml.example).
Unfortunately, the line between what is configured in the configuration file and command line flags is currently somewhat blurry.

## Acknowledgements

This work was supported by the Natural Sciences and Engineering Research Council of Canada ([NSERC](http://nserc.gc.ca)).

[![NSERC](assets/NSERC-logo.png)](http://nserc.gc.ca)

Hosting of [Coin-OR packages](https://packagecloud.io/michaelmior/coinor/) is generously provided by packagecloud.

[![packagecloud](assets/packagecloud-logo.png)](https://packagecloud.io)

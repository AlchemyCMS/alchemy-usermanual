## On-site user manual for Alchemy CMS

[![Build Status](https://secure.travis-ci.org/AlchemyCMS/alchemy-usermanual.svg)](http://travis-ci.org/AlchemyCMS/alchemy-usermanual)
[![Test Coverage](https://codeclimate.com/github/AlchemyCMS/alchemy-usermanual/badges/coverage.svg)](https://codeclimate.com/github/AlchemyCMS/alchemy-usermanual/coverage)
[![Code Climate](https://codeclimate.com/github/AlchemyCMS/alchemy-usermanual/badges/gpa.svg)](https://codeclimate.com/github/AlchemyCMS/alchemy-usermanual)

The version 1.x is used to work with [Alchemy CMS 3.x](https://github.com/AlchemyCMS/alchemy_cms/tree/master)

The alchemy-usermanual gem reads your `page_layouts.yml` and `elements.yml` and wraps all the interesting stuff into a module rendered in the admin-frontend of your Alchemy CMS driven application.

Users that are logged in to Alchemy can read through the self-explaining website configuration.

## Installation

Add this line to your application's `Gemfile`:

~~~
gem 'alchemy-usermanual', '~> 1.0'
~~~

And then run `bundle install` on your terminal.


## Usage

You just need to bundle the gem with your application. Then the user manual will be available in the Alchemy admin-frontend.

By default translated informations of your page_layouts and elements are presented to the user.
If you like to extend these informations with individual descriptions, you can store these translatable informations as *hints* in your `page_layouts.yml` and `elements.yml` files.

*Example 1 (hint for a page_layout)*

~~~
# /config/alchemy/page_layouts.yml
- name: product_detail
  hint: true
  elements: [...]

# /config/locales/en.yml
en:
  alchemy:
    page_layout_hints:
      product_detail: "This page template is used for presenting all the details of one certain product... You can write a full description of what the page template is used to and what the user should consider when using it."
~~~

*Example 2 (hint for an element)*

~~~
# /config/alchemy/elements.yml
- name: product_detail
  hint: true
  elements: [...]

# /config/locales/en.yml
en:
  alchemy:
    element_hints:
      product_video: "This element is used to play the youtube video of your product... You can write a full description of what the element is used to and what the user should consider when using it."
~~~

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

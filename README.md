## On-site user manual for Alchemy CMS

[![Build Status](https://secure.travis-ci.org/magiclabs/alchemy-usermanual.png)](http://travis-ci.org/magiclabs/alchemy-usermanual) [![Coverage Status](https://coveralls.io/repos/magiclabs/alchemy-usermanual/badge.png)](https://coveralls.io/r/magiclabs/alchemy-usermanual)

This gem checks your `page_layouts.yml` and `elements.yml` and wraps all the interesting stuff into a module in the admin-frontend of your [alchemy_cms](https://github.com/magiclabs/alchemy_cms) driven application.

The users that are logged in to alchemy can read through the self explaining website configuration.

## Installation

Add this line to your application's `Gemfile`:

~~~
gem 'alchemy-usermanual'
~~~

And then run `bundle install` on your terminal.


## Usage

You just need to add the gem to your alchemy driven application. Then the manual module available for the user.

By default translated informations of the `page_layouts.yml` and `elements.yml` files are presented to the user.
If you like to extend the default informations with your individual hints for page_layouts or elements, you can store that translatable hints in your page_layouts.yml` and `elements.yml`.

*Example 1 (hint for a page_layout)*

~~~
# /config/alchemy/page_layouts.yml
- name: product_detail
  hint: true
  elements: [...]

# /config/locales/en.yml
de:
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
de:
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

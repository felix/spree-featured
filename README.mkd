SpreeFeatured
=============

Adds the basic ability to 'feature' products'.

Includes basic administration additions to enable and disable featured products
and show featured products in the product list view.

Example
=======

In your site extension's hooks file, insert the following:

    insert_before :homepage_products, 'shared/featured'

To have the provided featured partial displayed on the front page. Override the
partial as you see fit obviously.

TODO
====

* Some sort of date range restrictions on featured products
* Automatically create a product group for featured products

Copyright (c) 2011 Felix Hanley, released under the New BSD License

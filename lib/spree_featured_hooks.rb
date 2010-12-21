class SpreeFeaturedHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_form_right, 'admin/products/spree_featured_admin_product_fields.html'
  insert_after :admin_products_index_rows, 'admin/products/spree_featured_admin_product_listing.html'
  insert_after :admin_products_index_headers, 'admin/products/spree_featured_admin_product_headers.html'
end

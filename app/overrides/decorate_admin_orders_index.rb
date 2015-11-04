Deface::Override.new(
  :virtual_path => "spree/admin/orders/index",
  :name => "multi_domain_admin_orders_index_headers",
  :insert_before => "[data-hook='admin_orders_index_header_actions']",
  :text => '<th><%= Spree.t(:store) %></th>',
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/admin/orders/index",
  :name => "multi_domain_admin_orders_index_rows",
  :insert_before => "[data-hook='admin_orders_index_row_actions']",
  :text => '<td><%= order.store.name if order.store %></td>',
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/admin/orders/index",
  :name => "multi_domain_admin_orders_index_search",
  :insert_before => "[data-hook='admin_orders_index_search_buttons']",
  :partial => "spree/admin/orders/index_search_fields",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/admin/orders/risky",
  :name => "multi_domain_admin_orders_risky_search",
  :insert_before => "[data-hook='admin_orders_index_search_buttons']",
  :partial => "spree/admin/orders/index_search_fields",
  :disabled => false)

# CS375_Project

## Sequence for query execution.
#### Boiler Plate
1. insert-into-users
2. insert-into-addresses
3. insert-into-category
4. insert-into-products

#### Shopping and checkout process
1. insert into session_variable (insert-into-session-variable)
2. insert into shopping_cart (insert-into-shopping-cart)
3. insert into orders (insert-into-orders)
      - insert_items trigger executed 
4. set last_order_id (in the same file insert-into-order)
5. update Items table to link the order_id (link-item-to-order)
6. remove items from shopping cart. (empty-cart-items)
7. update price in orders table (update-order-subtotal)

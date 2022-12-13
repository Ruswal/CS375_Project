<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Amazing</title> 
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="cat.html">products</a></li>
        <li><a href="pro.html">Profiles</a></li>

        <li class="dropdown">
          <a class="dropbtn">Your Profile</a>
          <div class="dropdown-content">
            <a href="ord.html">Orders</a>
            <a href="ret.html">Returns</a>
            <a href="sho.html">Shopping Cart</a>
          </div>
        </li>
        <div class="search-container">
            <form action="/action_page.php">
              <input type="text" placeholder="Search.." name="search">
              <button type="submit"></button>
            </form>
        </div>
      </ul>
    </div>

    <table name = "Products">
      <tr>
          <th>Product ID</th>
          <th>Category ID</th>
          <th>Name</th>
          <th>Description</th>
          <th>Price</th>
      </tr>
    <?php
    require_once("db.php");
        		try{
              $db = new PDO($attr, $db_user, $db_pwd, $opts);
            }catch(PDOException $e){
              throw new PDOException($e->getMessage(), (int)$e->getCode());
            }
        
        $sql = "SELECT p_id, ctgy_id, name, dsc, price, FROM Products";
        $result = $db->query($sql);
        if($db($result) > 0){

          while ($row = $result->fetch()) {
            echo '<tr>';
            echo '<td>'. $row['p_id'] .'</td>';
            echo '<td>'. $row['ctgy_id'] .'</td>';
            echo '<td>'. $row['name'] .'</td>';
            echo '<td>'. $row['dsc'] .'</td>';
            echo '<td>'. $row['price'] .'</td>';
            echo '</tr>';
          }
        }
    ?>
  </table>

<script src="index.js"></script>
  </body>
</html>
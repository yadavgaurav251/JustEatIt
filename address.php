<!DOCTYPE html>
<html>
<head>
	<title>Confirm Order</title>
</head>
<body>
	<?php
	$conn = new mysqli("localhost","root","","cart");
	$phone_no = $_POST["phone_no"];
	$sql = "Select Name from customer
	where phone_no =$phone_no";
	$result = $conn->query($sql);
	echo "Welcome ". $result "<br>";
	?>
	<h2>Your Orders</h2>
	<?php
	$conn = new mysqli("localhost","root","","cart");
	$s = array($_POST["IMC1"],$_POST["IMC2"],$_POST["IMC3"],$_POST["IMC4"],$_POST["IMC5"],$_POST["IMC6"],$_POST["IMC7"],
	$_POST["IMC8"],$_POST["L1"],$_POST["L2"],$_POST["L3"],$_POST["L4"],$_POST["L5"],
	$_POST["L6"],$_POST["R1"],$_POST["R2"],$_POST["R3"],$_POST["R4"],
	$_POST["R5"],$_POST["R6"],$_POST["R7"],$_POST["R8"],$_POST["R9"],$_POST["B1"],
	$_POST["B2"],$_POST["B3"],$_POST["B4"],$_POST["B5"],$_POST["B6"],
	$_POST["B7"],$_POST["B8"],$_POST["B9"],$_POST["D1"],$_POST["D2"],
	$_POST["D3"],$_POST["D4"],$_POST["D5"],$_POST["D6"],$_POST["D7"])
	for($x = 0;$x <=38;$x++)
	{
		if($s[$x]!=0)
		{
			echo  "$s[$x] <br>";
		}
	}
	?>
<h1>Enter Your Address</h1>
<form action ="">
	<label>Address</label>
	<input type="text" name="address" placeholder="Enter Your Address">
	<input type= "submit" name = "submit" value = "Place Order">
</form>
</body>
</html>
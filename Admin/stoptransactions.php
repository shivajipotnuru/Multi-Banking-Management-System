<?php if(!isset($_SESSION)) {session_start();}  ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="css/flexslider.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/jquery.flexslider.js" type="text/javascript"></script>
 <script type="text/javascript">
     $(function () {
         SyntaxHighlighter.all();
     });
     $(window).load(function () {
         $('.flexslider').flexslider({
             animation: "slide",
             animationLoop: false,
             itemWidth: 210,
             itemMargin: 5,
             minItems: 2,
             maxItems: 4,
             start: function (slider) {
                 $('body').removeClass('loading');
             }
         });
     });
  </script>
</head>
<body>
<?php
if($_SESSION['loginstatus']=="")
{
	header("location:admimlogin.php");
}
?>
<?php include('topbar.php'); ?>
    <center>
   <div style="width:1000px; height:700px; box-shadow:-10px 10px 5px #CCC">
       <div style="width:200px; float:left;">
       <?php include('left.php'); ?>
       </div>
       <div style="width:800px;float:left">
<br /><br />

<?php include('function.php'); ?>
<?php
if(isset($_POST["sbmt"]))
{
	$cn=makeconnection();
	
	$s="select * from transaction where transid = $_POST["t1"]";
	$q=mysqli_query($cn,$s);
	$data=mysqli_fetch_array($q);
	
	$s="select balance from bank where bankno='" . $data[2] . "'";		
	$q=mysqli_query($cn,$s);
	$r=mysqli_num_rows($q);
	$data=mysqli_fetch_array($q);
	$amount1=$data[0]; /*receiever bank balance*/
	
	$s="select balance from bank where bankno='" . $data[3] . "'";		
	$q=mysqli_query($cn,$s);
	$r=mysqli_num_rows($q);
	$data=mysqli_fetch_array($q);
	$amount2=$data[0]; /*sender bank balance*/
	
	$adding=$data[4];
	
	$s="delete from transaction where transid='".$_POST["t1"]."'";
	mysqli_query($cn,$s);
	echo "<script>alert('Record Save');</script>";
    $amount3=$amount2-$_POST["t4"];
	$amount4=$amount1+$_POST["t4"];
	$s1="update bank set balance='" . $amount4  ."' where bankno='" .$_POST["t3"] ."'";
    mysqli_query($cn,$s1); 
    $s2="update bank set balance='" . $amount3	  ."' where bankno='" .$_POST["t2"] ."'";
    mysqli_query($cn,$s2); 
    
?>

       <form method="post">
<table border="0" align="center" width="600" height="2000px" class="shaddoww">
<tr><td colspan="2" align="center" class="toptd">DELETE TRANSACTION</td></tr>
<?php	
$cn=mysqli_connect("localhost","root","123456","multibank");
$s="select * from transaction";
	$result=mysqli_query($cn,$s);
	$r=mysqli_num_rows($result);
	//echo $r;
	while($data=mysqli_fetch_array($result))
	{
				echo"<tr><td  style=' padding-left:50px'>$data[1]</td><td  style=' padding-left:10px'>$data[2]</td><td  style=' padding-left:20px'>$data[3]</td><td  style=' padding-left:30px'>$data[4]</td><td  style=' padding-left:50px'>$data[5]</td><td  style=' padding-left:50px'>$data[6]</td>";
			}
			mysqli_close($cn);
			?>

<tr><td colspan="2">&nbsp;</td></tr>
<tr><td class="lefttd">Transaction ID</td><td><input type="text" name="t1" required="required"/></td></tr>

<tr><td>&nbsp;</td><td><input type="submit" value="REMOVE" name="sbmt"></td></tr>
</table>
</form>
       </div>

   </div>
    </center>
<?php include('bottom.php'); ?>
   
</body>
</html>
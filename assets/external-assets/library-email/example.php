<form action="" method="post">
  <button type="submit" name="submit">Click Me</button>
</form>

<?php
	require_once('function.php');
	if(isset($_POST['submit']))
	{
    $to       = 'rizkyafdhillah2rpl@gmail.com';
    $subject  = 'Subject Pengiriman Email Uji Coba';
    $message  = '<p>Isi dari Email Testing</p>';
    smtp_mail($to, $subject, $message, '', '', 0, 0, true);

	}
?>
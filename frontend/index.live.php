<?php
include("/usr/local/cpanel/php/cpanel.php");  // Instantiate the CPANEL object.
$cpanel = new CPANEL();                       // Connect to cPanel - only do this once.
print $cpanel->header( "Page Heading" );      // Add the header.
?>

<?php
$get_userdata = $cpanel->uapi(                // Get domain user data.
    'DomainInfo', 'domains_data',
    array(
        'format'    => 'hash',
    )
);
print_r($get_userdata);
?>

<?php
print $cpanel->footer();                      // Add the footer.
$cpanel->end();                               // Disconnect from cPanel - only do this once.
?>
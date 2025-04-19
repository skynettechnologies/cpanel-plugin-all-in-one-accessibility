<?php
include("/usr/local/cpanel/php/cpanel.php");  // Instantiate the CPANEL object.
$cpanel = new CPANEL();                       // Connect to cPanel - only do this once.
print $cpanel->header( "All In One Accessibility" );      // Add the header.

$get_userdata = $cpanel->uapi(                // Get domain user data.
    'DomainInfo', 'domains_data',
    array(
        'format'    => 'hash',
    )
);
echo "----------------------------------------";
echo '<pre>';
print_r($get_userdata);
echo '</pre>';

print $cpanel->footer();                      // Add the footer.
$cpanel->end();                               // Disconnect from cPanel - only do this once.
?>
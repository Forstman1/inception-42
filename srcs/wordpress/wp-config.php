<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'sami' );

/** Database password */
define( 'DB_PASSWORD', 'nice' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         'j!(RA+7 BU] m4$lV!QA8@nPw$]S(+ZG<YD>.;$BAQ?v}ge}/c?,1%7#.kif`k_E');
define('SECURE_AUTH_KEY',  'MmkM-&t;D!?e$AZ9nh&jtcQPsC26Q&<W=+H$M_5];5fX$AXeO;aqDpw-$0EQ&=Vf');
define('LOGGED_IN_KEY',    '7hRKpg#lWZ=~$X2eNeI(0(<E|Pc?CDk~%Zos8I+eS2:geJjD=WDz7*$w8kqgX8.d');
define('NONCE_KEY',        'd|9z-px&FNlEDCAem~#)X+aeJ$WcpuZm|V4!Ap+^7I`4iYeu7iGJt#cnq]*~hGB*');
define('AUTH_SALT',        'mrBY).Sth}`w6XKeA:U(4uO``>;8L.z;hv0<JT|Ao`Qh-&-|V-1nJ<lTT~-$E&)E');
define('SECURE_AUTH_SALT', ':qb19]>*_^#tXa~$(TIZ(HB-(anu.2-{;0=GU-0yDTq;WC%fv1[+gEwcI5T},ZS+');
define('LOGGED_IN_SALT',   'g)FR}}NhtSV& k]A$^bxvO+-4t?]@k*vB%Q]R+*#$uUNdrexN,@n}_d>=@hsvY7f');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>

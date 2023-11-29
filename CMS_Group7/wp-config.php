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
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'Wordpress_GR7' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'JviuGD!t|:n+^U;)%5aeQw|MSkP(%F?.#$EqaaeNSXhseiZ[IZ(93k{O;d<]StT_' );
define( 'SECURE_AUTH_KEY',  'dGu(u.ar:53tr]_6`FN.EeK/q(_,|zLppPV(}Gwh/kx_j1S6}unf_<_szl)n|}(!' );
define( 'LOGGED_IN_KEY',    '_c5[WnXctAySDu&<SDP18dwE1J@hp)fAoFf:]us3r,r^3R2*eq6Kg*|P>@SoFbQ?' );
define( 'NONCE_KEY',        'eB^zxCK[3;$N}B1eM]:HK>WRb6L/t~k_]4Hu:WJhtV6<cYqH_P|ISsXO&V#oa9,a' );
define( 'AUTH_SALT',        'jt}3Z2avzr(Q|%,]nCoIx?f0j=TJB>jrfWWdy;j_t3T]Mg)k2-8 ;_CPW A}5Mby' );
define( 'SECURE_AUTH_SALT', '54FqI<Rwyn@W,|P~8,}R2R8-R:waR2,(UF2htsTvKtY^R5ZwnR@L{zBFllFKuIxi' );
define( 'LOGGED_IN_SALT',   'a@-D!W/wh%.*kV?_.t`i=#B ]7M[3m3!n5rAFJSKABfyC,:RoWxv+M9=nce<e(Ux' );
define( 'NONCE_SALT',       '_.]cji_U}il4/4#i)tbTA%p[p5G7* Y[k&xw. TyMp2N?9GHu-.1]SbXsx(90nlw' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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

<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'juancv_wp' );

/** MySQL database username */
define( 'DB_USER', 'juancv_wp' );

/** MySQL database password */
define( 'DB_PASSWORD', 'mTSdOLPpmW5Y' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          ',}=|&|khD2)M9/su6|i+{gkW*Hn3_-7)1sp@~*w)cL%Ky[pvleGgGixM?Q?%, 6=' );
define( 'SECURE_AUTH_KEY',   '>A#A0g;^G*MK,>LJeEs,,uSBnJcyqy`uteTRECx_zP  #x=@z&z3_|hE)&h^73n[' );
define( 'LOGGED_IN_KEY',     '-(f]V5IrUt<)jRpL.W2 & VFP/+X&|C3XnjKS`@<!oGM7-_73K{c,}X1l.{cEGZ|' );
define( 'NONCE_KEY',         'n7LXQ$vfv@wngG{XEVM:1@`JMpj1E)<Zn?=,bBnvM$2f$o.Sgie&;9dj@^SyYu[+' );
define( 'AUTH_SALT',         'hlOPNi@s`=CB?8+MSnWbw6EPt2,LDWGJ//!Ie-dW$>%[[lXx,d@)meeV3ZdH4<1P' );
define( 'SECURE_AUTH_SALT',  'jDs)Z)*w us]#nu+7Mnbl+FF>Q)PS39d(,L5ojq-p6MgNf(G.W:v{o-o0yh,jdUG' );
define( 'LOGGED_IN_SALT',    '@)u8p`YOhz`@P~g[[DxSC`3WWZ4!iME5wTv;Y>|df3m6yXBy0l`3a_UZ@;4qS>*F' );
define( 'NONCE_SALT',        'Q!.(-^LV+KuC4Gy9SHGH_L2fH$nND*}x9yerBVM#J)7:e0$epm{z{qEt:J;aK_qG' );
define( 'WP_CACHE_KEY_SALT', 'N-rETw^9(QB42/[G]H$KLw)XrG3&CGn5pC[4VMHx)`HF|#>)$NRT?l/>Dhq;JH;|' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

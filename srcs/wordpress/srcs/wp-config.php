<?php
// ** MySQL settings - You can get this info from your web host ** //

define( 'DB_NAME', 'wp_db' );
define( 'DB_USER', 'wp_user' );
define( 'DB_PASSWORD', '123' );
define( 'DB_HOST', 'mysql' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );


 /* Authentication Unique Keys and Salts. */
define('AUTH_KEY', 'W1<Z>sjP;01#|dHp#zbZ~q!(T{~*|9Q;)kj3aMDJd/#6sJ:|+t~v4yZlV4A2X-s[');
define('SECURE_AUTH_KEY', '|ovtI5*,GMYVeK?/[dh&jaQkNIL8ICP&Z}5vC^<$`yO`K:$HA?/,+!u8SFeW(-$u');
define('LOGGED_IN_KEY', '*}98k+oiNH/as`(!.!k|s{(-fq](6.pOvW$pRE5&D^1|>ei%=%7s+y`iq&E}dOB&');
define('NONCE_KEY', '?N@TcWwCn3n[O<[n_&B!Vbf:,y;6(z2S`WyuqhM?vbN21pMqm^>r /9pA?{5-vH5');
define('AUTH_SALT', '|p%9=.}(IwdwjT<Ts**sc}iC4+ZI5H,CI!=~%Z~}789Q88FT@zo6.#bWz>0ru])o');
define('SECURE_AUTH_SALT', 'f%rSNxnu9Vugva{Z 8@x@F[-,vItUz/6=CS;$3d~-bH-.D.bZjKzD!bnco8O@O2G');
define('LOGGED_IN_SALT', 's:+~ue.Zq5&1h[#WXLDtVTNo@PofylfX3W72 ~Q?Tr9g7NT}aK58tR@rG:edZ0/q');
define('NONCE_SALT', ' M-!HGs(/>,7W1#YI.`1KbEWgX!Ch>!j_7Iw|@W-~zuF^}+-#z*(kR4s+K|e/mDu');


/* WordPress Database Table prefix. */
$table_prefix = 'wp_';


/* debugging mode */
define( 'WP_DEBUG', false );


/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}


/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
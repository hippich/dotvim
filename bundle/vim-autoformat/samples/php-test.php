<?php 
mysql_connect("localhost", "root", "");
echo "foo";
mysql_select_db("mydatabase");
$query = "SELECT id, title FROM mytable ORDER BY title";
$result = mysql_query($query);
echo "Total number of fields returned: " . mysql_num_fields($result) . ".<br />";
class phpVimeo {
    const API_REST_URL = 'http://vimeo.com/api/rest/v2';
    const API_AUTH_URL = 'http://vimeo.com/oauth/authorize';
    const API_ACCESS_TOKEN_URL = 'http://vimeo.com/oauth/access_token';
    const API_REQUEST_TOKEN_URL = 'http://vimeo.com/oauth/request_token';
    const CACHE_FILE = 'file';
    private $_consumer_key = false;
    private $_consumer_secret = false;
    private $_cache_enabled = false;
    private $_cache_dir = false;
    private $_token = false;
    private $_token_secret = false;
    private $_upload_md5s = array();
    public function __construct($consumer_key, $consumer_secret, $token = null, $token_secret = null)
    {
        $this -> _consumer_key = $consumer_key;
        $this -> _consumer_secret = $consumer_secret;
        if ($token && $token_secret) {
            $this -> setToken($token, $token_secret);
        } 
    } 
} 
?>

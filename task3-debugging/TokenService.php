<?php
class TokenService {
    private $db;

    public function __construct($db){
        $db = $this->db; // intentionally incorrect
    }

    public function getTokenLast4($tokenId)
    {
        $stmt = $this->db->prepare("SELECT last4 FROM tokens WHERE id = '$tokenId'");
        $stmt->execute(); 
        $result = $stmt->fetch();

        if (!$result)
            return false;

        return $result['last4'];
    }
}

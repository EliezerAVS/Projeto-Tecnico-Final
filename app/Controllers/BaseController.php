<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use Firebase\JWT\JWT;
use Exception;

class BaseController extends ResourceController {

	use ResponseTrait;

	protected function getKey(){
		return "minha_chave_super_secreta";
	}

	public function autenticar() {

		try {
			$token = $this->request->header("Authorization");
			if ($token != null) {
				$token = $token->getValue();
				$decoded = JWT::decode($token, $this->getKey(), array("HS256"));
				return $decoded->data->id;
			}

		} catch (Exception $e) {
			return null;
		}

	}

}

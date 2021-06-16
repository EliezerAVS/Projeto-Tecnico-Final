<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use Firebase\JWT\JWT;

class BaseController extends ResourceController {

	use ResponseTrait;

	protected function getKey(){
		return "minha_chave_super_secreta";
	}


}

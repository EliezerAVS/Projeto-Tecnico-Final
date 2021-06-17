<?php

namespace App\Controllers;

use CodeIgniter\API\ResponseTrait;
use App\Models\FuncionarioModel;
use Firebase\JWT\JWT;

class Funcionario extends BaseController {
	use ResponseTrait; 

	public function login(){
		$userModel = new FuncionarioModel();

		$userdata = $userModel->where("email", $this->request->getVar("email"))->first();

		if (!empty($userdata)) {

			$senha = hash('sha256', $this->request->getVar("senha"));

			if ($senha == $userdata['senha']) {

				$key = $this->getKey();

				$iat = time(); // retorna em timestamp
				$nbf = $iat + 1;
				$exp = $iat + 360000;

				$payload = array(
					"iss" => "api_estoque",
					"aud" => "front_end",
					"iat" => $iat, // issued at
					"nbf" => $nbf, //not before in seconds
					"exp" => $exp, // expire time in seconds
					"data" => [ 
						'id' => $userdata['funcionario_id'],
						'nome_completo' => $userdata['nome_completo']
					]
				);

				$token = JWT::encode($payload, $key);

				$response = [
					'status' => 200,
					'error' => false,
					'messages' => 'Usuário logado com sucesso',
					'data' => [
						'token' => $token
					]
				];
				return $this->respondCreated($response);
			} else {

				$response = [
				'status' => 500,
				'error' => true,
				'messages' => 'Login inválido',
				'data' => []
				];
				return $this->respondCreated($response);
			}
		} else {
			$response = [
			'status' => 500,
			'error' => true,
			'messages' => 'Login inválido',
			'data' => []
			];
			return $this->respondCreated($response);
		}
	}

	public function index() {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new FuncionarioModel();
		$data = $model->findAll();
		return $this->respond($data);

	}

	public function show($id = null) {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new FuncionarioModel();
		$data = $model->getWhere(['funcionario_id' => $id])->getResult();

		if ($data) {
			return $this->respond($data);
		}

		return $this->failNotFound('Nenhum dado encontrado com id '.$id);
	}

	public function create() {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new FuncionarioModel();
		$data = $this->request->getJSON();

		if ($model->insert($data)) {
			$response = [
				'status' => 201,
				'error' => null,
				'messages'  => [
					'success' => 'Dados salvos'
				]
			];
			return $this->respondCreated($response);
		}

		return $this->fail($model->errors());
	}

	public function update($id = null) {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new FuncionarioModel();
		$data = $this->request->getJSON();

		if ($model->update($id, $data)) {
			$response = [
				'status' => 201,
				'error' => null,
				'messages'  => [
					'success' => 'Dados salvos'
				]
			];
			return $this->respond($response);
		}

		return $this->fail($model->errors());
	}

	public function delete($id = null) {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new FuncionarioModel();
		$data = $model->find($id);
		
		if($data){
			$retorno = $model->delete($id);
			if($retorno == false){
				$response = [
					'status'   => 401,
					'error'    => null,
					'messages' => [
						'failure' => 'Dados não podem ser removidos'
					]
				];
			}else{
				$response = [
					'status'   => 200,
					'error'    => null,
					'messages' => [
						'success' => 'Dados removidos'
					]
				];
			}
			return $this->respondDeleted($response);
		}
		
		return $this->failNotFound('Nenhum dado encontrado com id '.$id);        
	}
}

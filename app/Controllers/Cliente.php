<?php

namespace App\Controllers;

use CodeIgniter\API\ResponseTrait;
use App\Models\ClienteModel;

class Cliente extends BaseController {
	use ResponseTrait; 

	public function index() {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new ClienteModel();
		$data = $model->findAll();
		return $this->respond($data);
	}

	public function show($id = null) {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new ClienteModel();
		$data = $model->getWhere(['cliente_id' => $id])->getResult();

		if ($data) {
			return $this->respond($data);
		}

		return $this->failNotFound('Nenhum dado encontrado com id '.$id);
	}

	public function create() {
		if ($this->autenticar() == null) {
			return $this->failUnauthorized("Acesso Negado!");
		}

		$model = new ClienteModel();
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

		$model = new ClienteModel();
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

		$model = new ClienteModel();
		$data = $model->find($id);
		
		if($data){
			$model->delete($id);
			$response = [
				'status'   => 200,
				'error'    => null,
				'messages' => [
					'success' => 'Dados removidos'
				]
			];
			return $this->respondDeleted($response);
		}
		
		return $this->failNotFound('Nenhum dado encontrado com id '.$id);        
	}
}

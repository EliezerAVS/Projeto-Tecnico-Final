<?php namespace App\Controllers;
 
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\ProdutoModel;
 
class Produto extends BaseController
{
    use ResponseTrait;
    // lista todos produtos
    public function index()
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new ProdutoModel();
        $data = $model->findAll();
        return $this->respond($data);
    }
 
    // lista um produto
    public function show($id = null)
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new ProdutoModel();
        $data = $model->getWhere(['produto_id' => $id])->getResult();

        if($data){
            return $this->respond($data);
        }
        
        return $this->failNotFound('Nenhum dado encontrado com id '.$id);
    }
 
    // adiciona um produto
    public function create()
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new ProdutoModel();
        $data = $this->request->getJSON();

        if($model->insert($data)){
            $response = [
                'status'   => 201,
                'error'    => null,
                'messages' => [
                    'success' => 'Dados salvos'
                ]
            ];
            return $this->respondCreated($response);
        }

        return $this->fail($model->errors());
    }
    
    // atualiza um produto
    public function update($id = null)
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new ProdutoModel();
        $data = $this->request->getJSON();
        
        if($model->update($id, $data)){
            $response = [
                'status'   => 200,
                'error'    => null,
                'messages' => [
                    'success' => 'Dados atualizados'
                ]
            ];
            return $this->respond($response);
        }

        return $this->fail($model->errors());
    }
 
    // deleta um produto
    public function delete($id = null)
    {
        if ($this->autenticar() == null) {
            return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new ProdutoModel();
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

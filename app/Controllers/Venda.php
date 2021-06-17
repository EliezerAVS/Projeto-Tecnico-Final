<?php namespace App\Controllers;
 
use CodeIgniter\API\ResponseTrait;
use App\Models\VendaModel;
use App\Models\FichaProdutoModel;
 
class Venda extends BaseController
{
    use ResponseTrait;
    // lista todas vendas
    public function index()
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new VendaModel();
        $data = $model->findAll();
        return $this->respond($data);
    }
 
    // lista venda por produto
    public function show($id = null)
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new VendaModel();
        $allDataVenda = $model->getVendaById($id)->findAll();
        
        if($allDataVenda){
            
            $model = new FichaProdutoModel();
            $allDataProduto = $model->getAllProduto($id)->findAll();

            $resultado = [];
            
            foreach ($allDataVenda as $venda){
                $dados = array();

                $dados['ficha_id'] = $venda['ficha_id'];
                $dados['preco_total'] = $venda['preco_total'];
                $dados['data'] = $venda['data'];
                $dados['funcionario'] = array(
                    'id' => $venda['fk_funcionario_id'],
                    'nome' => $venda['nome_funcionario'],
                    'email' => $venda['email_funcionario'],
                    'telefone' => $venda['telefone_funcionario']
                );
                $dados['cliente'] = array(
                    'id' => $venda['fk_cliente_id'],
                    'nome' => $venda['nome_cliente'],
                    'cpf' => $venda['cpf_cliente'],
                    'telefone' => $venda['telefone_cliente']
                );
                
                $dados['produto'] = array();

                foreach($allDataProduto as $vendaProduto){
                    $dados['produto'][] = array(
                        'id' => $vendaProduto['fk_produto_id'],
                        'nome' => $vendaProduto['nome'],
                        'descricao' => $vendaProduto['descricao'],
                        'quantidade' => $vendaProduto['quantidade'],
                        'preco_unitario' => $vendaProduto['preco_unitario'],
                        'codigo_de_barras' => $vendaProduto['codigo_de_barras']
                    );
                }
                
                array_push($resultado, $dados);
            }
            
            return $this->respond($resultado);
        }
        
        return $this->failNotFound('Nenhum dado encontrado com id '.$id);
    }
 
    // adiciona uma venda
    public function create()
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new VendaModel();
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
    
    // atualiza uma venda
    public function update($id = null)
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new VendaModel();
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
 
    // deleta uma venda
    public function delete($id = null)
    {
        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new VendaModel();
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

    // lista todas vendas completas
    public function venda(){

        if ($this->autenticar() == null) {
          return $this->failUnauthorized("Acesso Negado!");
        }

        $model = new VendaModel();
        
        $allDataVenda = $model->getAllVenda()->findAll();
        
        $resultado = [];
        
        foreach ($allDataVenda as $venda){
            $dados = array();
            
            $dados['ficha_id'] = $venda['ficha_id'];
            $dados['preco_total'] = $venda['preco_total'];
            $dados['data'] = $venda['data'];
            $dados['funcionario'] = array(
                'id' => $venda['fk_funcionario_id'],
                'nome' => $venda['nome_funcionario'],
                'email' => $venda['email_funcionario'],
                'telefone' => $venda['telefone_funcionario']
            );
            $dados['cliente'] = array(
                'id' => $venda['fk_cliente_id'],
                'nome' => $venda['nome_cliente'],
                'cpf' => $venda['cpf_cliente'],
                'telefone' => $venda['telefone_cliente']
            );
            
            array_push($resultado, $dados);
        }
        
        return $this->respond($resultado);
    }
}

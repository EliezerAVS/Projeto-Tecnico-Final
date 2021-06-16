<?php namespace App\Models;
  
use CodeIgniter\Model;
  
class VendaModel extends Model
{
    protected $table = 'ficha';
    protected $primaryKey = 'ficha_id';
    protected $allowedFields = ['preco_total','fk_funcionario_id','fk_cliente_id'];
    protected $validationRules    = [
        'preco_total'       => 'required|decimal',
        'fk_funcionario_id' => 'required|integer',
        'fk_cliente_id'     => 'required|integer',
    ];

    public function getAllVenda(){
        return $this->select('ficha.*, funcionario.nome_completo as nome_funcionario,
        funcionario.email as email_funcionario, funcionario.telefone as telefone_funcionario,
        cliente.nome as nome_cliente, cliente.cpf as cpf_cliente, cliente.telefone as telefone_cliente')
        ->join('cliente', 'cliente.cliente_id = ficha.fk_cliente_id')
        ->join('funcionario', 'funcionario.funcionario_id = ficha.fk_funcionario_id');
    }

    public function getVendaById($id){
        return $this->select('ficha.*, funcionario.nome_completo as nome_funcionario,
        funcionario.email as email_funcionario, funcionario.telefone as telefone_funcionario,
        cliente.nome as nome_cliente, cliente.cpf as cpf_cliente, cliente.telefone as telefone_cliente')
        ->join('cliente', 'cliente.cliente_id = ficha.fk_cliente_id')
        ->join('funcionario', 'funcionario.funcionario_id = ficha.fk_funcionario_id')
        ->where('ficha.ficha_id', $id);
    }
}
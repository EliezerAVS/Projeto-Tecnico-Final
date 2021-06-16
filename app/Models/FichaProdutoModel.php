<?php namespace App\Models;
  
use CodeIgniter\Model;
  
class FichaProdutoModel extends Model
{
    protected $table = 'ficha_produto';
    protected $primaryKey = 'fk_produto_id, fk_ficha_id';
    protected $allowedFields = ['fk_produto_id','fk_ficha_id','quantidade','preco_unitario'];
    protected $validationRules    = [
        'fk_produto_id'     => 'required|integer',
        'fk_ficha_id'       => 'required|integer',
        'quantidade'        => 'required|integer',
        'preco_unitario'    => 'required|decimal'
    ];

    public function getAllProduto($id){
        return $this->select('ficha_produto.*, produto.nome, produto.descricao, produto.codigo_de_barras')
        ->join('produto', 'produto.produto_id = ficha_produto.fk_produto_id')
        ->where('ficha_produto.fk_ficha_id', $id);
    }
}
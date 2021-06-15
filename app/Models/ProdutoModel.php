<?php namespace App\Models;
  
use CodeIgniter\Model;
  
class ProdutoModel extends Model
{
    protected $table = 'produto';
    protected $primaryKey = 'produto_id';
    protected $allowedFields = ['nome','descricao','preco','quantidade','codigo_de_barras'];
    protected $validationRules    = [
        'nome'              => 'required|max_length[60]',
        'descricao'         => 'max_length[150]',
        'preco'             => 'required|decimal',
        'quantidade'        => 'required|integer',
        'codigo_de_barras'  => 'max_length[60]'
    ];
}
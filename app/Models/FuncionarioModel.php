<?php

namespace App\Models;

use CodeIgniter\Model;

class FuncionarioModel extends Model {
  protected $table = 'funcionario';
  protected $primaryKey = 'funcionario_id';
  protected $allowedFields = [
    'nome_completo', 'email', 'senha', 'telefone', 'cpf_cnpj', 
    'CEP', 'rua', 'numero', 'bairro', 'cidade', 'estado' 
  ];
  protected $validationRules = [
    'nome_completo' => 'required|max_length[60]',
    'email'         => 'required|valid_email|max_length[60]',
    'telefone'      => 'numeric|max_length[11]',
    'cpf_cnpj'      => 'numeric|max_length[60]',
    'CEP'           => 'numeric|max_length[8]',
    'rua'           => 'max_length[60]',
    'numero'        => 'max_length[60]',
    'bairro'        => 'max_length[60]',
    'cidade'        => 'max_length[60]',
    'estado'        => 'max_length[60]',
  ];
}

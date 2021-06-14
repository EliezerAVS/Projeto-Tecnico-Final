<?php

namespace App\Models;

use CodeIgniter\Model;

class ClienteModel extends Model {
  protected $table = 'cliente';
  protected $primaryKey = 'cliente_id';
  protected $allowedFields = [
    'nome', 'telefone', 'cpf', 
    'CEP', 'rua', 'numero', 'bairro', 'cidade', 'estado' 
  ];
  protected $validationRules = [
    'nome'     => 'required|max_length[60]',
    'telefone' => 'numeric|max_length[11]',
    'cpf'      => 'numeric|max_length[11]',
    'CEP'      => 'numeric|max_length[8]',
    'rua'      => 'max_length[60]',
    'numero'   => 'max_length[60]',
    'bairro'   => 'max_length[60]',
    'cidade'   => 'max_length[60]',
    'estado'   => 'max_length[60]',
  ];
}

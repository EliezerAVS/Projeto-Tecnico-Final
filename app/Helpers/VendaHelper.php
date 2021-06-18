<?php

namespace App\Helpers;

class VendaHelper {

  public function calcPrecoTotal($produtos) {
    $total = 0;
    foreach ($produtos as $produto) {
      $preco_unitario = (float) $produto['preco_unitario'];
      $quantidade = (float) $produto['quantidade'];
      $total += $preco_unitario * $quantidade;
    }
    return $total;
  }

}

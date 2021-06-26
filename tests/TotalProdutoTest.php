<?php

namespace Tests;

use App\Helpers\VendaHelper;
use PHPUnit\Framework\TestCase;

class TotalProdutoTest extends TestCase {

  public function testTotalProduto() {
    $calc = new VendaHelper();
    $precoTotal = $calc->calcPrecoTotal([
      [
        'preco_unitario' => 20,
        'quantidade' => 2
      ],
      [
        'preco_unitario' => 50,
        'quantidade' => 1
      ]
    ]);

    $this->assertEquals(90, $precoTotal);
  }

}

USE bdProdutos

SELECT * FROM tbCliente
SELECT * FROM tbFabricante
SELECT * FROM tbFornecedor
SELECT * FROM tbItensVenda
SELECT * FROM tbProduto
SELECT * FROM tbVendas

--
SELECT nomeFabricante, descricaoProduto FROM tbProduto
INNER JOIN tbFabricante on 
tbProduto.codFabricante = tbFabricante.codFabricante

--Nome do Fabricante, Nome do Produto e Nome do Fornecedor
SELECT nomeFabricante, descricaoProduto,nomeFornecedor FROM tbFabricante
INNER JOIN  tbProduto on 
tbFabricante.codFabricante = tbProduto.codFabricante
INNER JOIN tbFornecedor on
tbFornecedor.codFornecedor = tbProduto.codFornecedor

WHERE nomeFabricante = 'P&G'


--Nome do Cliente, data da venda, produtos, fabricantes e forncedores.
SELECT nomeClietne,dataVenda,descricaoProduto,nomeFabricante,nomeFornecedor 
FROM tbCliente 
INNER JOIN tbVendas on tbCliente.codCliente = tbVendas.codCliente
INNER JOIN tbItensVenda on tbItensVenda.codVenda = tbVendas.codVenda
INNER JOIN tbProduto on tbProduto.codProduto = tbItensVenda.codProduto
INNER JOIN tbFabricante on tbFabricante.codFabricante = tbProduto.codProduto
INNER JOIN tbFornecedor on tbFornecedor.codFornecedor = tbProduto.codProduto
where dataVenda BETWEEN '01-01-2020' AND '18-06-2020'
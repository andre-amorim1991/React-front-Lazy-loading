-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Fev-2021 às 18:51
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `favelatem`
--
CREATE DATABASE IF NOT EXISTS `favelatem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `favelatem`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrobasico`
--

DROP TABLE IF EXISTS `cadastrobasico`;
CREATE TABLE IF NOT EXISTS `cadastrobasico` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` char(32) NOT NULL,
  `criacao_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastrobasico`
--

INSERT INTO `cadastrobasico` (`iduser`, `nome`, `sobrenome`, `email`, `senha`, `criacao_cadastro`) VALUES
(68, 'Andre', 'Amorim', 'andrepatoloko@msn.com', '25f9e794323b453885f5181f1b624d0b', '2021-01-16 19:51:31'),
(70, 'Katia ', 'Andrade', 'andre_felipe.amorim@hotmail.com', '25f9e794323b453885f5181f1b624d0b', '2021-01-18 14:42:28'),
(71, 'Andre', 'Amorim', 'teste@teste.com.br', '25f9e794323b453885f5181f1b624d0b', '2021-01-20 16:31:52'),
(74, 'Antonio', 'Andrade', 'tatata@tatata.com', '25f9e794323b453885f5181f1b624d0b', '2021-02-11 00:17:29'),
(75, 'André', 'Amorim', 'teste@teste.com', '25f9e794323b453885f5181f1b624d0b', '2021-02-19 00:47:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrolojaprestador`
--

DROP TABLE IF EXISTS `cadastrolojaprestador`;
CREATE TABLE IF NOT EXISTS `cadastrolojaprestador` (
  `idcadastrolojaprestador` int NOT NULL AUTO_INCREMENT,
  `fk_cadastro` int NOT NULL,
  `nome_fantasia` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `logradouro` varchar(150) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `pontuacao` int NOT NULL,
  `atividades` int NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `descricao_loja` text,
  PRIMARY KEY (`idcadastrolojaprestador`),
  UNIQUE KEY `fk_cadastro_UNIQUE` (`fk_cadastro`),
  KEY `fk_cadastro_prestador_idx` (`fk_cadastro`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastrolojaprestador`
--

INSERT INTO `cadastrolojaprestador` (`idcadastrolojaprestador`, `fk_cadastro`, `nome_fantasia`, `telefone`, `cep`, `logradouro`, `numero`, `bairro`, `estado`, `cidade`, `pontuacao`, `atividades`, `imagem`, `descricao_loja`) VALUES
(17, 68, 'Andre', '7845129811', '987456', 'av paulista', '1458', 'jd america', 'AC', 'São Paulo', 0, 0, '', 'post'),
(20, 70, 'Sublime Quitute', '1182714925', '04845060', 'Rua Rodrigues de freitas ', '62', 'Paraisópolis', 'SP', 'SP', 0, 0, '', 'Bolos, doces, salgados, sobremesas, pães, tordas doces e salgadas!\r\naceimos todas as ecomendas.'),
(21, 74, 'Sublime Quitute', '1182714925', '04845060', 'Rua Rodrigues de freitas', '345', 'Paraisópolis', 'SP', 'SP', 0, 0, '', 'gdgqfdahsdga');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias_servico`
--

DROP TABLE IF EXISTS `categorias_servico`;
CREATE TABLE IF NOT EXISTS `categorias_servico` (
  `idcategorias_servico` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idcategorias_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias_servico`
--

INSERT INTO `categorias_servico` (`idcategorias_servico`, `categoria`) VALUES
(4, 'Arte, Papelaria e Armarinho'),
(5, 'Assistência Técnica'),
(6, 'Beleza'),
(7, 'Serviços gerais'),
(8, 'Alimentação'),
(9, 'Moda'),
(10, 'Saúde e Bem-estar'),
(11, 'Outros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(255) NOT NULL,
  `fk_user` int NOT NULL,
  `fk_loja` int NOT NULL,
  `criacao_comment` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcomentario`),
  KEY `fk_comment_loja_idx` (`fk_loja`),
  KEY `fk_comment_user_idx` (`fk_user`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `idcursos` int NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem_curso` varchar(255) NOT NULL,
  PRIMARY KEY (`idcursos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idcursos`, `nome_curso`, `descricao`, `imagem_curso`) VALUES
(3, 'Empreendedorismo', 'Otimas dicas e sugestões para seu negócio evoluir!', 'http://localhost:3000/static/media/empreendedorismo.71592253.png'),
(4, 'Marketing Digital', 'Descubra como seu negócio pode evoluir com nosso curso de marketing', 'http://localhost:3000/static/media/marketing-digital.66091998.png'),
(5, 'Administração', 'Um curso completo com dicas para melhor administrar seu negócio.', 'http://localhost:3000/static/media/consultoria.530e200b.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
CREATE TABLE IF NOT EXISTS `perguntas` (
  `idperguntas` int NOT NULL AUTO_INCREMENT,
  `fk_curso` int NOT NULL,
  `conteudo` text NOT NULL,
  `pegunta` varchar(255) NOT NULL,
  `valor_pontos` int NOT NULL,
  PRIMARY KEY (`idperguntas`),
  KEY `fk_pergunta_curso_idx` (`fk_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`idperguntas`, `fk_curso`, `conteudo`, `pegunta`, `valor_pontos`) VALUES
(13, 3, 'https://www.youtube.com/embed/qXRYQl60lgw', '1 - Empreendedorismo é o esforço de  criar, idealizar,', 50),
(14, 3, '', '2 - Para empreender é preciso ficar atento aos seguintes pontos:', 50),
(15, 3, '', '3 - Algumas características ajudam a pessoa empreendedora. São elas:', 50),
(16, 4, 'https://www.youtube.com/embed/rTxPwy4mKKw', '1 - Os quatro P do Marketing são: ', 60),
(17, 4, '', '2 - Preço é:', 60),
(18, 4, '', '3 - O quarto P do marketing significa promoção ou seja:', 60),
(19, 5, 'https://www.youtube.com/embed/8Jx033mbv6M', '1 - Margem de lucro é basicamente o que você recebe pela venda do produto retirando mão de obra, produção, embalagem e tudo o que você precisou investir para produzir o produto para o seu cliente?', 70),
(20, 5, '', '2 - Conta de água, luz e telefone, são custos fixos ou variáveis?', 70),
(21, 5, '', '3 - Não é importante analisar o mercado e seus concorrentes na hora de precificar. Essa afirmação é Falsa ou verdadeira?', 70);

-- --------------------------------------------------------

--
-- Estrutura da tabela `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `idportfolio` int NOT NULL AUTO_INCREMENT,
  `imagem` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `fk_lojaprestador` int NOT NULL,
  PRIMARY KEY (`idportfolio`),
  KEY `fk_portfolio_prestador_idx` (`fk_lojaprestador`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas_padrao`
--

DROP TABLE IF EXISTS `respostas_padrao`;
CREATE TABLE IF NOT EXISTS `respostas_padrao` (
  `idrespostas_padrao` int NOT NULL AUTO_INCREMENT,
  `fk_pergunta` int NOT NULL,
  `veracidade` tinyint(1) NOT NULL,
  `resposta` varchar(500) NOT NULL,
  PRIMARY KEY (`idrespostas_padrao`),
  KEY `fk_pergunta_respostapadrao_idx` (`fk_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `respostas_padrao`
--

INSERT INTO `respostas_padrao` (`idrespostas_padrao`, `fk_pergunta`, `veracidade`, `resposta`) VALUES
(23, 13, 1, 'Verdadeiro'),
(24, 13, 0, 'Falso'),
(25, 14, 1, 'Responsabilidade, compensação, Risco de falha.'),
(26, 14, 0, 'Acordar cedo, trabalhar aos finais de semana e gastar pouco.'),
(27, 15, 1, 'Acordar cedo, trabalhar aos finais de semana e gastar pouco.'),
(28, 15, 0, 'Cautela,  atenção e intuição.'),
(29, 16, 1, 'Produto, Preço, Praça e Promoção'),
(30, 16, 0, 'Pensar, Planejar, Pesquisar e Produzir'),
(31, 17, 1, 'Quanto o produto vai custar para o cliente'),
(32, 17, 0, 'Quanto você gastou para produzir o produto'),
(33, 18, 0, 'Descontos que você dá para o seu cliente.'),
(34, 18, 1, 'Como você promove ou divulga sua marca.'),
(35, 19, 1, 'Verdadeiro'),
(36, 19, 0, 'Falso'),
(37, 20, 1, 'Fixos'),
(38, 20, 0, 'Variáveis'),
(39, 21, 0, 'Verdadeira'),
(40, 21, 1, 'Falsa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas_usuarios`
--

DROP TABLE IF EXISTS `respostas_usuarios`;
CREATE TABLE IF NOT EXISTS `respostas_usuarios` (
  `idrespostas` int NOT NULL AUTO_INCREMENT,
  `fk_usuario` int NOT NULL,
  `resposta_usuario` int NOT NULL,
  `fk_pergunta` int NOT NULL,
  PRIMARY KEY (`fk_usuario`,`fk_pergunta`),
  UNIQUE KEY `idrespostas_UNIQUE` (`idrespostas`),
  KEY `fk_prestador_resposta_idx` (`fk_usuario`),
  KEY `fk_resposta_usuario_idx` (`resposta_usuario`),
  KEY `fk_pergunta_resposta_idx` (`fk_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `idservicos` int NOT NULL AUTO_INCREMENT,
  `fk_lojaprestador` int NOT NULL,
  `fk_subcategoria` int NOT NULL,
  `descricao_servico` varchar(255) NOT NULL,
  `atendimento_domicilio` tinyint(1) NOT NULL,
  `atendimento_local` tinyint(1) NOT NULL,
  `pagamento_dinheiro` tinyint(1) NOT NULL,
  `pagamento_cartao` tinyint(1) NOT NULL,
  `inicio_atendimento` time NOT NULL,
  `fim_atendimento` time NOT NULL,
  `imagem_servico` varchar(255) NOT NULL,
  PRIMARY KEY (`idservicos`),
  KEY `fk_servico_prestador_idx` (`fk_lojaprestador`),
  KEY `fk_servico_subcategoria_idx` (`fk_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`idservicos`, `fk_lojaprestador`, `fk_subcategoria`, `descricao_servico`, `atendimento_domicilio`, `atendimento_local`, `pagamento_dinheiro`, `pagamento_cartao`, `inicio_atendimento`, `fim_atendimento`, `imagem_servico`) VALUES
(19, 17, 24, 'Rebocamos, reformamos sua residencia!', 1, 0, 1, 0, '08:00:00', '15:20:00', 'https://g1.com'),
(20, 20, 29, 'bolos doces e salgados', 0, 1, 1, 1, '08:00:00', '23:00:00', 'https://www.oetker.com.br/Recipe/Recipes/oetker.com.br/br-pt/baking/image-thumb__40008__RecipeDetailsLightBox/bolo-de-aniversario-de-chocolate.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
CREATE TABLE IF NOT EXISTS `subcategorias` (
  `idsubcategorias` int NOT NULL AUTO_INCREMENT,
  `nome_subcategoria` varchar(100) NOT NULL,
  `fk_categoria` int NOT NULL,
  PRIMARY KEY (`idsubcategorias`),
  KEY `fk_categoria_idx` (`fk_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`idsubcategorias`, `nome_subcategoria`, `fk_categoria`) VALUES
(8, 'Artesanato', 4),
(9, 'Fotografia', 4),
(10, 'Música', 4),
(11, 'Eletrodomésticos', 5),
(12, 'Eletrônicos', 5),
(13, 'Informática', 5),
(14, 'Barbeiro', 6),
(15, 'Cabeleireira', 6),
(16, 'Depilação', 6),
(17, 'Limpeza de Pele', 6),
(18, 'Maquiagem', 6),
(19, 'Manicure', 6),
(20, 'Pedicure', 6),
(21, 'Sobrancelha', 6),
(22, 'Tranças', 6),
(23, 'Consultoria', 7),
(24, 'Reformas e Reparos', 7),
(25, 'Serviços Automotivos', 7),
(26, 'Serviços de Limpeza', 7),
(27, 'Entrega/Carreto', 7),
(28, 'Cuidador', 7),
(29, 'Doces', 8),
(30, 'Salgados', 8),
(31, 'Refeições', 8),
(32, 'Corte e Costura', 9),
(33, 'Moda Feminina', 9),
(34, 'Moda Masculina', 9),
(35, 'Moda Plus Size', 9),
(36, 'Sapateiro', 9),
(37, 'Personal Trainer', 10),
(38, 'Podólogo', 10),
(39, 'Fisioterapeuta', 10),
(40, 'Massoterapeuta', 10),
(41, 'Outros', 11);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cadastrolojaprestador`
--
ALTER TABLE `cadastrolojaprestador`
  ADD CONSTRAINT `fk_cadastro_prestador` FOREIGN KEY (`fk_cadastro`) REFERENCES `cadastrobasico` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comment_loja` FOREIGN KEY (`fk_loja`) REFERENCES `cadastrolojaprestador` (`idcadastrolojaprestador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`fk_user`) REFERENCES `cadastrobasico` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `fk_pergunta_curso` FOREIGN KEY (`fk_curso`) REFERENCES `cursos` (`idcursos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `fk_portfolio_prestador` FOREIGN KEY (`fk_lojaprestador`) REFERENCES `cadastrolojaprestador` (`idcadastrolojaprestador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `respostas_padrao`
--
ALTER TABLE `respostas_padrao`
  ADD CONSTRAINT `fk_pergunta_respostapadrao` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`idperguntas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `respostas_usuarios`
--
ALTER TABLE `respostas_usuarios`
  ADD CONSTRAINT `fk_pergunta_resposta` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`idperguntas`),
  ADD CONSTRAINT `fk_resposta_prestador` FOREIGN KEY (`fk_usuario`) REFERENCES `cadastrolojaprestador` (`idcadastrolojaprestador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resposta_resppadrao` FOREIGN KEY (`resposta_usuario`) REFERENCES `respostas_padrao` (`idrespostas_padrao`);

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `fk_servico_prestador` FOREIGN KEY (`fk_lojaprestador`) REFERENCES `cadastrolojaprestador` (`idcadastrolojaprestador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servico_subcategoria` FOREIGN KEY (`fk_subcategoria`) REFERENCES `subcategorias` (`idsubcategorias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`fk_categoria`) REFERENCES `categorias_servico` (`idcategorias_servico`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Banco de dados: `fullstackeletro`
--
CREATE DATABASE IF NOT EXISTS `fullstackeletro` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `fullstackeletro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idcomentarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `comentario` varchar(300) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcomentarios`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE IF NOT EXISTS `estados` (
  `idestado` int NOT NULL AUTO_INCREMENT,
  `nome_estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`idestado`, `nome_estado`) VALUES
(1, 'Acre'),
(2, 'Alagoas'),
(3, 'Amapá'),
(4, 'Amazonas'),
(5, 'Bahia'),
(6, 'Ceará'),
(7, 'Distrito Federal'),
(8, 'Espírito Santo'),
(9, 'Goiás'),
(10, 'Maranhão'),
(11, 'Mato Grosso'),
(12, 'Mato Grosso do Sul'),
(13, 'Minas Gerais'),
(14, 'Pará'),
(15, 'Paraíba'),
(16, 'Paraná'),
(17, 'Pernambuco'),
(18, 'Piauí'),
(19, 'Rio de Janeiro'),
(20, 'Rio Grande do Norte'),
(21, 'Rio Grande do Sul'),
(22, 'Rondônia'),
(23, 'Roraima'),
(24, 'Santa Catarina'),
(25, 'São Paulo'),
(26, 'Sergipe'),
(27, 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado_endereco` int DEFAULT NULL,
  `bairro_endereco` varchar(45) DEFAULT NULL,
  `logradouro_endereco` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `numero_endereco` varchar(45) DEFAULT NULL,
  `cidade_endereco` varchar(45) DEFAULT NULL,
  `telefone_cliente` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `quantidade` int NOT NULL,
  `data_pedido` datetime DEFAULT CURRENT_TIMESTAMP,
  `fk_produto` int NOT NULL,
  `cpf_cliente` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_produto_idx` (`fk_produto`),
  KEY `fk_pedido_estado_idx` (`estado_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `nome_cliente`, `estado_endereco`, `bairro_endereco`, `logradouro_endereco`, `numero_endereco`, `cidade_endereco`, `telefone_cliente`, `quantidade`, `data_pedido`, `fk_produto`, `cpf_cliente`) VALUES
(1, 'andre', 27, 'graja', 'av belmira', '234', 'são paulo', '11987678654', 1, '2020-12-13 19:09:34', 2, 12345678910),
(2, 'andre', 2, 'graja', 'av belmira', '234', 'rio ', '11987678654', 1, '2020-12-13 19:23:36', 2, 12345678910),
(3, 'Andre', 1, 'Graja', 'AV Belmira', '345', 'São Paulo', '11984595519', 1, '2020-12-13 19:35:25', 8, 12345678910);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(180) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `preco` float NOT NULL,
  `preco_venda` float NOT NULL,
  `imagem` varchar(150) NOT NULL,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `categoria`, `descricao`, `preco`, `preco_venda`, `imagem`) VALUES
(1, 'geladeira', 'Geladeria Consul 520 Litros', 3560, 3099, 'img/geladeira-consul.jpeg'),
(2, 'geladeira', 'Geladeira Duplex Brastemp 600 Litros', 5399, 4990, 'img/geladeira-brastemp.jpg'),
(3, 'geladeira', 'Geladeira Brastemp 550 Litros', 4399, 3999, 'img/geladeira-brastemp-branca.jpeg'),
(4, 'fogoes', 'Fogão Eletrolux', 1290, 959.9, 'img/fogao-eletrolux.jpeg'),
(5, 'fogoes', 'Fogão Consul', 1429, 1099.9, 'img/fogao-prata.jpeg'),
(6, 'microondas', 'Microondas Eletrolux 33 Litros', 859, 659.9, 'img/microndas-eletrolux.jpeg'),
(7, 'microondas', 'Microondas Panasonic 29 Litros', 729.9, 559.99, 'img/microondas-panasonic.jpeg'),
(8, 'microondas', 'Microondas Consul 25 Litros', 679, 529.9, 'img/microondas.jpeg'),
(9, 'lava_roupas', 'Lava roupas Consul', 2925.1, 2199.99, 'img/lava-roupa-consul.jpeg'),
(10, 'lava_roupas', 'Lava de roupas Eletrolux', 1649, 1199, 'img/lava-roupa-eletrolux.jpeg'),
(11, 'lava_loucas', 'Lava-Louças Consul', 2564, 1799, 'img/lava-louca-consul.jpeg'),
(12, 'lava_loucas', 'Lava-louça Eletrolux', 3284, 2350, 'img/lava-louca-eletrolux.jpg');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_estado` FOREIGN KEY (`estado_endereco`) REFERENCES `estados` (`idestado`),
  ADD CONSTRAINT `fk_produto` FOREIGN KEY (`fk_produto`) REFERENCES `produtos` (`idprodutos`);
--
-- Banco de dados: `projeto_node`
--
CREATE DATABASE IF NOT EXISTS `projeto_node` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projeto_node`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

DROP TABLE IF EXISTS `conteudo`;
CREATE TABLE IF NOT EXISTS `conteudo` (
  `idconteudo` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  `conteudo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idconteudo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`idconteudo`, `categoria`, `conteudo`) VALUES
(1, 'frontend', 'HTML'),
(2, 'frontend', 'CSS'),
(3, 'frontend', 'JavaScript'),
(4, 'backend', 'MongoDB'),
(5, 'backend', 'Azure'),
(6, 'backend', 'NoSQLServer'),
(7, 'frontend', 'React'),
(10, 'backend', 'Amazon'),
(11, 'frontend', 'bootstrap'),
(12, 'backend', 'maria db'),
(13, 'frontend', 'Angular JS'),
(14, 'backend', 'NoSQL'),
(15, 'frontend', 'bootstrap 5.0'),
(16, 'frontend', 'çuiylktghjvbnkjlk~iouioyghb');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `senha` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

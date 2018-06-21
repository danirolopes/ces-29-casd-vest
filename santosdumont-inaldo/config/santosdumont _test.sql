-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jun-2018 às 10:43
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `santosdumont`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mensagem` text NOT NULL,
  `enviado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `email`, `mensagem`, `enviado_em`) VALUES
(1, 'Daniel Rocha Lopes', 'danirolopes@gmail.com', 'Teste com excp', '2017-05-24 23:05:47'),
(2, 'Daniel Rocha Lopes', 'danirolopes@gmail.com', 'Teste', '2017-05-25 12:35:52'),
(3, 'Daniel Rocha Lopes', 'danirolopes@gmail.com', 'edfuhijk', '2017-05-25 13:04:29'),
(4, 'Daniel Rocha Lopes', 'danirolopes@gmail.com', 'aftgdhaagse', '2017-05-25 13:08:38'),
(5, '*', '*@f', 'mhg', '2017-11-05 23:49:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrevista_casd_2019`
--

CREATE TABLE `entrevista_casd_2019` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `numero_pessoas` int(11) NOT NULL,
  `iptu` float NOT NULL,
  `veiculos` float NOT NULL,
  `holerites_1` float NOT NULL,
  `holerites_2` float NOT NULL,
  `holerites_3` float NOT NULL,
  `aposentadorias` float NOT NULL,
  `auxilios` float NOT NULL,
  `renda_bruta` float NOT NULL,
  `rbpc` float NOT NULL,
  `agua_1` float NOT NULL,
  `agua_2` float NOT NULL,
  `agua_3` float NOT NULL,
  `luz_1` float NOT NULL,
  `luz_2` float NOT NULL,
  `luz_3` float NOT NULL,
  `net_1` float NOT NULL,
  `net_2` float NOT NULL,
  `net_3` float NOT NULL,
  `aluguel` float NOT NULL,
  `outros_gastos` float NOT NULL,
  `gastos_totais` float NOT NULL,
  `renda_liq` float NOT NULL,
  `rlpc` float NOT NULL,
  `obs` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `entrevista_casd_2019`
--

INSERT INTO `entrevista_casd_2019` (`id`, `id_user`, `numero_pessoas`, `iptu`, `veiculos`, `holerites_1`, `holerites_2`, `holerites_3`, `aposentadorias`, `auxilios`, `renda_bruta`, `rbpc`, `agua_1`, `agua_2`, `agua_3`, `luz_1`, `luz_2`, `luz_3`, `net_1`, `net_2`, `net_3`, `aluguel`, `outros_gastos`, `gastos_totais`, `renda_liq`, `rlpc`, `obs`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(4, 1, 4, 123, 0, 23, 123, 132, 12, 3123, 0, 0, 1, 321, 3, 132, 132, 1, 321, 231, 231, 23, 123, 0, 0, 0, NULL),
(5, 1, 456, 456, 0, 465, 4, 54, 6564, 6465, 0, 0, 465, 4, 64, 564, 6, 45, 4, 54, 456, 456, 45, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolas_vestibulinho_casd`
--

CREATE TABLE `escolas_vestibulinho_casd` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escolas_vestibulinho_casd`
--

INSERT INTO `escolas_vestibulinho_casd` (`id`, `nome`, `add_on`) VALUES
(1, 'Colegio Embraer Juarez Wanderley', '2017-06-21 08:04:52'),
(2, 'EE Armando D Oliveira Cobra', '2017-06-21 08:04:52'),
(3, 'EE Dep. Benedito Matarazzo', '2017-06-21 08:04:52'),
(4, 'EE Dr. Pedro Mascarenhas', '2017-06-21 08:04:52'),
(5, 'EE Dr. Rui Rodrigues Doria', '2017-06-21 08:04:52'),
(6, 'EE Elmano Ferreira Veloso', '2017-06-21 08:04:52'),
(7, 'EE Eng. Edgar Mello Mattos de Castro', '2017-06-21 08:04:52'),
(8, 'EE Euclides Bueno Miragaia', '2017-06-21 08:04:52'),
(9, 'EE Maj. Av. Jose Mariotto Ferreira', '2017-06-21 08:04:52'),
(10, 'EE Major Miguel Naked', '2017-06-21 08:04:52'),
(11, 'EE Marechal Rondon', '2017-06-21 08:04:52'),
(12, 'EE Marilda Ferreira de Brito Barros Pereira', '2017-06-21 08:04:52'),
(13, 'EE Moabe Cury', '2017-06-21 08:04:52'),
(14, 'EE Olimpio Catao', '2017-06-21 08:04:52'),
(15, 'EE Prof. Alceu Maynard Araujo', '2017-06-21 08:04:52'),
(16, 'EE Prof. Dorival Monteiro de Oliveira', '2017-06-21 08:04:52'),
(17, 'EE Prof. Estevam Ferri', '2017-06-21 08:04:52'),
(18, 'EE Prof. Francisco Lopes de Azevedo', '2017-06-21 08:04:52'),
(19, 'EE Prof. Francisco Pereira da Silva', '2017-06-21 08:04:52'),
(20, 'EE Prof. João Cursino', '2017-06-21 08:04:52'),
(21, 'EE Prof. Joaquim Andrade Meirelles', '2017-06-21 08:04:52'),
(22, 'EE Prof. Joaquim de Moura Candelaria', '2017-06-21 08:04:52'),
(23, 'EE Prof. Jorge Barbosa Moreira', '2017-06-21 08:04:52'),
(24, 'EE Prof. Jose Vieira Macedo', '2017-06-21 08:04:52'),
(25, 'EE Prof. Juvenal Machado de Araujo', '2017-06-21 08:04:52'),
(26, 'EE Prof. Nelson do Nascimento Monteiro', '2017-06-21 08:04:52'),
(27, 'EE Prof. Pedro Mazza', '2017-06-21 08:04:52'),
(28, 'EE Prof. Valmar Lourenco Santiago', '2017-06-21 08:04:52'),
(29, 'EE Prof. Xenofonte Strabao de Castro', '2017-06-21 08:04:52'),
(30, 'EE Profa. Ana Candida de Barros Molina', '2017-06-21 08:04:52'),
(31, 'EE Profa. Ayr Picanco Barbosa de Almeida', '2017-06-21 08:04:52'),
(32, 'EE Profa. Dinora Pereira Ramos Brito', '2017-06-21 08:04:52'),
(33, 'EE Profa. Dirce Elias', '2017-06-21 08:04:52'),
(34, 'EE Profa. Edera Irene Pereira de Oliveira Cardoso', '2017-06-21 08:04:52'),
(35, 'EE Profa. Elidia Tedesco de Oliveira', '2017-06-21 08:04:52'),
(36, 'EE Profa. Geraldina Coelho Monteiro', '2017-06-21 08:04:52'),
(37, 'EE Profa. Ilza Irma Moeller Coppio', '2017-06-21 08:04:52'),
(38, 'EE Profa. Jeni Davi Bacha', '2017-06-21 08:04:52'),
(39, 'EE Profa. Lourdes Maria de Camargo', '2017-06-21 08:04:52'),
(40, 'EE Profa. Malba Thereza Ferraz Campaner', '2017-06-21 08:04:52'),
(41, 'EE Profa. Marcia Helena Barbosa Lino', '2017-06-21 08:04:52'),
(42, 'EE Profa. Maria Aparecida Verissimo Madureira Ramos', '2017-06-21 08:04:52'),
(43, 'EE Profa. Maria Dolores Verissimo Madureira', '2017-06-21 08:04:52'),
(44, 'EE Profa. Maria Luiza de Guimaraes Medeiros', '2017-06-21 08:04:52'),
(45, 'EE Profa. Nilce Conceicao de Lima', '2017-06-21 08:04:52'),
(46, 'EE Profa. Ruth Coutinho Sobreira', '2017-06-21 08:04:52'),
(47, 'EE Profa. Sonia Maria Alexandre Pereira', '2017-06-21 08:04:52'),
(48, 'EE Profa. Zilah Ferreira Viagi Passarelli de Campos', '2017-06-21 08:04:52'),
(49, 'EE Yoshiya Takaoka', '2017-06-21 08:04:52'),
(50, 'ETEC Aquarius', '2017-06-21 08:04:52'),
(51, 'ETEC Extensão EE Prof Elidia Tedesco de Oliveira', '2017-06-21 08:04:52'),
(52, 'ETEC Extensão EE Prof Jose Vieira Macedo', '2017-06-21 08:04:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolas_vestibulinho_casdinho`
--

CREATE TABLE `escolas_vestibulinho_casdinho` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escolas_vestibulinho_casdinho`
--

INSERT INTO `escolas_vestibulinho_casdinho` (`id`, `nome`, `add_on`) VALUES
(1, 'Adelia Chucri Neme', '2017-08-01 13:34:10'),
(2, 'Alceu Maynard Araujo Professor', '2017-08-01 13:34:10'),
(3, 'Alvaro Goncalves Prof', '2017-08-01 13:34:10'),
(4, 'Amintas Rocha Brito Professor', '2017-08-01 13:34:10'),
(5, 'Ana Berlingmacedo Profa', '2017-08-01 13:34:10'),
(6, 'Ana Candida de Barros Molina Professora', '2017-08-01 13:34:10'),
(7, 'Ana Herondina Soares Schychof Professora', '2017-08-01 13:34:10'),
(8, 'Antonio Palma Sobrinho Prof', '2017-08-01 13:34:10'),
(9, 'Arlete Eloiza Ferreira Teixeira Professora', '2017-08-01 13:34:10'),
(10, 'Aurea C Rodrigues Profa', '2017-08-01 13:34:10'),
(11, 'Ayr Picanco Barbosa de Almeida Professora', '2017-08-01 13:34:10'),
(12, 'Bairro Bengalar', '2017-08-01 13:34:10'),
(13, 'Bairro Bom Sucesso', '2017-08-01 13:34:10'),
(14, 'Bairro das Pernambucanas', '2017-08-01 13:34:10'),
(15, 'Bairro Turvo de Baixo', '2017-08-01 13:34:10'),
(16, 'Benedito Matarazzo Deputado', '2017-08-01 13:34:10'),
(17, 'Centro Atend Socioeduc Adolesc Sao Jose dos Campos Ui', '2017-08-01 13:34:10'),
(18, 'Dinora Pereira Ramos Brito Professora', '2017-08-01 13:34:10'),
(19, 'Dirce Elias Professora', '2017-08-01 13:34:10'),
(20, 'Domingos de Macedo Custodio Professor', '2017-08-01 13:34:10'),
(21, 'Dosulina Chenque Chaves de Andrade Profa', '2017-08-01 13:34:10'),
(22, 'Edera Irene Pereira de Oliveira Cardoso Professora', '2017-08-01 13:34:10'),
(23, 'Edewaldo Freitas Gaia Sant Ana Professor', '2017-08-01 13:34:10'),
(24, 'Edgar Mello Mattos de Castro Engenheiro', '2017-08-01 13:34:10'),
(25, 'Elidia Tedesco de Oliveira Professora', '2017-08-01 13:34:10'),
(26, 'Elizabete de Paula Honorato Profa', '2017-08-01 13:34:10'),
(27, 'Elmano Ferreira Veloso', '2017-08-01 13:34:10'),
(28, 'Elza Regina Ferreira Bevilacqua Profa', '2017-08-01 13:34:10'),
(29, 'Euclides Bueno Miragaia', '2017-08-01 13:34:10'),
(30, 'Eunice Cordeiro dos Santos Rodrigues Professora', '2017-08-01 13:34:10'),
(31, 'Felicio Savastano Professor', '2017-08-01 13:34:10'),
(32, 'Francisco Joao Leme', '2017-08-01 13:34:10'),
(33, 'Francisco Lopes de Azevedo Professor', '2017-08-01 13:34:10'),
(34, 'Francisco Pereira da Silva Professor', '2017-08-01 13:34:10'),
(35, 'Geraldina Coelho Monteiro Professora', '2017-08-01 13:34:10'),
(36, 'Geraldo de Almeida', '2017-08-01 13:34:10'),
(37, 'Helio Augusto de Souza Prof', '2017-08-01 13:34:10'),
(38, 'Henriqueta Costa Porto Professora', '2017-08-01 13:34:10'),
(39, 'Homera da Silva Braga Profa', '2017-08-01 13:34:10'),
(40, 'Ignez Sagula Fossa Profa', '2017-08-01 13:34:10'),
(41, 'Ildete Mendonca Barbosa Profa', '2017-08-01 13:34:10'),
(42, 'Ilga Pusplatais Profa', '2017-08-01 13:34:10'),
(43, 'Ilza Irma Moeller Coppio Professora', '2017-08-01 13:34:10'),
(44, 'Iracema Ribeiro de Freitas', '2017-08-01 13:34:10'),
(45, 'Jacyra Vieira Baracho Profa', '2017-08-01 13:34:10'),
(46, 'Jeni Davi Bacha Professora', '2017-08-01 13:34:10'),
(47, 'Joao Cursino', '2017-08-01 13:34:10'),
(48, 'Joao Ferreira dos Santos Professor', '2017-08-01 13:34:10'),
(49, 'Joao Morotti Filho', '2017-08-01 13:34:10'),
(50, 'Joaquim Andrade Meirelles Professor', '2017-08-01 13:34:10'),
(51, 'Joaquim de Moura Candelaria Professor', '2017-08-01 13:34:10'),
(52, 'Jorge Barbosa Moreira Professor', '2017-08-01 13:34:10'),
(53, 'Jose Antonio Coutinho Condino Professor', '2017-08-01 13:34:10'),
(54, 'Jose Frederico Marques Professor', '2017-08-01 13:34:10'),
(55, 'Jose Mariotto Ferreira Major Aviador', '2017-08-01 13:34:10'),
(56, 'Julia Bernardes Rodrigues Professora', '2017-08-01 13:34:10'),
(57, 'Juvenal Machado de Araujo Professor', '2017-08-01 13:34:10'),
(58, 'Leonor Pereira Nunes Galvao Profa', '2017-08-01 13:34:10'),
(59, 'Lourdes Maria de Camargo Professora', '2017-08-01 13:34:10'),
(60, 'Lucia Pereira Rodrigues Profa', '2017-08-01 13:34:10'),
(61, 'Luiz Leite Prof', '2017-08-01 13:34:10'),
(62, 'Luzia Levina Aparecida Borges Profa', '2017-08-01 13:34:10'),
(63, 'Malba Thereza Ferraz Campaner Professora', '2017-08-01 13:34:10'),
(64, 'Marcia Helena Barbosa Lino Professora', '2017-08-01 13:34:10'),
(65, 'Maria Amelia Wakamatsu Profa', '2017-08-01 13:34:10'),
(66, 'Maria Aparecida Santos Ronconi Profa', '2017-08-01 13:34:10'),
(67, 'Maria Aparecida Verissimo Madureira Ramos Professora', '2017-08-01 13:34:10'),
(68, 'Maria Augusta Moreira da Costa Profa', '2017-08-01 13:34:10'),
(69, 'Maria de Melo Profa', '2017-08-01 13:34:10'),
(70, 'Maria Dolores Verissimo Madureira Professora', '2017-08-01 13:34:10'),
(71, 'Maria Gomide Santos de Souza Professora', '2017-08-01 13:34:10'),
(72, 'Maria Nazareth de Moura Veronese Profa', '2017-08-01 13:34:10'),
(73, 'Maria Ofelia Veneziani Pedrosa Profa', '2017-08-01 13:34:10'),
(74, 'Mariana Teixeira Cornelio Profa', '2017-08-01 13:34:10'),
(75, 'Marilda Ferreira de Brito Barros Pereira', '2017-08-01 13:34:10'),
(76, 'Martha Abib Castanho Professora', '2017-08-01 13:34:10'),
(77, 'Mauricio Anisse Cury Doutor', '2017-08-01 13:34:10'),
(78, 'Mercedes Carnevalli Klein Profa', '2017-08-01 13:34:10'),
(79, 'Mercedes Rachid Edwards', '2017-08-01 13:34:10'),
(80, 'Miguel Naked Major', '2017-08-01 13:34:10'),
(81, 'Moabe Cury', '2017-08-01 13:34:10'),
(82, 'Moacyr Benedicto de Souza Prof', '2017-08-01 13:34:10'),
(83, 'Najla Jamile Santos Machado de Araujo Professora', '2017-08-01 13:34:10'),
(84, 'Nelson Ferreira da Silva Professor', '2017-08-01 13:34:10'),
(85, 'Nilce Conceicao de Lima Professora', '2017-08-01 13:34:10'),
(86, 'Norma de Conti Simao Profa', '2017-08-01 13:34:10'),
(87, 'Olimpio Catao', '2017-08-01 13:34:10'),
(88, 'Otacilia Madureira de Moura Profa', '2017-08-01 13:34:10'),
(89, 'Palmyra Sant Anna Profa', '2017-08-01 13:34:10'),
(90, 'Pedro de Alcantara Dom', '2017-08-01 13:34:10'),
(91, 'Pedro Mascarenhas Doutor', '2017-08-01 13:34:10'),
(92, 'Pedro Mazza Professor', '2017-08-01 13:34:10'),
(93, 'Possidonio Jose de Freitas', '2017-08-01 13:34:10'),
(94, 'Possidonio Salles Professor', '2017-08-01 13:34:10'),
(95, 'Rio Comprido', '2017-08-01 13:34:10'),
(96, 'Rondon Marechal', '2017-08-01 13:34:10'),
(97, 'Rosa Tomita Profa', '2017-08-01 13:34:10'),
(98, 'Rui Rodrigues Doria Doutor', '2017-08-01 13:34:10'),
(99, 'Ruth Coutinho Sobreiro Professora', '2017-08-01 13:34:10'),
(100, 'Ruth Nunes da Trindade Profa', '2017-08-01 13:34:10'),
(101, 'Sant Ana do Paraiba', '2017-08-01 13:34:10'),
(102, 'Sebastiana Cobra Profa', '2017-08-01 13:34:10'),
(103, 'Silvana Maria Ribeiro de Almeida Profa', '2017-08-01 13:34:10'),
(104, 'Sonia Maria Alexandre Pereira Professora', '2017-08-01 13:34:10'),
(105, 'Sonia Maria Pereira da Silva Profa', '2017-08-01 13:34:10'),
(106, 'Suely Antunes de Mello Professora', '2017-08-01 13:34:10'),
(107, 'Therezinha do Menino Jesus Soares do Nascimento Profa', '2017-08-01 13:34:10'),
(108, 'Ubirajara Berna de Chiara Ubirajara Brasil', '2017-08-01 13:34:10'),
(109, 'Vera Babo de Oliveira Profa', '2017-08-01 13:34:10'),
(110, 'Vera Lucia Carnevalli Barreto Profa', '2017-08-01 13:34:10'),
(111, 'Waldemar Ramos Prof', '2017-08-01 13:34:10'),
(112, 'Wilma Ragazzi Boccardo Professora', '2017-08-01 13:34:10'),
(113, 'Xenofonte Strabao de Castro Professor', '2017-08-01 13:34:10'),
(114, 'Yoshiya Takaoka', '2017-08-01 13:34:10'),
(115, 'Zilah Ferreira Viagi Passarelli de Campos Professora', '2017-08-01 13:34:10'),
(116, 'Zilda Altimira Soci Professora', '2017-08-01 13:34:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interesseparceiro`
--

CREATE TABLE `interesseparceiro` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `site` varchar(60) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `enviado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `interesseparceiro`
--

INSERT INTO `interesseparceiro` (`id`, `nome`, `email`, `site`, `telefone`, `mensagem`, `enviado_em`) VALUES
(1, 'segews', 'gse@svn.c', 'sddv', 'vsddv', 'wefv', '2017-05-24 23:12:26'),
(2, 'hgdh', 'htrh@dsfdcf.c', 'd', 'egce', 'cegggv', '2017-05-25 23:46:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interessevoluntario`
--

CREATE TABLE `interessevoluntario` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `interesse` varchar(20) NOT NULL,
  `enviado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`id`, `name`, `curso`) VALUES
(1, 'Química', 1),
(2, 'Física', 1),
(3, 'Matemática', 1),
(4, 'Biologia', 1),
(5, 'Português', 1),
(6, 'Inglês', 1),
(7, 'Filosofia/Sociologia', 1),
(8, 'Geografia', 1),
(9, 'História', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `curso`, `id_materia`, `id_user`) VALUES
(2, 'casd', 1, 2),
(4, '', 1, 4),
(5, '', 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_daniel`
--

CREATE TABLE `professor_daniel` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `content` text,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_daniel`
--

INSERT INTO `professor_daniel` (`id`, `tipo`, `title`, `content`, `data`) VALUES
(1, 'nome', 'Daniel', NULL, NULL),
(2, 'apelido', 'Daniel', NULL, NULL),
(3, 'descricao', 'Uma descrição do professor.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_danirolopes`
--

CREATE TABLE `professor_danirolopes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `content` text,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_danirolopes`
--

INSERT INTO `professor_danirolopes` (`id`, `tipo`, `title`, `content`, `data`) VALUES
(1, 'nome', 'Daniel Rocha Lopes', NULL, NULL),
(2, 'apelido', 'Daniel', NULL, NULL),
(3, 'descricao', 'Aqui é espaço pra uma descrição do professor', NULL, NULL),
(4, 'recado', 'ghwejikghiwahi', 'rhehdhnbejnea', '2018-03-23 13:15:37'),
(8, 'material', 'Novo', 'HUM61 - P2.docx', '2018-03-25 23:46:25'),
(9, 'material', 'pdf', 'error_site_casd.pdf', '2018-04-05 23:04:04'),
(10, 'material', 'Daniel', 'Instituto Tecnológico de Aeronáutica.docx', '2018-04-05 23:06:12'),
(11, 'material', 'feewf', 'Caguei_pra_essa_porra_cabeça.docx', '2018-04-05 23:12:29'),
(12, 'material', 'rerd', 'Viaçao_Sampaio___Venda_de_passagens_online.pdf', '2018-04-05 23:13:47'),
(14, 'recado', 'NDAJKDJKSA', 'sddnddjkbvndsklvdk', '2018-05-16 17:57:31'),
(15, 'recado', 'NDAJKDJKSA', 'sddnddjkbvndsklvdk', '2018-05-16 17:58:26'),
(16, 'recado', 'NDAJKDJKSA', 'sddnddjkbvndsklvdk', '2018-05-16 18:02:16'),
(17, 'recado', 'NDAJKDJKSA', 'sddnddjkbvndsklvdk', '2018-05-16 18:03:57'),
(18, 'recado', 'NDAJKDJKSA', 'sddnddjkbvndsklvdk', '2018-05-16 18:13:33'),
(19, 'recado', 'NDAJKDJKSA', 'sddnddjkbvndsklvdk', '2018-05-16 18:15:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_germano`
--

CREATE TABLE `professor_germano` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `content` text,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_germano`
--

INSERT INTO `professor_germano` (`id`, `tipo`, `title`, `content`, `data`) VALUES
(1, 'nome', 'Germano', NULL, NULL),
(2, 'apelido', 'Germano', NULL, NULL),
(3, 'descricao', 'Uma descrição do professor.', NULL, NULL),
(4, 'material', 'Danuiadb', 'Exame - Kleba.docx', '2018-04-01 19:30:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0' COMMENT 'Role 1 = admin, Role 2 = prof, Role 0 = default'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `nome`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', '$2a$06$dZyX3aca79LqLwnqUro.w.r3Qljen2Q2cKjKFXUCeDbvxq0ZRPku6', 1),
(2, 'Daniel', 'danirolopes', '$2y$12$Mjc4ODg5MTc4NWFiZDU0O.wk0QaKzX4d3xVzuDRDPglwQG4r6LSM2', 2),
(4, 'Daniel', 'daniel', '$2y$12$MTA0ODU0MzczMTVhYmQ2YOWfKBrpKK38H5Wfj9VIeOFkZUj/h2S0K', 2),
(5, 'Germano', 'germano', '$2y$12$MjA3Mzk1MjM3NTVhYzEzMuG0WVrMLvzsgUBtSemJ1ob5I0YLyMxCW', 2),
(6, 'Assistente Social', 'assistente', '$2y$12$KjXcACt/03x8109XxdTLjuNg9/0Qdjea5q6jBX9/QnUU5wJCsDAbS', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vestibulinho_casdinho_2018`
--

CREATE TABLE `vestibulinho_casdinho_2018` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `RG` varchar(30) NOT NULL,
  `CPF` varchar(30) DEFAULT NULL,
  `sexo` varchar(10) NOT NULL,
  `nascimento` varchar(15) NOT NULL,
  `responsavel` varchar(140) NOT NULL,
  `parentesco` varchar(20) NOT NULL,
  `telefone1` varchar(25) NOT NULL,
  `telefone2` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `necessidade` varchar(40) DEFAULT NULL,
  `serie` int(5) NOT NULL,
  `tipo_escola` varchar(25) NOT NULL,
  `nome_escola` varchar(70) NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `conheceu` varchar(50) NOT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `cor` varchar(12) NOT NULL,
  `automoveis` int(4) NOT NULL,
  `empregados` int(4) NOT NULL,
  `maquinas` int(4) NOT NULL,
  `banheiros` int(4) NOT NULL,
  `dvds` int(4) NOT NULL,
  `geladeiras` int(4) NOT NULL,
  `freezers` int(4) NOT NULL,
  `computadores` int(4) NOT NULL,
  `lavaloucas` int(4) NOT NULL,
  `microondas` int(4) NOT NULL,
  `motocicletas` int(4) NOT NULL,
  `secadoras` int(4) NOT NULL,
  `agua` varchar(20) NOT NULL,
  `pavimentacao` varchar(15) NOT NULL,
  `escolaridade_chefe` varchar(40) NOT NULL,
  `data_inscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vestibulinho_casdinho_2018`
--

INSERT INTO `vestibulinho_casdinho_2018` (`id`, `nome`, `sobrenome`, `RG`, `CPF`, `sexo`, `nascimento`, `responsavel`, `parentesco`, `telefone1`, `telefone2`, `email`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `necessidade`, `serie`, `tipo_escola`, `nome_escola`, `internet`, `conheceu`, `facebook`, `cor`, `automoveis`, `empregados`, `maquinas`, `banheiros`, `dvds`, `geladeiras`, `freezers`, `computadores`, `lavaloucas`, `microondas`, `motocicletas`, `secadoras`, `agua`, `pavimentacao`, `escolaridade_chefe`, `data_inscricao`) VALUES
(1, 'DANIEL', 'ROCHA LOPES', '12345', '06256573650', 'M', '17/04/1996', 'DANIEL ROCHA LOPES', 'PAI', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 7, 'PUBLICAFEDERAL', 'AYR PICANCO BARBOSA DE ALMEIDA PROFESSORA', 1, 'VISITA', 'NAO TENHO FACEBOOK', '', 1, 2, 3, 3, 2, 3, 1, 2, 1, 0, 1, 1, 'POCONASCENTE', 'TERRA', 'MEDIOINCOMPLETO', '2017-08-02 01:17:30'),
(2, 'DANIEL', 'ROCHA LOPES', '12345', NULL, 'M', '17/04/1997', 'DANIEL ROCHA LOPES', 'PAI', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 7, 'PUBLICAFEDERAL', 'AYR PICANCO BARBOSA DE ALMEIDA PROFESSORA', 1, 'VISITA', 'NAO TENHO FACEBOOK', '', 1, 2, 3, 3, 2, 3, 1, 2, 1, 0, 1, 1, 'POCONASCENTE', 'TERRA', 'MEDIOINCOMPLETO', '2017-08-02 01:20:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vestibulinho_casdinho_2019`
--

CREATE TABLE `vestibulinho_casdinho_2019` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `RG` varchar(30) NOT NULL,
  `CPF` varchar(30) DEFAULT NULL,
  `sexo` varchar(10) NOT NULL,
  `nascimento` varchar(15) NOT NULL,
  `responsavel` varchar(140) NOT NULL,
  `parentesco` varchar(20) NOT NULL,
  `telefone1` varchar(25) NOT NULL,
  `telefone2` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `necessidade` varchar(40) DEFAULT NULL,
  `serie` int(5) NOT NULL,
  `tipo_escola` varchar(25) NOT NULL,
  `nome_escola` varchar(70) NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `conheceu` varchar(50) NOT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `cor` varchar(12) NOT NULL,
  `automoveis` int(4) NOT NULL,
  `empregados` int(4) NOT NULL,
  `maquinas` int(4) NOT NULL,
  `banheiros` int(4) NOT NULL,
  `dvds` int(4) NOT NULL,
  `geladeiras` int(4) NOT NULL,
  `freezers` int(4) NOT NULL,
  `computadores` int(4) NOT NULL,
  `lavaloucas` int(4) NOT NULL,
  `microondas` int(4) NOT NULL,
  `motocicletas` int(4) NOT NULL,
  `secadoras` int(4) NOT NULL,
  `agua` varchar(20) NOT NULL,
  `pavimentacao` varchar(15) NOT NULL,
  `escolaridade_chefe` varchar(40) NOT NULL,
  `data_inscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vestibulinho_casd_2018`
--

CREATE TABLE `vestibulinho_casd_2018` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `RG` varchar(30) NOT NULL,
  `CPF` varchar(30) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `nascimento` varchar(15) NOT NULL,
  `responsavel` varchar(140) DEFAULT NULL,
  `parentesco` varchar(20) DEFAULT NULL,
  `telefone1` varchar(25) NOT NULL,
  `telefone2` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `necessidade` varchar(40) DEFAULT NULL,
  `escolaridade` varchar(50) NOT NULL,
  `tipo_escola` varchar(25) NOT NULL,
  `nome_escola` varchar(70) NOT NULL,
  `trabalha` tinyint(1) NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `ex_aluno` varchar(50) NOT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `cor` varchar(12) NOT NULL,
  `data_inscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nota_vestibulinho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vestibulinho_casd_2018`
--

INSERT INTO `vestibulinho_casd_2018` (`id`, `nome`, `sobrenome`, `RG`, `CPF`, `sexo`, `nascimento`, `responsavel`, `parentesco`, `telefone1`, `telefone2`, `email`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `necessidade`, `escolaridade`, `tipo_escola`, `nome_escola`, `trabalha`, `internet`, `ex_aluno`, `facebook`, `cor`, `data_inscricao`, `nota_vestibulinho`) VALUES
(1, 'Daniel', 'Lopes', '14533733', '06256573650', 'M', '17/04/1997', '', '', '3132440487', '3132440487', 'danirolopes@hotmail.com', '31560220', 'Rua Alair Marques Rodrigues', '430', 'Santa Amélia', 'Belo Horizonte', 'MG', '', 'medioCompleto', 'publicaFederal', 'escola2', 0, 0, 'cartaz', 'http://www.faacebook.com/danirolopes', '', '2017-06-13 09:40:53', NULL),
(2, 'Daniel', 'Rocha Lopes', '14533733', '06256573650', 'M', '17/04/1997', '', '', '3132440487', '', 'danirolopes@hotmail.com', '31560220', 'Rua Alair Marques Rodrigues', '430', 'CTA', 'Belo Horizonte', 'MG', '123456', 'medioCompleto', 'publicaEstadual', 'escola2', 0, 0, 'cartaz', 'Nao tenho Facebook', '', '2017-06-13 09:40:53', NULL),
(3, 'Teste', 'Teste', '123456', '06256573650', 'M', '17/06/1997', '', '', '123456', '12997482909', 'sdjh@sdfij.csesiub', '12228461', 'Rua H8B, 234', '1234', 'CTA', 'São José dos Campos', 'SP', '123456', 'cursando2ano', 'publicaEstadual', 'escola2', 0, 0, 'indicacaoVoluntario', 'Nao tenho Facebook', '', '2017-06-13 09:40:53', NULL),
(4, 'Teste', 'Teste', '123456', '06256573650', 'M', '17/06/1997', '', '', '123456', '12997482909', 'sdjh@sdfij.csesiub', '12228461', 'Rua H8B, 234', '1234', 'CTA', 'São José dos Campos', 'SP', '123456', 'cursando3ano', 'particula', 'escola1', 1, 0, '2012', '123456789', '', '2017-06-13 09:40:53', NULL),
(5, 'Teste', 'Teste', '464313', '4544654646', 'F', '17/04/1997', '123456', '', '12997482909', '', 'sdvkjhg@wefiub.cij', '12228461', 'Rua H8B', '123456', '123456', 'São José dos Campos', 'SP', 'Cego', 'cursando2ano', 'publicaFederal', 'escola1', 0, 1, '2010', '123456', '', '2017-06-13 09:40:53', NULL),
(6, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:40:53', NULL),
(7, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:40:53', NULL),
(8, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:43:59', NULL),
(9, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:46:40', NULL),
(10, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:46:49', NULL),
(11, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:47:04', NULL),
(12, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:48:48', NULL),
(13, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:50:06', NULL),
(14, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:51:02', NULL),
(15, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:52:08', NULL),
(16, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:53:16', NULL),
(17, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:53:39', NULL),
(18, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:54:02', NULL),
(19, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:54:23', NULL),
(20, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:54:42', NULL),
(21, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:55:04', NULL),
(22, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:55:45', NULL),
(23, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:56:44', NULL),
(24, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:56:49', NULL),
(25, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:57:21', NULL),
(26, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 09:58:37', NULL),
(27, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 10:00:31', NULL),
(28, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 10:01:34', NULL),
(29, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 10:05:30', NULL),
(30, 'DANIEL', 'ROCHA LOPES', '123456789', '06256573650', 'M', '11/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', '', '234', '', '', '', 'OIOIOI', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA3', 1, 0, 'VISITA', 'NAO TENHO FACEBOOK', '', '2017-06-13 10:06:09', NULL),
(31, 'RAFAEL', 'PEREIRA', '789456', '12345678912', 'F', '19/03/1964', '', '', '123456', '', 'KDUGGCS@IUDK.DCSI', '31560220', '', '220', '', '', '', '', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA1', 1, 1, '2017', 'NAO TENHO FACEBOOK', '', '2017-06-13 10:12:42', NULL),
(32, 'RAFAEL', 'PEREIRA', '789456', '12345678912', 'F', '19/03/1964', '', '', '123456', '', 'KDUGGCS@IUDK.DCSI', '31560220', '', '220', '', '', '', '', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA1', 1, 1, '2017', 'NAO TENHO FACEBOOK', '', '2017-06-13 10:14:40', NULL),
(33, 'VICTOR', 'BREDER', '12345678', '123456789', 'M', '21/78/9090', '', '', '123456789', '', 'CSY@CAS.B', '12228461', '', '234', '', '', '', '', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA1', 1, 1, '2017', 'NAO TENHO FACEBOOK', '', '2017-06-14 12:07:21', NULL),
(34, 'VICTOR', 'BREDER', '12345678', '3456789', 'M', '13/45/6789', '', '', '23456789', '', 'S@CBHASC.VO', '12228461', 'RUA H8B', '234567', 'CAMPUS DO CTA', 'SãO JOSé DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULA', 'ESCOLA1', 1, 1, '2017', 'NAO TENHO FACEBOOK', '', '2017-06-14 12:11:13', NULL),
(35, 'HUMBERTO', 'OLIVEIRA LOPES', '12345678', '12345678', 'M', '01/12/1966', '', '', '1234567', '', 'HUMBEROOLIVEIRALOPES@HOTMAIL.COM', '31560220', 'RUA ALAIR MARQUES RODRIGUES', '430', 'SANTA AMÉLIA', 'BELO HORIZONTE', 'MG', 'EU', 'MEDIOCOMPLETO', 'PARTICULAR', 'ESCOLA1', 1, 1, 'OUTRO', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-15 23:23:42', NULL),
(36, 'DANIEL', 'ROCHA LOPES', '2345', '23456', 'F', '17/04/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'ESCOLA1', 1, 1, '2017', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-17 17:58:48', NULL),
(37, 'RAFAEL', 'PEREIRA', '123456789', '06256573650', 'M', '11/06/1994', 'DANIEL ROCHA LOPES', '', '123456', '12997482909', 'PEREIRA@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'EE PROFA. AYR PICANCO BARBOSA DE ALMEIDA', 1, 1, '2014', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-21 08:24:33', NULL),
(38, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '19/03/1964', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '2010', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-22 00:14:21', NULL),
(39, 'ANA LUIZA', 'CAVALCANTE', '123456', '04581361311', 'F', '09/10/1997', '', '', '123456', '', 'ANALUIZACAVALCANTE09@GMAIL.COM', '12228460', 'RUA H8A', '103', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', 'ALUNO DO ITA', 'MEDIOCOMPLETO', 'PARTICULAR', 'EE PROFA. MARIA DOLORES VERISSIMO MADUREIRA', 1, 1, 'INDICACAOVOLUNTARIO', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-24 01:34:52', NULL),
(40, 'RAFAELLA', 'BAMBOKIAN', '123456', '123456', 'F', '12/12/1221', '', '', '123456', '', 'SDFG@U8Y8HRS.SFDG', '12228460', 'RUA H8A', '101', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', 'CANHOTA', 'MEDIOCOMPLETO', 'PARTICULAR', 'EE ELMANO FERREIRA VELOSO', 1, 1, '2010', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-24 02:48:56', NULL),
(41, 'ZSASS', 'DFDFEDF', 'FG', '3235544545', 'F', '44/23/5354', '', '', '4556435', '', 'ADCU@SFD.ADCS', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '2017', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-24 02:51:04', NULL),
(42, 'DANIEL', 'ROCHA LOPES', '123456', '1234567895', 'F', '17/04/199', '', '', '12997482909', '', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-25 08:41:23', NULL),
(43, 'DANIEL', 'ROCHA LOPES', '123456', '1234567895', 'F', '17/04/199', '', '', '12997482909', '', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-25 08:43:33', NULL),
(44, 'DANIEL', 'ROCHA LOPES', '123456', '1234567895', 'F', '17/04/1997', '', '', '12997482909', '', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-25 08:50:54', NULL),
(45, 'DANIEL', 'ROCHA LOPES', '123456', '123456', 'F', '17/04/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '2015', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-25 08:56:24', NULL),
(46, 'AMANDA', 'TRÓPIA RESENDE', '123456789', '13896940627', 'F', '17/07/1996', '', '', '12345678', '', 'ASCUYDAGYJ@GYUH.CHU', '12228460', 'RUA H8A', '23878', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', 'EU', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, '2010', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-25 21:15:48', NULL),
(47, 'DANIEL', 'ROCHA LOPES', '1234567', '123456789', 'F', '17/94/1997', 'DANIEL ROCHA LOPES', '', '12997482909', '', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '430', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PARTICULAR', 'COLEGIO EMBRAER JUAREZ WANDERLEY', 1, 1, 'INDICACAOVOLUNTARIO', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-06-26 02:40:22', NULL),
(48, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '17/04/1997', '', '', '12997482909', '123456', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'CURSANDO3ANO', 'PUBLICAFEDERAL', 'EE MAJ. AV. JOSE MARIOTTO FERREIRA', 0, 0, '', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-07-01 20:51:49', NULL),
(49, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '17/04/1997', '', '', '12997482909', '123456', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'CURSANDO3ANO', 'PUBLICAFEDERAL', 'EE MAJ. AV. JOSE MARIOTTO FERREIRA', 0, 0, '', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-07-01 20:52:25', NULL),
(50, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '17/04/1997', '', '', '12997482909', '123456', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'CURSANDO3ANO', 'PUBLICAFEDERAL', 'EE MAJ. AV. JOSE MARIOTTO FERREIRA', 0, 0, '', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-07-01 20:52:52', NULL),
(51, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '17/04/1997', 'DANIEL ROCHA LOPES', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', 'NÃO', 'CURSANDO3ANO', 'PUBLICAESTADUAL', 'EE DR. PEDRO MASCARENHAS', 0, 0, '2012', 'HTTP://WWW.FACEBOOK.COM/DANIROLOPES', 'BRANCO', '2017-07-02 01:06:39', NULL),
(52, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '17/04/1997', 'DANIEL ROCHA LOPES', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', 'NÃO', 'CURSANDO3ANO', 'PARTICULAR', 'EE MARECHAL RONDON', 0, 0, '2012', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-07-02 01:23:31', NULL),
(53, 'DANIEL', 'ROCHA LOPES', '1234567', '06256573650', 'M', '17/06/1997', '', '', '12997482909', '12997482909', 'DANIROLOPES@GMAIL.COM', '12228461', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PUBLICAFEDERAL', 'EE PROF. ALCEU MAYNARD ARAUJO', 0, 1, '2012', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-08-01 22:00:51', NULL),
(54, 'DANIEL', 'ROCHA LOPES', '123456', '06256573650', 'M', '17/04/1997', '', '', '12997482909', '', 'DANIROLOPES@GMAIL.COM', 'NÃO TENHO CEP', 'RUA H8B', '234', 'CAMPUS DO CTA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'CURSANDO3ANO', 'PUBLICAFEDERAL', 'EE MAJOR MIGUEL NAKED', 0, 0, 'TVRADIOJORNAL', 'NAO TENHO FACEBOOK', 'AMARELO', '2017-08-08 03:01:27', NULL),
(55, 'MATHEUS', 'DA MOTA LIMA', '56.945.182-6', '49529646801', 'M', '28/08/2000', 'CRISTIANO APARECIDO DE LIMA', 'PAI', '12 99720-5980', '', 'MENINO_COTO@HOTMAIL.COM', '12215290', 'RUA VINTE E UM DE ABRIL', '777', 'MONTE CASTELO', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'CURSANDO2ANO', 'PUBLICAESTADUAL', 'EE PROFA. ANA CANDIDA DE BARROS MOLINA', 0, 1, 'INDICACAOCONHECIDO', 'HTTPS://WWW.FACEBOOK.COM/MATHEUS.MOTA.7503', 'BRANCO', '2017-08-30 22:02:23', NULL),
(56, 'ABDIAS', 'RIBEIRO', '055810192015-4', '61171193300', 'M', '06/04/2000', 'FRANCISCO DAS CHAGAS DO VALE MEDEIROS', 'TIO', '(12)997279991', '(98)992403085', 'ABDIASRIBEIRO10@GMAIL.COM', 'NÃO TENHO CEP', 'RUA DOS PROFESSORES', '58', 'JARDIM VALPARAÍBA', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'CURSANDO3ANO', 'PUBLICAESTADUAL', 'EE PROF. JUVENAL MACHADO DE ARAUJO', 0, 1, 'OUTROS', 'HTTPS://M.FACEBOOK.COM/ABDIAS.RIBEIRO.3?REF=BOOKMARKS', 'PARDO', '2017-08-30 22:07:34', NULL),
(57, 'DENISE', 'GOMES DOS SANTOS', '55.164.702-4', '22292226863', 'F', '19/05/1998', '', '', '12 98890 4120', '', 'DENISGSANTOS@YAHOO.COM.BR', '12215410', 'RUA CAMÉLIA', '13', 'MONTE CASTELO', 'SÃO JOSÉ DOS CAMPOS', 'SP', '', 'MEDIOCOMPLETO', 'PUBLICAESTADUAL', 'OUTRA', 0, 1, 'OUTROS', 'NAO TENHO FACEBOOK', 'BRANCO', '2017-08-30 22:29:34', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vestibulinho_casd_2019`
--

CREATE TABLE `vestibulinho_casd_2019` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `RG` varchar(30) NOT NULL,
  `CPF` varchar(30) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `nascimento` varchar(15) NOT NULL,
  `responsavel` varchar(140) DEFAULT NULL,
  `parentesco` varchar(20) DEFAULT NULL,
  `telefone1` varchar(25) NOT NULL,
  `telefone2` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `necessidade` varchar(40) DEFAULT NULL,
  `escolaridade` varchar(50) NOT NULL,
  `tipo_escola` varchar(25) NOT NULL,
  `nome_escola` varchar(70) NOT NULL,
  `trabalha` tinyint(1) NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `ex_aluno` varchar(50) NOT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `cor` varchar(12) NOT NULL,
  `data_inscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nota_vestibulinho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vestibulinho_casd_2019`
--

INSERT INTO `vestibulinho_casd_2019` (`id`, `nome`, `sobrenome`, `RG`, `CPF`, `sexo`, `nascimento`, `responsavel`, `parentesco`, `telefone1`, `telefone2`, `email`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `necessidade`, `escolaridade`, `tipo_escola`, `nome_escola`, `trabalha`, `internet`, `ex_aluno`, `facebook`, `cor`, `data_inscricao`, `nota_vestibulinho`) VALUES
(1, 'Daniel', 'Rocha Lopes', '14533733', '06256573650', 'M', '17/04/1997', NULL, NULL, '32645871920', NULL, 'danirolopes@gmail.com', '1234567', 'sjfgcuy', 'bcwjkvbjvb', 'vabevabj', 'vbdsjbvjh', ' bqkjbvj', NULL, 'vsdhjsbdjh', 'vdbakjsvbjs', 'sdbjkbvkj', 1, 1, 'evbjkbzdjfhb', NULL, 'dfkjhvj', '2018-04-12 00:23:30', 1),
(2, 'Daniel', 'Rocha Lopes', '14533733', '12345678910', 'M', '17/04/1997', NULL, NULL, '32645871920', NULL, 'danirolopes@gmail.com', '1234567', 'sjfgcuy', 'bcwjkvbjvb', 'vabevabj', 'vbdsjbvjh', ' bqkjbvj', NULL, 'vsdhjsbdjh', 'vdbakjsvbjs', 'sdbjkbvkj', 1, 1, 'evbjkbzdjfhb', NULL, 'dfkjhvj', '2018-04-12 00:23:30', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vestibulinho_variables`
--

CREATE TABLE `vestibulinho_variables` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `status` varchar(90) NOT NULL,
  `last_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vestibulinho_variables`
--

INSERT INTO `vestibulinho_variables` (`id`, `nome`, `status`, `last_change`) VALUES
(1, 'status_vestibulinho_casd', '0', '2018-05-07 02:47:49'),
(2, 'status_vestibulinho_casdinho', '1', '2018-04-13 11:48:01'),
(3, 'consulta_vestibulinho_casd', '1', '2017-06-11 05:32:16'),
(4, 'consulta_vestibulinho_casdinho', '1', '2017-06-11 06:36:35'),
(5, 'data_vestibulinho_casd', '0', '1997-04-17 03:00:00'),
(6, 'data_vestibulinho_casdinho', '0', '1997-04-17 03:00:00'),
(7, 'local_vestibulinho_casd', 'wgduyjfg', '2017-06-25 09:32:23'),
(8, 'local_vestibulinho_casdinho', 'sedaefgw', '2017-06-25 09:32:34'),
(9, 'termino_vestibulinho_casd', '0', '1997-04-17 03:00:00'),
(10, 'termino_vestibulinho_casdinho', '0', '1997-04-17 03:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrevista_casd_2019`
--
ALTER TABLE `entrevista_casd_2019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escolas_vestibulinho_casd`
--
ALTER TABLE `escolas_vestibulinho_casd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escolas_vestibulinho_casdinho`
--
ALTER TABLE `escolas_vestibulinho_casdinho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interesseparceiro`
--
ALTER TABLE `interesseparceiro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interessevoluntario`
--
ALTER TABLE `interessevoluntario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indexes for table `professor_daniel`
--
ALTER TABLE `professor_daniel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor_danirolopes`
--
ALTER TABLE `professor_danirolopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor_germano`
--
ALTER TABLE `professor_germano`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vestibulinho_casdinho_2018`
--
ALTER TABLE `vestibulinho_casdinho_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vestibulinho_casdinho_2019`
--
ALTER TABLE `vestibulinho_casdinho_2019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vestibulinho_casd_2018`
--
ALTER TABLE `vestibulinho_casd_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vestibulinho_casd_2019`
--
ALTER TABLE `vestibulinho_casd_2019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vestibulinho_variables`
--
ALTER TABLE `vestibulinho_variables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `entrevista_casd_2019`
--
ALTER TABLE `entrevista_casd_2019`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `escolas_vestibulinho_casd`
--
ALTER TABLE `escolas_vestibulinho_casd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `escolas_vestibulinho_casdinho`
--
ALTER TABLE `escolas_vestibulinho_casdinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `interesseparceiro`
--
ALTER TABLE `interesseparceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interessevoluntario`
--
ALTER TABLE `interessevoluntario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `professor_daniel`
--
ALTER TABLE `professor_daniel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `professor_danirolopes`
--
ALTER TABLE `professor_danirolopes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `professor_germano`
--
ALTER TABLE `professor_germano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vestibulinho_casdinho_2018`
--
ALTER TABLE `vestibulinho_casdinho_2018`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vestibulinho_casdinho_2019`
--
ALTER TABLE `vestibulinho_casdinho_2019`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vestibulinho_casd_2018`
--
ALTER TABLE `vestibulinho_casd_2018`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `vestibulinho_casd_2019`
--
ALTER TABLE `vestibulinho_casd_2019`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vestibulinho_variables`
--
ALTER TABLE `vestibulinho_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `professores_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

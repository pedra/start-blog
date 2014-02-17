SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ACCESS`
--

CREATE TABLE IF NOT EXISTS `ACCESS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IP` varchar(30) NOT NULL,
  `REQUEST` varchar(300) NOT NULL,
  `AGENT` varchar(100) NOT NULL,
  `USER` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log de acesso' AUTO_INCREMENT=716 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `COMENTARIO`
--

CREATE TABLE IF NOT EXISTS `COMENTARIO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST` int(10) unsigned NOT NULL COMMENT 'chave do POST.ID',
  `AUTOR` int(11) NOT NULL,
  `DATA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CONTEUDO` varchar(2000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comentários das postagens' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CONTEUDO`
--

CREATE TABLE IF NOT EXISTS `CONTEUDO` (
  `ID` int(11) NOT NULL COMMENT 'Chave de POST.ID',
  `TEXTO` text NOT NULL COMMENT 'Conteúdo da postagem (HTML)',
  `MDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Data de postagem/modificação',
  `MAUTOR` int(11) NOT NULL COMMENT 'Autor da postgem ou modificação',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Conteúdo das postagens : ID é chaveado em POST.ID';

--
-- Extraindo dados da tabela `CONTEUDO`
--

INSERT INTO `CONTEUDO` (`ID`, `TEXTO`, `MDATE`, `MAUTOR`) VALUES
(1, '<img src="http://phps.tk/asset/post/1/destaque.jpg" />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus augue erat, placerat vel semper vitae, volutpat a turpis. Mauris facilisis iaculis porttitor. Aliquam congue laoreet auctor. Phasellus sit amet lacinia erat. Duis justo nisi, tempor vel vestibulum et, bibendum eget ipsum. Suspendisse blandit ipsum eget sagittis aliquam. Mauris vehicula mauris ut arcu pharetra, a mattis ligula tristique. Etiam id tortor mollis, vehicula tellus id, aliquet nunc. Fusce porttitor orci in purus pellentesque, at ullamcorper lorem aliquam. Donec nec semper orci. In hac habitasse platea dictumst. Mauris ut posuere purus, nec consequat ante. Nulla vehicula augue nec erat tempor lacinia. Vivamus vel mi auctor, euismod odio sed, molestie odio. Cras faucibus semper mi a dictum. Maecenas vel nisl vulputate, vestibulum turpis vitae, mattis augue.</p>\r\n\r\n<p>Ut ultrices, eros a iaculis placerat, nulla augue ultricies justo, dapibus tristique quam nunc at sem. Suspendisse ac felis at ipsum varius dictum id quis ipsum. Fusce nunc turpis, tempus blandit vestibulum non, bibendum iaculis sapien. Suspendisse mollis enim vel lorem consectetur tempus. Morbi at varius nunc, eu ornare nulla. Aenean volutpat suscipit leo vel egestas. Integer eu nunc vehicula, semper nisl nec, sagittis sapien.</p>\r\n<h2>Lorem ipsum dolor</h2>\r\n<p>Fusce vitae auctor diam, a pulvinar urna. Donec sed pharetra nisl. Proin in nulla id est gravida aliquam. Vestibulum elit tellus, pulvinar sit amet sapien sed, fermentum feugiat enim. Etiam et ullamcorper sem. Vestibulum lectus magna, lacinia ut elementum eget, ullamcorper sed ipsum. Proin volutpat pulvinar est, sit amet vestibulum urna faucibus in. Pellentesque vel congue arcu. Curabitur egestas tortor non purus consectetur, non tempus lacus egestas. Proin feugiat tellus quis vestibulum porttitor. Curabitur ipsum diam, bibendum eu congue eu, bibendum sit amet est. Mauris viverra consectetur purus at fringilla. Praesent urna dolor, pharetra in auctor id, lacinia et urna. Phasellus in interdum dolor, sit amet aliquet est.</p>\r\n<p>Donec fermentum, risus accumsan porta vulputate, felis eros venenatis risus, in iaculis augue sem a est. Fusce eget libero a justo imperdiet gravida sit amet eget mi. Curabitur vel laoreet felis. Suspendisse consectetur sapien purus, ut sodales ligula consectetur nec. Nullam scelerisque velit nulla, ut adipiscing sem viverra et. In pellentesque volutpat odio, ut dictum odio suscipit quis. Ut vel molestie nisi.</p>\r\n<p>Praesent tempus dignissim euismod. Praesent commodo egestas orci, vitae adipiscing lorem pretium et. Vestibulum eget erat odio. Suspendisse sed accumsan tortor. Vivamus vel urna id tortor ultricies luctus. Nulla placerat varius eros. Etiam pulvinar dolor vel suscipit ullamcorper.</p>\r\n', '2014-02-04 06:21:59', 1),
(2, '<img src="http://phps.tk/asset/post/2/destaque.jpg" />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus augue erat, placerat vel semper vitae, volutpat a turpis. Mauris facilisis iaculis porttitor. Aliquam congue laoreet auctor. Phasellus sit amet lacinia erat. Duis justo nisi, tempor vel vestibulum et, bibendum eget ipsum. Suspendisse blandit ipsum eget sagittis aliquam. Mauris vehicula mauris ut arcu pharetra, a mattis ligula tristique. Etiam id tortor mollis, vehicula tellus id, aliquet nunc. Fusce porttitor orci in purus pellentesque, at ullamcorper lorem aliquam. Donec nec semper orci. In hac habitasse platea dictumst. Mauris ut posuere purus, nec consequat ante. Nulla vehicula augue nec erat tempor lacinia. Vivamus vel mi auctor, euismod odio sed, molestie odio. Cras faucibus semper mi a dictum. Maecenas vel nisl vulputate, vestibulum turpis vitae, mattis augue.</p>\r\n\r\n<p>Ut ultrices, eros a iaculis placerat, nulla augue ultricies justo, dapibus tristique quam nunc at sem. Suspendisse ac felis at ipsum varius dictum id quis ipsum. Fusce nunc turpis, tempus blandit vestibulum non, bibendum iaculis sapien. Suspendisse mollis enim vel lorem consectetur tempus. Morbi at varius nunc, eu ornare nulla. Aenean volutpat suscipit leo vel egestas. Integer eu nunc vehicula, semper nisl nec, sagittis sapien.</p>\r\n\r\n<p>Fusce vitae auctor diam, a pulvinar urna. Donec sed pharetra nisl. Proin in nulla id est gravida aliquam. Vestibulum elit tellus, pulvinar sit amet sapien sed, fermentum feugiat enim. Etiam et ullamcorper sem. Vestibulum lectus magna, lacinia ut elementum eget, ullamcorper sed ipsum. Proin volutpat pulvinar est, sit amet vestibulum urna faucibus in. Pellentesque vel congue arcu. Curabitur egestas tortor non purus consectetur, non tempus lacus egestas. Proin feugiat tellus quis vestibulum porttitor. Curabitur ipsum diam, bibendum eu congue eu, bibendum sit amet est. Mauris viverra consectetur purus at fringilla. Praesent urna dolor, pharetra in auctor id, lacinia et urna. Phasellus in interdum dolor, sit amet aliquet est.</p>\r\n<p>Donec fermentum, risus accumsan porta vulputate, felis eros venenatis risus, in iaculis augue sem a est. Fusce eget libero a justo imperdiet gravida sit amet eget mi. Curabitur vel laoreet felis. Suspendisse consectetur sapien purus, ut sodales ligula consectetur nec. Nullam scelerisque velit nulla, ut adipiscing sem viverra et. In pellentesque volutpat odio, ut dictum odio suscipit quis. Ut vel molestie nisi.</p>\r\n<p>Praesent tempus dignissim euismod. Praesent commodo egestas orci, vitae adipiscing lorem pretium et. Vestibulum eget erat odio. Suspendisse sed accumsan tortor. Vivamus vel urna id tortor ultricies luctus. Nulla placerat varius eros. Etiam pulvinar dolor vel suscipit ullamcorper.</p>\r\n', '2014-02-04 04:18:51', 2),
(3, '<iframe width="800" height="480" src="//www.youtube.com/embed/qVe-66Kl-Rg" frameborder="0" allowfullscreen></iframe>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus augue erat, placerat vel semper vitae, volutpat a turpis. Mauris facilisis iaculis porttitor. Aliquam congue laoreet auctor. Phasellus sit amet lacinia erat. Duis justo nisi, tempor vel vestibulum et, bibendum eget ipsum. Suspendisse blandit ipsum eget sagittis aliquam. Mauris vehicula mauris ut arcu pharetra, a mattis ligula tristique. Etiam id tortor mollis, vehicula tellus id, aliquet nunc. Fusce porttitor orci in purus pellentesque, at ullamcorper lorem aliquam. Donec nec semper orci. In hac habitasse platea dictumst. Mauris ut posuere purus, nec consequat ante. Nulla vehicula augue nec erat tempor lacinia. Vivamus vel mi auctor, euismod odio sed, molestie odio. Cras faucibus semper mi a dictum. Maecenas vel nisl vulputate, vestibulum turpis vitae, mattis augue.</p>', '2014-02-04 06:30:09', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Membros`
--

CREATE TABLE IF NOT EXISTS `Membros` (
  `User` int(11) NOT NULL,
  PRIMARY KEY (`User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `POST`
--

CREATE TABLE IF NOT EXISTS `POST` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTOR` int(11) NOT NULL DEFAULT '0',
  `ANO` int(11) NOT NULL,
  `MES` int(11) NOT NULL,
  `LINK` varchar(200) NOT NULL,
  `TITULO` varchar(200) NOT NULL,
  `RESUMO` varchar(2000) NOT NULL,
  `TAGS` varchar(200) NOT NULL,
  `DATA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `POST`
--

INSERT INTO `POST` (`ID`, `AUTOR`, `ANO`, `MES`, `LINK`, `TITULO`, `RESUMO`, `TAGS`, `DATA`) VALUES
(1, 1, 2014, 2, 'primeira-postagem-no-blog', 'Primeira Postagem no Blog', 'Esta é a primeira postagem do Blog sendo usada somente para testes.', 'blog, php, primeira, teste', '2014-02-04 00:17:07'),
(2, 2, 2014, 2, 'segunda-postagem-de-teste-no-blog', 'Segunda Postagem de Teste no Blog', 'Maecenas magna leo, interdum eget lacus vitae, pretium scelerisque sem. Aenean adipiscing, quam id feugiat adipiscing, neque augue scelerisque velit, et placerat tortor nibh quis dui. Fusce ac imperdiet leo. Vivamus sit amet tellus vitae augue ultricies consectetur. Integer et diam eros. Vestibulum pretium posuere fermentum. Proin sed sollicitudin velit, sed viverra libero.', 'blog, php, segundo, teste', '2014-02-04 00:17:07'),
(3, 2, 2014, 2, 'construindo-um-site-do-zero-com-php', 'Construindo um Site do Zero com PHP ', 'Primeiro HangOut do projeto "Site do Zero". ', 'blog, php, zero, site, construindo', '2014-02-04 06:31:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `USER`
--

CREATE TABLE IF NOT EXISTS `USER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) NOT NULL,
  `SENHA` varchar(100) NOT NULL,
  `TOKEN` varchar(100) NOT NULL,
  `NIVEL` int(11) NOT NULL DEFAULT '0',
  `NOME` varchar(100) NOT NULL,
  `AVATAR` varchar(200) NOT NULL DEFAULT 'image/users/0.jpg',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Usuários do site' AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `USER`
--

INSERT INTO `USER` (`ID`, `LOGIN`, `SENHA`, `TOKEN`, `NIVEL`, `NOME`, `AVATAR`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 10, 'Administrador', 'image/users/1.jpg'),
(2, 'BillRocha', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Bill Rocha', 'image/users/2.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `USERCAD`
--

CREATE TABLE IF NOT EXISTS `USERCAD` (
  `ID` int(11) NOT NULL COMMENT 'Chave de USER.ID',
  `EMAIL` varchar(100) NOT NULL,
  `SITE` varchar(100) NOT NULL,
  `SOBRE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Outras informações de cadastro do usuário.';

--
-- Extraindo dados da tabela `USERCAD`
--

INSERT INTO `USERCAD` (`ID`, `EMAIL`, `SITE`, `SOBRE`) VALUES
(1, 'prbr@ymail.com', 'http://phps.tk', 'Sou o atual administrador deste site.\r\nSolicite acesso, informações, etc, diretamente a mim , , ,'),
(2, 'prbr@ymail.com', 'http://billrocha.tk', 'Olá!\r\nSou programador PHP desde a versão 3!\r\nProgramava anteriormente em C++, Visual Basic e até em Assembler.\r\nHoje tenho me dedicado as aplicações web com o PHP e Html, CSS, Javascript, etc.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

USE `simple-website`;

CREATE TABLE IF NOT EXISTS `mp_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_desc` text,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `parent` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('A','I') NOT NULL DEFAULT 'A',
  `page_alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_name` (`page_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

INSERT INTO `mp_pages` (`page_id`, `page_title`, `page_desc`, `meta_keywords`, `meta_desc`, `sort_order`, `parent`, `status`, `page_alias`) VALUES
(1, 'Welcome!!!', 'This sample site is only meant for testing.<br><br>Happy Learning!!.', 'tags', 'descsds', 0, '-1', 'A', 'index');

CREATE TABLE IF NOT EXISTS `mp_tagline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagline1` varchar(255) DEFAULT NULL,
  `tagline2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `mp_tagline` (`id`, `tagline1`, `tagline2`) VALUES
(10, 'www.AmIWorking.com', 'Testing the lamp stack using simple website using php and mysql');

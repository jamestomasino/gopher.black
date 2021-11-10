<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

		<xsl:param name="this"/>
        <xsl:param name="prev"/>
        <xsl:param name="next"/>
        <xsl:param name="xml"/>

        <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="UTF-8" indent="yes" method="xml"/>

        <xsl:template match="/">
                <html xmlns="http://www.w3.org/1999/xhtml">
                        <head profile="http://gmpg.org/xfn/11">
                                <title>
                                        <xsl:value-of select="/rss/channel/title"/>
                                </title>
                                <!-- base href="http://www.tomasinoblog.com/" -->
                                <meta content="{rss/channel/description}" name="description" />
                                <meta content="Copyright © 2008 James Tomasino, All rights reserved." name="copyright" />
                                <meta content="text/html; charset=utf-8" name="Content-Type" />
                                <meta content="5 days" name="revisit-after" />
                                <meta content="Tomasino, Blog, James Tomasino, aloneone, notmedia, henrythemoose, henry the moose" name="keywords" />
                                <meta content="ALL" name="robots" />
                                <meta content="Global" name="distribution" />
                                <meta content="English" name="language" />
                                <meta content="Web Page" name="doc-type" />
                                <meta content="Living Document" name="doc-class" />
                                <meta content="Copywritten Work" name="doc-rights" />
                                <link href="global.css" media="all" rel="stylesheet" title="Simple Styles" type="text/css" />
                                <link href="http://www.tomasinoblog.com/%7B$xml%7D" rel="alternate" title="{/rss/channel/title}" type="application/rss+xml" />
				<link rel="openid.server" href="http://www.tomasinoblog.com/openid/MyID.config.php" />
				<link rel="openid.delegate" href="http://www.tomasinoblog.com/openid/MyID.config.php" />
                        </head>
                        <body id="www-tomasinoblog-com">
                                <div id="wrapper">
                                        <!-- Title Bar -->
                                        <div id="header">
                                                <span id="feedtitle">
                                                        <a accesskey="0" href="http://www.tomasinoblog.com/%7B/rss/channel/link%7D">
                                                                <xsl:value-of select="/rss/channel/title"/>
                                                        </a>
                                                </span>
                                                <span id="desc">
                                                        <xsl:value-of select="/rss/channel/description"/>
                                                </span>
                                        </div>
                                        <!-- About this Feed -->
                                        <div id="aboutThisFeed">
                                                <div id="info" class="vcard">
        						<span class="heading">Information</span>
        						<xsl:for-each select="/rss/channel/image">
        						
        							<p>
        								<img class="photo" alt="Blog Image" src="rss2html.xsl_files/url" />
        							</p>
        						
        							<p>
        								<span class="fn">James Tomasino</span>
        								<span id="aboutTheAuthor">
        									<xsl:value-of select="./description"/>
        								</span>
        							</p>
        							
        						</xsl:for-each>
        							<span class="hidden">Info:</span>
        							<span class="hidden tel">+14047712022</span>
        							<span class="hidden email">james(YEAR)@jamestomasino.com</span>
        							<span class="hidden adr">
        								<span class="type">Home</span>
        								<span class="street-address">493 N. Highland Ave. #25</span>
        								<span class="locality">Atlanta</span>
        								<span class="region">Georgia</span>
        								<span class="postal-code">30307</span>
        								<span class="country-name">USA</span>
        							</span>
        							<span class="hidden bday">Sun, 06 Jul 1980 11:03:00 -0500</span>
        							<span class="hidden geo">
        								<span class="latitude">33.767580</span>
        								<span class="longitude">-84.352212</span>
        							</span>
        							
        							
        							<a class="badge url" href="http://www.tomasinoblog.com/" rel="me" title="Blog">
        								<span class="badge-box">›››</span> Blog</a>
        							<a class="badge" href="http://books.tomasinoblog.com/" title="Book Reviews">
        								<span class="badge-box">›››</span> Book Reviews</a>
        							<a class="badge" href="http://pray.tomasinoblog.com/" title="Spritual Exercises">
        								<span class="badge-box">›››</span> Spritual Exercises</a>
        							<a class="badge" href="http://rss2pdf.com/?url=http://www.tomasinoblog.com/{$xml}" title="PDF">
        								<span class="badge-box">›››</span> PDF</a>
        							<a class="badge" href="http://www.tomasinoblog.com/%7B$xml%7D" title="RSS">
        								<span class="badge-box">›››</span> RSS</a>
        							<a class="badge" href="http://flickr.com/photos/tomasino" title="Flickr">
        								<span class="badge-box">›››</span> Flickr</a>
        							<a class="badge" href="http://microformats.org/wiki/hcard" title="hCard">
        								<span class="badge-box">›››</span> hCard</a>
        							<a class="badge" href="http://validator.w3.org/check?uri=referer" title="xHTML Valid">
        								<span class="badge-box">›››</span> xHTML Valid</a>
        							<a class="badge" href="http://jigsaw.w3.org/css-validator/check/referer" title="CSS Valid">
        								<span class="badge-box">›››</span> CSS Valid</a>
        							<a class="icon" href="http://www.nanowrimo.org/eng/user/410643" rel="me">
        									<img alt="NANOWRIMO 2008" src="rss2html.xsl_files/nanowrimo_wc.php" /></a>
                                                </div>
                                                <div id="xfn">
                                                        <span class="heading">Friends Network</span>
                                                        <a class="hidden" href="http://www.tomasinoblog.com/" rel="me">James Tomasino</a>
                                                        <a href="http://musing.kennbivins.com/" rel="friend met">Kenn Bivins</a>
                                                        <a href="http://mrks.livejournal.com/" rel="friend met">Markus Creasy</a>
                                                        <a href="http://toolshed.wtfno.org/" rel="acquaintance met">Jeff D.</a>
														<a href="http://geminigirl.wordpress.com/" rel="friend met">Sabrina Fowler</a>
														<a href="http://kristinjannfischer.wordpress.com/" rel="friend met">Kristin Jann-Fischer</a>
                                                        <a href="http://onlinegamers.org/" rel="friend met">John Lyden</a>
														<a href="http://www.thehavingfunclub.org/blog/" rel="contact">Kim Miller</a>
														<a href="http://veerle.duoh.com/" rel="contact">Veerle Pieters</a>
														<a href="http://www.octagonfudge.blogspot.com/" rel="friend met">Guin Thompson</a>
                                                        <a href="http://gardenstategoldenstate.blogspot.com/" rel="friend met">Christina Toms</a>
                                                        <a href="http://brandon.zarzoza.com/" rel="friend met">Brandon Zarzoza</a>
                                                        <a class="icon" href="http://gmpg.org/xfn">
                                                                <img alt="XFN Friendly" src="rss2html.xsl_files/xfn-btn.gif" />
                                                        </a>
                                                </div>
                                                <xsl:if test="count(/rss/channel/item)&gt;1">
                                                        <div id="pastPosts">
                                                                <span class="heading">Posts</span>
                                                                <xsl:if test="$prev">
                                                                        <span>
                                                                                <a class="nextpost" href="http://www.tomasinoblog.com/%7B/rss/channel/link%7D?page={$prev}">Next Page...</a>
                                                                        </span>
                                                                </xsl:if>

                                                                <xsl:for-each select="/rss/channel/item">
                                                                        <span>
                                                                                <xsl:variable name="itemID">
                                                                                        <xsl:value-of select="guid"/>
                                                                                </xsl:variable>
                                                                                <a href="http://www.tomasinoblog.com/?page={$this}#anc-{substring-after($itemID,%20'id=')}">
                                                                                        <xsl:choose>
                                                                                                <xsl:when test="not(title) or title = ''"> [Untitled] </xsl:when>
                                                                                                <xsl:otherwise>
                                                                                                        <xsl:choose>
                                                                                                                <xsl:when test="string-length(title) &gt; 24">
                                                                                                                        <xsl:value-of select="substring(title,1,24)"/>... </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                        <xsl:value-of select="title"/>
                                                                                                                </xsl:otherwise>
                                                                                                        </xsl:choose>
                                                                                                </xsl:otherwise>
                                                                                        </xsl:choose>
                                                                                </a>
                                                                        </span>
                                                                </xsl:for-each>
                                                                <xsl:if test="$next">
                                                                        <span>
                                                                                <a class="prevpost" href="http://www.tomasinoblog.com/%7B/rss/channel/link%7D?page={$next}">Previous Page...</a>
                                                                        </span>
                                                                </xsl:if>
                                                        </div>
                                                </xsl:if>
                                        </div>
                                        <!-- Main -->
                                        <div id="main">
                                                <xsl:if test="(($prev) or ($next))">
                                                        <div class="nav">
                                                                <xsl:if test="$next">
                                                                        <a href="http://www.tomasinoblog.com/%7B/rss/channel/link%7D?page={$next}">Previous Page</a>
                                                                        <xsl:if test="$prev"> / </xsl:if>
                                                                </xsl:if>
                                                                <xsl:if test="$prev">
                                                                        <a href="http://www.tomasinoblog.com/%7B/rss/channel/link%7D?page={$prev}">Next Page</a>
                                                                </xsl:if>
                                                        </div>
                                                </xsl:if>
                                                <!-- Items Loop -->
                                                <xsl:for-each select="/rss/channel/item">
                                                        <!-- Item -->
                                                        <xsl:element name="div">
                                                                <xsl:attribute name="class">item</xsl:attribute>
                                                                <!-- Enclosure -->
                                                                <xsl:for-each select="enclosure">
                                                                        <span class="enclosure">
                                                                                <a href="http://www.tomasinoblog.com/%7B@url%7D" title="Click to download a '{@type}' file of about {@length} bytes" type="{@type}">
                                                                                        <img alt="Click to download a '{@type}' file of about {@length} bytes" src="rss2html.xsl_files/dl_icon.gif" width="35" height="36" border="0" />
                                                                                </a>
                                                                        </span>
                                                                </xsl:for-each>
                                                                <!-- Title -->
                                                                <xsl:variable name="itemID">
                                                                        <xsl:value-of select="guid"/>
                                                                </xsl:variable>
                                                                <xsl:element name="a">
                                                                        <xsl:attribute name="href">
                                                                                <xsl:value-of select="link"/>
                                                                        </xsl:attribute>
                                                                        <xsl:attribute name="class">title</xsl:attribute>
                                                                        <xsl:attribute name="id">anc-<xsl:value-of select="substring-after($itemID, 'id=')"/>
                                                                        </xsl:attribute>

                                                                        <xsl:if test="position() &lt; 10">
                                                                                <xsl:attribute name="accesskey">
                                                                                        <xsl:value-of select="position()"/>
                                                                                </xsl:attribute>
                                                                        </xsl:if>

                                                                        <xsl:choose>
                                                                                <xsl:when test="not(title) or title = ''"> [Untitled] </xsl:when>
                                                                                <xsl:otherwise>
                                                                                        <xsl:value-of select="title"/>
                                                                                </xsl:otherwise>
                                                                        </xsl:choose>
                                                                </xsl:element>
                                                                <!-- Date -->
                                                                <xsl:if test="pubDate">
                                                                        <span class="pubDate">
                                                                                <xsl:value-of select="pubDate"/>
                                                                        </span>
                                                                        <span class="category">
                                                                                <xsl:if test="category"> ( <xsl:for-each select="category">
                                                                                                <xsl:value-of select="."/> </xsl:for-each>) </xsl:if>
                                                                        </span>
                                                                </xsl:if>
                                                                <!-- Description -->
                                                                <xsl:if test="description">
                                                                        <div class="description">
                                                                                <xsl:value-of disable-output-escaping="yes" select="description"/>
                                                                        </div>
                                                                </xsl:if>
                                                                <xsl:element name="a">
                                                                        <xsl:attribute name="href">
                                                                                <xsl:value-of select="comments"/>#disqus_thread
                                                                        </xsl:attribute>
                                                                        <xsl:attribute name="class">comments</xsl:attribute> Comment </xsl:element>
                                                        </xsl:element>
                                                </xsl:for-each>
                                                <xsl:if test="(($prev) or ($next))">
                                                        <xsl:element name="div">
                                                                <xsl:attribute name="class">nav</xsl:attribute>
                                                                <xsl:if test="$next">
                                                                        <xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="/rss/channel/link"/>?page=<xsl:value-of select="$next"/></xsl:attribute>Previous Page</xsl:element>
                                                                        <xsl:if test="$prev"> / </xsl:if>
                                                                </xsl:if>
                                                                <xsl:if test="$prev">
                                                                        <xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="/rss/channel/link"/>?page=<xsl:value-of select="$prev"/></xsl:attribute>Next Page</xsl:element>
                                                                </xsl:if>
                                                        </xsl:element>
                                                </xsl:if>
                                        </div>
                                        <!-- End Body -->
                                        <div id="footer"> This blog is authored in plain-text <a href="http://en.wikipedia.org/wiki/RSS_(file_format)">
                                                        <acronym title="Really Simple Syndication 2.0">RSS2.0</acronym>
                                                </a> using <a href="http://www.oxygenxml.com/">&lt;oXygen/&gt;</a> and <a href="http://www.vim.org/">vi</a>. The content you see on this page is generated using <a href="http://en.wikipedia.org/wiki/XSL_Transformations">
                                                        <acronym title="Extensible Stylesheet Language Transformation">XSLT</acronym>
                                                </a>, <a href="http://en.wikipedia.org/wiki/PHP">PHP</a>, and <a href="http://en.wikipedia.org/wiki/CSS">
                                                        <acronym title="Cascading Style Sheets">CSS</acronym>
                                                </a>. All source code and assets are available for your review. Feel free to use anything without permission. <ul>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/blog.xml">Blog <acronym title="Extensible Markup Language">XML</acronym> Source</a>
                                                        </li>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/books/books.xml">Book Reviews <acronym title="Extensible Markup Language">XML</acronym> Source</a>
                                                        </li>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/rss2html.xsl">
                                                                        <acronym title="Extensible Stylesheet Language Transformation">XSLT</acronym>
                                                                </a>
                                                        </li>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/index.php.html">Blog PHP</a>
                                                        </li>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/comments.php.html">Blog Comments PHP</a>
                                                        </li>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/global.css">Blog <acronym title="Cascading Style Sheets">CSS</acronym>
                                                                </a>
                                                        </li>
                                                        <li>
                                                                <a href="http://www.tomasinoblog.com/comments.css">Comments <acronym title="Cascading Style Sheets">CSS</acronym>
                                                                </a>
                                                        </li>

                                                </ul>
                                                <p>
                                                        <span style="font-style: italic;">Any scripture quotations are taken from the NEW AMERICAN STANDARD BIBLE®, Copyright © 1960, 1962, 1963, 1968, 1971, 1972, 1973, 1975, 1977, 1995 by The Lockman
                                                                Foundation. Used by permission.</span>
                                                </p>
                                        </div>
                                </div>
                                <script type="text/javascript">
//<![CDATA[
        var links = document.getElementsByTagName('a');
        var query = '?';
        for(var i = 0; i < links.length; i++) {
        	if(links[i].href.indexOf('#disqus_thread') >= 0) {
        		query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
        	}
        }
        document.write('<script type="text/javascript" src="http://disqus.com/forums/tomasinoblog/get_num_replies.js' + query + '"></' + 'script>');
//]]>
                                </script>
                                
                        </body>
                </html>
        </xsl:template>

</xsl:stylesheet>
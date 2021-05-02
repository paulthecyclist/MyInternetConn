<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>

</head>
<body>
  <h2>Davies Internet Connection</h2>
  <p>
	Every 30s I test to see if I can connect to the internet from my laptop over home wifi<br/>
	The first table shows all the times this attempt failed<br/>
	The second table is the complete log.
  </p>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Date</th>
      <th style="text-align:left">Connection OK?</th>
    </tr>
    <xsl:for-each select="log/connected[.='False']">
<tr>
      <td><xsl:value-of select="@datetime"/></td>
      <td><xsl:value-of select="."/></td>
    </tr>

    </xsl:for-each>
  </table>
  <p>Full log</p>
  
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Date</th>
      <th style="text-align:left">Connection OK?</th>
    </tr>
    <xsl:for-each select="log/connected">
<tr>
      <td><xsl:value-of select="@datetime"/></td>
      <td><xsl:value-of select="."/></td>
    </tr>

    </xsl:for-each>
  </table>
  <p>Note: It internet connection fails it takes up to 25s to timeout the attempted connection</p>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
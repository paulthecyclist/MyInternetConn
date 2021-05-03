<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Davies Internet Connection</h2>  
  <p>
	Every 30s I test to see if I can connect to the internet<br/>		
  </p>
  <br/>
  
  <table border="0" width="95%">
    <tr bgcolor="black" style="color:white">
      <th style="text-align:left">Date</th>
      <th style="text-align:left">Connection Status</th>
    </tr>
	 <xsl:for-each select="log/connected">
<xsl:choose>
        <xsl:when test=".='True'">
          <tr bgcolor="#9acd32" style="color:white">
      <td><xsl:value-of select="@datetime"/></td>
      <td>Ok></td>
    </tr>
        </xsl:when>
        <xsl:otherwise>
           <tr bgcolor="tomato" style="color:white">
      <td><xsl:value-of select="@datetime"/></td>
      <td>Fail</td>
    </tr>
        </xsl:otherwise>
      </xsl:choose>

   
    </xsl:for-each>
  </table>
  <p>Note: It internet connection fails it takes up to 25s to timeout the attempted connection</p>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
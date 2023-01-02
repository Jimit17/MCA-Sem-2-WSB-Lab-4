<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <style> 
      #about{
        background-color: #d8dea7 ;
        text-align: center;
        margin-bottom: 0px;
        padding: 30px;
    
        font-family: 'Roboto Mono', monospace;
        height: auto;
    }
    #abouttext{
        margin-bottom: 0px;
        width: 1150px;
        margin: auto;
        text-align: justify;
        font-size: 22px;
    }
    table{
      
      border-collapse: collapse;
      margin-top: 10px;
      margin: auto;
      margin-bottom: 30px;
      width: 1000px;
  }
  th{
      font-size: 22px;
  }
  td{
      font-size: 20px;
  }
  </style>
  </head>
  <body id="about">
    <h1 style="text-align:center;color:white"><u>To do List</u></h1>
  <table border="1">
    <tr bgcolor="#d8dea7">
      <th>ID</th>
      <th>Sender</th>
      <th>Reciver</th>
      <th>Distance</th>
      <th>Time</th>
      <th>Content</th>
      <th>Instructions</th>
    </tr>
    <xsl:for-each select="courier/order">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="sender"/></td>
      <td><xsl:value-of select="reciver"/></td>
      <td><xsl:value-of select="distance"/></td>
      <td><xsl:value-of select="time"/></td>
      <td><xsl:value-of select="content"/></td>
      <td><xsl:value-of select="instructions"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
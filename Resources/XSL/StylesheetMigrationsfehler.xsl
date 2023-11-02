<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="4.01" encoding="UTF-8"/>
    <xsl:template match="MigrationProtokoll">  
       
        <html>  
            <head>
                <title>Unbenanntes Dokument</title>                 
                    <style type="text/css">
                        
                        <xsl:text disable-output-escaping="yes">
                        &lt;!--
                        
tr {
     vertical-align: middle;
     margin-bottom: 0px;
     border: 1px inset #000000;
}
td {
    vertical-align: middle;
    margin-bottom: 0px;
    border: 1px inset #000000;
 }
  h1 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 24px;
 }
h2 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 18px;
        color: #0000FF;
        margin-bottom: 4px;                            
 }
h3 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 12px;
        color: #FF0000;
        margin-bottom: 0px;
 }
 h4 {
     font-family: Arial, Helvetica, sans-serif;
     font-size: 12px;
     color: #0000FF;
     margin-bottom: 0px;     
}
h5 {
     font-family: Arial, Helvetica, sans-serif;
     font-size: 12px;
     margin-bottom: 0px;     
}
     table {
      border: 1px outset #000000;
     background-color: #FFFF33;
}
body {
     background-color: #FFFFCC;
}
                        --&gt;
                        </xsl:text>
                    </style>
            </head>            
            <body>  
                <h1>Fehler bei Migration XPlanung Daten</h1>
             <h2>Ausgangs-Format: <xsl:value-of select="attribute::schemaQuelle"/></h2>
             <h2>Ziel-Format: <xsl:value-of select="attribute::schemaZiel"/></h2>
             <xsl:if test="attribute::migrationsDatum!=''">      
              <h2>Datum der Migration: <xsl:value-of select="attribute::migrationsDatum"/></h2>
             </xsl:if>     
             
             <xsl:apply-templates/>                  
            </body>  
        </html>  
    </xsl:template>
   
    <xsl:template match="MigrationDateiProtokoll">
        <h2><xsl:value-of select="attribute::dateiName"/></h2>
        <xsl:apply-templates/>  
    </xsl:template>
    
    <xsl:template match="MigrationFehler">
            
        <table width="100%" border="1">
            
            <xsl:if test="attribute::fehlerKlassifikation!=''">          
                <tr>
                    <td><h3>Fehler-Klassifikation</h3></td>
                    <td><h4><xsl:value-of select="attribute::fehlerKlassifikation"/></h4></td>               
                </tr>        
            </xsl:if>           
            
            <tr> 
                <td width="25%"><h3>Objekt-Id</h3></td>
                <td ><h4><xsl:value-of select="attribute::objectId"/></h4></td>
            </tr>      
            
             <tr>
                <td><h3>Klassen-Name Quellformat</h3></td>
                 <td><h4><xsl:value-of select="attribute::klassenNameQuelle"/></h4></td>               
             </tr>      
            
            <xsl:if test="attribute::attributNameQuelle!=''">          
                <tr>
                    <td><h3>Attribut-Name Quellformat</h3></td>
                    <td><h4><xsl:value-of select="attribute::attributNameQuelle"/></h4></td>               
                </tr>        
            </xsl:if>                        
            
            <xsl:if test="attribute::klassenNameZiel!=''">          
                <tr>
                    <td><h3>Klassen-Name Zielformat</h3></td>
                    <td><h4><xsl:value-of select="attribute::klassenNameZiel"/></h4></td>               
                </tr>        
            </xsl:if>                        
            
            <xsl:if test="attribute::attributNameZiel!=''">          
                <tr>
                    <td><h3>Attribut-Name Zielformat</h3></td>
                    <td><h4><xsl:value-of select="attribute::attributNameZiel"/></h4></td>               
                </tr>        
            </xsl:if>                        
            
            <xsl:if test="attribute::fehlerBeschreibung!=''">          
                <tr>
                    <td><h3>Fehlerbeschreibung</h3></td>
                    <td><h4><xsl:value-of select="attribute::fehlerBeschreibung"/></h4></td>               
                </tr>        
            </xsl:if>                        
            
            <xsl:if test="attribute::aktionBeschreibung!=''">          
                <tr>
                    <td><h3>Aktion</h3></td>
                    <td><h4><xsl:value-of select="attribute::aktionBeschreibung"/></h4></td>               
                </tr>        
            </xsl:if>                        
            
            
            
        </table>
        <br/>
        <br/>
    </xsl:template>
    
   

</xsl:stylesheet>

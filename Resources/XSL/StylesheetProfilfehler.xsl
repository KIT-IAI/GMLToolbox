<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" version="4.01" encoding="UTF-8"/>
    
    <xsl:template match="ConformityErrorReport">  
       
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
        font-size: 10px;
        margin-bottom: 0px;                            
 }
h3 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 10px;
        color: #FF0000;
        margin-bottom: 0px;
 }
 h4 {
     font-family: Arial, Helvetica, sans-serif;
     font-size: 10px;
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
                
                    <xsl:apply-templates/>  
                
            </body>  
        </html>  
    </xsl:template>
    
    <xsl:template match="ValidationErrors">
        <h1>Validierungsfehler</h1>
        <xsl:apply-templates/>  
    </xsl:template>
    
    <xsl:template match="ValidationError">
        <h2>Fehler Nr  <xsl:number level="single"/></h2>
        <h3><xsl:value-of select="."/></h3>
    </xsl:template>
    
    <xsl:template match="ConformityErrors">
        <h1>Konformitäts-Verletzungen</h1>
        <xsl:apply-templates/>  
    </xsl:template>
    
    <xsl:template match="ConformityError">
        
        <xsl:variable name="Test" select="'100%'"></xsl:variable>
        <a><xsl:attribute name="name">Fehler_<xsl:number  format="1"  level="single"/></xsl:attribute></a>
            
        <table width="100%" border="1">
            
            <tr> 
                <td width="16%"><h2>Fehler Nr</h2></td>
                <td colspan="2"><h4><xsl:number  format="1"  level="single"/></h4></td>
            </tr>      
            
             <tr>
                <td><h2>Fehlerbeschreibung</h2></td>
                <td colspan="2"><h3><xsl:value-of select="ErrorType"/></h3></td>               
             </tr>
            
            <xsl:if test="ErrorId!=''">          
                <tr>
                    <td><h2>Bedingung Nr.</h2></td>
                    <td colspan="2"><h4><xsl:value-of select="ErrorId"/></h4></td>               
                </tr>        
            </xsl:if>
            
            <xsl:if test="ObjectId!=''">          
            <tr>
                <td><h2>Objekt-Id</h2></td>
                <td colspan="2"><h4><xsl:value-of select="ObjectId"/></h4></td>               
            </tr>        
            </xsl:if>
            
            <xsl:if test="ObjectType!=''">          
                <tr>
                    <td><h2>Objekt-Typ</h2></td>
                    <td colspan="2"><h4><xsl:value-of select="ObjectType"/></h4></td>               
                </tr>        
            </xsl:if>            
            
            <xsl:if test="ObjectGeometry!=''">          
                <tr>
                    <td><h2>Geometrietyp</h2></td>
                    <td colspan="2"><h4>
                    <xsl:choose>
                        <xsl:when test="string(ObjectGeometry)='Point'"> Punktgeometrie</xsl:when>
                        <xsl:when test="string(ObjectGeometry)='Line'"> Liniengeometrie</xsl:when>
                        <xsl:when test="string(ObjectGeometry)='Area'"> Flächengeometrie</xsl:when>
                        <xsl:when test="string(ObjectGeometry)='NoGeometry'"> Keine Geometrie</xsl:when>
                    </xsl:choose>
                    </h4></td>
                    
                </tr>        
            </xsl:if>            
                        
            <xsl:if test="RefObjectId!=''">          
                <tr>
                    <td><h2>Id referiertes Objekt</h2></td>
                    <td colspan="2"><h4><xsl:value-of select="RefObjectId"/></h4></td>               
                </tr>        
            </xsl:if>                        
            
            <xsl:if test="RefObjType!=''">          
                <tr>
                    <td><h2>Typ des referierten Objekts</h2></td>
                    <td colspan="2"><h4><xsl:value-of select="RefObjType"/></h4></td>               
                </tr>        
            </xsl:if>                                   
            
            <xsl:if test="ReferenzName!=''">          
                <tr>
                    <td><h2>Relation</h2></td>
                    <td colspan="2"><h4><xsl:value-of select="ReferenzName"/></h4></td>               
                </tr>        
            </xsl:if>       
           
            <xsl:for-each select="descendant::Attribut">
               <tr>
                   <td><h2><xsl:value-of select="attribute::name"/></h2></td>
                   <td colspan="2"><h4><xsl:value-of select="attribute::value"/></h4></td>
                   
               </tr>
           </xsl:for-each>
            
            <xsl:apply-templates select="./BrokenRule"/>
            
            <xsl:apply-templates select="./EnumError"/>
            
            
        </table>
        <br/>
        <br/>
    </xsl:template>
    
    <xsl:template match="BrokenRule">
          
        <xsl:if test="Required!=''">
            <tr>        
                <td colspan="3"><h5 align="center">Verletzte Konformitätsregelregel</h5></td>
            </tr>           
            
            <xsl:for-each select="Required/descendant::AttributeFilter"> 
                               
                   <tr> 
                    <td width="14%"><h2><xsl:value-of select="attribute::attributeName"/></h2></td>
                    <td colspan="2"> <h4>
                                                  
                    <xsl:variable name="iMax" select="count(descendant::AttributeValue)"/>        
                    <xsl:for-each select="descendant::AttributeValue">
                                 
                                    <xsl:if test="string(/attribute::op)='NOT_EQ'"> xxxxxxxxxxxxxxxxxxx!= </xsl:if>
                                    <xsl:value-of select="."/>

                                    <xsl:if test="position()!=$iMax">                   
                                           <xsl:if test="string(../attribute::combination)='AND'">
                                               und
                                           </xsl:if>
                                        
                                             <xsl:if test="string(../attribute::combination)='OR'">
                                                 oder
                                             </xsl:if>
                                    </xsl:if>
                                 
                                    <!--xsl:if test="position()!=$iMax">  oder</xsl:if-->
                                    
                    </xsl:for-each>
                        
                                <xsl:if test="string(attribute::minOccurs)='0'">
                                    <xsl:if test="string(attribute::maxOccurs)='0'"> 
                                  Nicht zugewiesen
                                  </xsl:if>
                                    <xsl:if test="string(attribute::maxOccurs)!='0'"> 
                                        oder nicht  zugewiesen
                                    </xsl:if>
                                    </xsl:if>

                        <xsl:if test="string(attribute::minOccurs)='1'">
                            <xsl:if test="string(attribute::maxOccurs)='1'"> 
                                Genau einmal zugewiesen
                            </xsl:if>
                            <xsl:if test="string(attribute::maxOccurs)!='1'"> 
                                Mindestens einmal zugewiesen
                            </xsl:if>
                        </xsl:if>
                                                                                                  
                    </h4></td>
                </tr> 
            
            </xsl:for-each>
            
            <xsl:for-each select="Required/descendant::RelationFilter"> 
                
                <tr> 
                    <td width="14%"><h2><xsl:value-of select="attribute::relationName"/></h2></td>
                    <td colspan="2"> <h4>
                 
                        <xsl:if test="string(attribute::minOccurs)='0'">
                            <xsl:if test="string(attribute::maxOccurs)='0'">                           
                                  Relation darf nicht zugewiesen sein.
                            </xsl:if>
                            
                            <xsl:if test="string(attribute::maxOccurs)!='0'">                           
                                Relation braucht nicht zugewiesen sein.
                            </xsl:if> 
                            </xsl:if>
                            
                        <xsl:if test="string(attribute::minOccurs)!='0'">
                            
                            <xsl:if test="string(attribute::minOccurs)='1'">
                                <xsl:if test="string(attribute::maxOccurs)='1'">
                                    Relation muss genau einmal zugewiesen sein.
                                </xsl:if> 
                                <xsl:if test="string(attribute::maxOccurs)!='1'">
                                    Relation muss ein- oder mehrmals zugewiesen werden.
                                </xsl:if> 
                            </xsl:if>
                            
                            <xsl:if test="string(attribute::minOccurs)!='1'">
                                Relation mus mehrmals zugewiesen werden.
                            </xsl:if>
                            
                        </xsl:if>
                            
                        <xsl:for-each select="descendant::GmlType">     
                            
                            <xsl:value-of select="' Relation muss auf Objekt zeigen, das vom Typ '"/>
                            <xsl:value-of select="current()"/>
                            <xsl:value-of select="'  ist.'"/>
                            
                                <!--xsl:variable name="h1" select="'Relation muss auf Objekt vom Typ '"/>
                                <xsl:variable name="gmlType" select="string(descendant::GmlType)"/>                                  
                                <xsl:variable name="h2" select="' zeigen'"/>
                              <xsl:value-of select="concat($h1,$gmlType,$h2)"/-->
                        </xsl:for-each>
                                           
                        <xsl:for-each select="descendant::GmlSuperType">     
                            <xsl:value-of select="' Relation muss auf Objekt zeigen, das von '"/>
                            <xsl:value-of select="current()"/>
                            <xsl:value-of select="' abgeleitet ist.'"/>
                            <!--xsl:variable name="h1" select="'Relation muss auf Objekt zeigen, das von '"/>
                            <xsl:variable name="gmlSuperType" select="string(descendant::GmlSuperType)"/>                                         
                            <xsl:variable name="h2" select="' abgeleitet'"/>
                            <xsl:value-of select="concat($h1,$gmlSuperType,$h2)"/-->
                        </xsl:for-each>
                         
                    </h4></td>
                </tr> 
                
            </xsl:for-each>            
            
        </xsl:if>
        
        
        <xsl:if test="If!=''">
            <tr>        
                <td colspan="3"><h5 align="center">Die Regel ist aktiv weil</h5></td>
            </tr>
            
            <xsl:for-each select="If/descendant::AttributeFilter"> 
                
                <tr> 
                    <td width="14%"><h2><xsl:value-of select="attribute::attributeName"/></h2></td>
                    <td colspan="2"> <h4>
                        
                        <xsl:variable name="iMax" select="count(descendant::AttributeValue)"/>        
                        <xsl:for-each select="descendant::AttributeValue">
                            
                            <xsl:if test="string(/attribute::op)='NOT_EQ'"> xxxxxxxxxxxxxxxxxxx!= </xsl:if>
                            <xsl:value-of select="."/>
                            
                            <xsl:if test="position()!=$iMax">                   
                                <xsl:if test="string(../attribute::combination)='AND'">
                                    und
                                </xsl:if>
                                
                                <xsl:if test="string(../attribute::combination)='OR'">
                                    oder
                                </xsl:if>
                            </xsl:if>
                            
                            <!--xsl:if test="position()!=$iMax">  oder</xsl:if-->
                            
                        </xsl:for-each>
                        
                        <xsl:if test="string(attribute::minOccurs)='0'">
                            <xsl:if test="string(attribute::maxOccurs)='0'"> 
                                Nicht zugewiesen
                            </xsl:if>
                            <xsl:if test="string(attribute::maxOccurs)!='0'"> 
                                oder nicht  zugewiesen
                            </xsl:if>
                        </xsl:if>
                        
                        <xsl:if test="string(attribute::minOccurs)='1'">
                            <xsl:if test="string(attribute::maxOccurs)='1'"> 
                                Genau einmal zugewiesen
                            </xsl:if>
                            <xsl:if test="string(attribute::maxOccurs)!='1'"> 
                                Mindestens einmal zugewiesen
                            </xsl:if>
                        </xsl:if>
                        
                    </h4></td>
                </tr> 
                
            </xsl:for-each>
            
            <xsl:for-each select="If/descendant::RelationFilter"> 
                
                <tr> 
                    <td width="14%"><h2><xsl:value-of select="attribute::relationName"/></h2></td>
                    <td colspan="2"> <h4>
                        
                        <xsl:if test="string(attribute::minOccurs)='0'">
                            <xsl:if test="string(attribute::maxOccurs)='0'">                           
                                Relation darf nicht zugewiesen sein.
                            </xsl:if>
                            
                            <xsl:if test="string(attribute::maxOccurs)!='0'">                           
                                Relation braucht nicht zugewiesen sein.
                            </xsl:if> 
                        </xsl:if>
                        
                        <xsl:if test="string(attribute::minOccurs)!='0'">
                            
                            <xsl:if test="string(attribute::minOccurs)='1'">
                                <xsl:if test="string(attribute::maxOccurs)='1'">
                                    Relation muss genau einmal zugewiesen sein.
                                </xsl:if> 
                                <xsl:if test="string(attribute::maxOccurs)!='1'">
                                    Relation muss ein- oder mehrmals zugewiesen werden.
                                </xsl:if> 
                            </xsl:if>
                            
                            <xsl:if test="string(attribute::minOccurs)!='1'">
                                Relation mus mehrmals zugewiesen werden.
                            </xsl:if>
                            
                        </xsl:if>
                        
                        <xsl:for-each select="descendant::GmlType">     
                            
                            <xsl:value-of select="' Relation muss auf Objekt zeigen, das vom Typ '"/>
                            <xsl:value-of select="current()"/>
                            <xsl:value-of select="'  ist.'"/>
                            
                            <!--xsl:variable name="h1" select="'Relation muss auf Objekt vom Typ '"/>
                                <xsl:variable name="gmlType" select="string(descendant::GmlType)"/>                                  
                                <xsl:variable name="h2" select="' zeigen'"/>
                                <xsl:value-of select="concat($h1,$gmlType,$h2)"/-->
                        </xsl:for-each>
                        
                        <xsl:for-each select="descendant::GmlSuperType">     
                            <xsl:value-of select="' Relation muss auf Objekt zeigen, das von '"/>
                            <xsl:value-of select="current()"/>
                            <xsl:value-of select="' abgeleitet ist.'"/>
                            <!--xsl:variable name="h1" select="'Relation muss auf Objekt zeigen, das von '"/>
                                <xsl:variable name="gmlSuperType" select="string(descendant::GmlSuperType)"/>                                         
                                <xsl:variable name="h2" select="' abgeleitet'"/>
                                <xsl:value-of select="concat($h1,$gmlSuperType,$h2)"/-->
                        </xsl:for-each>
                        
                    </h4></td>
                </tr> 
                
            </xsl:for-each>            
            
        </xsl:if>
       
    </xsl:template>

<xsl:template match="EnumError">
    
    <tr>        
        <td colspan="3"><h5 align="center">Ungültiger Wert eines Aufzählungs-Attributs</h5></td>
    </tr>
    
    <tr>          
        <td><h2>Aufzählung</h2></td>
        <td colspan="2"><h4><xsl:value-of select="ExternalCodeListName"/></h4></td>  
    </tr>
    
    <tr>          
        <td><h2>Attributname</h2></td>
        <td colspan="2"><h4><xsl:value-of select="AttributeName"/></h4></td>  
    </tr>
    
    <tr>          
        <td><h2>Attributwert</h2></td>
        <td colspan="2"><h4><xsl:value-of select="AttributeValue"/></h4></td>  
    </tr>
    
</xsl:template>

</xsl:stylesheet>

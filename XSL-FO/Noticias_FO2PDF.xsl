<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-height="297mm" page-width="210mm" margin="20mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center" font-weight="bold" font-family="Garamond" font-size="12px"
                              color="#000000">
                        <fo:block>Trabajo para el caso PBL</fo:block>
                        <fo:block>Sindicación de Contenidos con RSS</fo:block>
                        <fo:block>Lenguajes de Marcas y Sistemas de Información de Gestión</fo:block>
                    </fo:block>
                    <fo:block>
                        <fo:block text-align="center" font-weight="bold" font-family="Arial" font-size="18px"
                                  color="#000000" margin-top="28px">
                            <fo:inline text-decoration="underline">POOL DE NOTICIAS SINDICADAS</fo:inline>
                        </fo:block>
                    </fo:block>
                    <xsl:for-each select="rss/channel/item">
                        <fo:block border="solid 1px black" margin="7mm" padding="2mm" margin-left="4cm"
                                  margin-right="4cm">
                            <xsl:variable name="Imagen" select="enclosure/@url"/>
                            <fo:external-graphic src="{$Imagen}" content-height="0.9in"/>
                            <fo:block padding="4mm">
                                <fo:inline font-weight="bold" font-family="Trebuchet" font-size="12px">
                                    <xsl:value-of select="category"/>
                                </fo:inline>
                                <fo:block font-weight="bold" font-family="Trebuchet" font-size="10px"
                                          position="absolute" margin-top="-12.6px" text-align="right">
                                    <xsl:value-of select="pubDate"/>
                                </fo:block>
                            </fo:block>
                            <fo:block font-family="Times New Roman" font-size="12px" text-align="justify">
                                <xsl:value-of select="title"/>
                                <fo:inline font-family="Verdana" font-size="8px">
                                    <xsl:value-of select="author"/>
                                </fo:inline>
                            </fo:block>
                            <fo:block font-family="Times New Roman" font-size="10px" text-align="justify" padding="4mm">
                                <xsl:value-of select="link"/>
                            </fo:block>
                        </fo:block>
                    </xsl:for-each>
                    <fo:block font-weight="bold" text-align="left" color="#000000" font-family="Times New Roman"
                              font-size="12px">
                        Equipo 3:
                    </fo:block>
                    <fo:block margin-left="6cm" font-weight="bold" text-align="left" color="#000000"
                              font-family="Times New Roman" font-size="12px" position="absolute" margin-top="-13.5px">
                        Fco. Salvador Vázquez Roldán
                    </fo:block>
                    <fo:block margin-left="6cm" font-weight="bold" text-align="left" color="#000000"
                              font-family="Times New Roman" font-size="12px">Óscar Tarazaga Gálvez
                    </fo:block>
                    <fo:block margin-left="6cm" font-weight="bold" text-align="left" color="#000000"
                              font-family="Times New Roman" font-size="12px">José Antonio Villarreal Oliver
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
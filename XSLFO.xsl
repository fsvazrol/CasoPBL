<?xml version="1.1" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="mi-docum">
                    <fo:region-body margin="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="mi-docum">
                <fo:flow flow-name="xsl-region-body" text-align="center">
                    <fo:block text-align="center" font-style="garamond" font-size="12" color="black">Trabajo para el
                        caso PBL
                    </fo:block>
                    <fo:block text-align="center" font-style="garamond" font-size="12" color="black">Sindicaci&#243;n de
                        contenidos RSS
                    </fo:block>
                    <fo:block space-after="20pt" text-align="center" font-style="garamond" font-size="12" color="black">
                        Lenguaje de marcas y Sistemas de Informaci&#243;n de Gesti&#243;n
                    </fo:block>
                    <fo:block text-align="center" font-style="arial" font-size="18" color="black" space-before="10mm"
                              space-after="20mm" text-decoration="underline" font-weight="bold">POOL DE NOTICIAS
                        SINDICADAS
                    </fo:block>
                    <xsl:for-each select="rss/channel/item">

                        <fo:block-container display-align="center" margin="0" float="center" font-style="arial"
                                            font-size="18" color="black" space-before="10mm" space-after="10mm"
                                            border-style="solid">
                            <fo:block space-after="4mm" text-align-last="justify">
                                <xsl:variable name="Imagen" select="enclosure/@url"/>
                                <fo:external-graphic src="{$Imagen}" content-height="0.9in"/>
                            </fo:block>
                            <fo:block space-after="4mm" text-align-last="justify">
                                <fo:inline font-style="Trebuchet" font-size="12" font-weight="bold">
                                    <xsl:value-of select="category"/>
                                </fo:inline>
                                <fo:leader/>
                                <fo:inline font-style="Trebuchet" font-size="10" font-weight="bold">
                                    <xsl:value-of select="pubDate"/>
                                </fo:inline>
                            </fo:block>


                            <fo:block space-after="4mm" text-align-last="left">
                                <fo:inline font-style="Times New Roman" font-size="12">
                                    <xsl:value-of select="title"/>
                                </fo:inline>
                                <fo:inline font-style="Verdana" font-size="8">(<xsl:value-of select="author"/>)
                                </fo:inline>
                            </fo:block>
                            <fo:block text-align="left" space-after="2mm" font-style="Times New Roman" font-size="12"
                                      color="black">
                                <xsl:value-of select="link"/>
                            </fo:block>

                        </fo:block-container>
                    </xsl:for-each>

                    <fo:block text-align="left" font-style="Times New Roman" font-size="12" font-weight="bold">
                        Componentes del grupo: Luis Pérez Ureña
                    </fo:block>
                    <fo:block text-align="left" font-style="Times New Roman" font-size="12" start-indent="145px"
                              font-weight="bold">Francisco Jiménez Álvarez
                    </fo:block>
                    <fo:block text-align="left" font-style="Times New Roman" font-size="12" start-indent="145px"
                              font-weight="bold">Luis Jesús Pérez Pérez
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
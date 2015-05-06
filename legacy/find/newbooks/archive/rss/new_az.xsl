<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
<!--
        XSL Stylesheet created to make html display of xml book list
        Written by Amanda Hartman
-->
    
    <xsl:output method="xml" omit-xml-declaration="yes"/>
    
    <xsl:template match="month">
        <h2>New Titles A-Z</h2>
                <xsl:apply-templates select="item">
                    <xsl:sort/>
                </xsl:apply-templates>
                
                <div id="footer">
                    <hr/>
                    <xsl:apply-templates select="lastBuildDate"/>
                </div>
    </xsl:template>
    
    <xsl:template match="lastBuildDate">
        <p><span class="subheadline">Last Updated: </span>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- hide language and link -->
    <xsl:template match="language"/>
    <xsl:template match="month/link"/>
    
    <xsl:template match="title">
        <xsl:apply-templates>
            <xsl:sort/>
        </xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="item">
        <div class="item">
            <a href="{link}">
                <h3>
                    <xsl:apply-templates select="title" />
                </h3>
            </a>
            <p>
                <span class="subheadline">Call Number: </span><xsl:apply-templates select="callno"/><br />
                <span class="subheadline">Collection: </span><xsl:apply-templates select="collection"/><br />
            </p>
        </div>
    </xsl:template>
    
    
    <xsl:template match="link">
        <a href="{self::node()}"><xsl:value-of select="."/></a>
    </xsl:template>
    
</xsl:stylesheet>
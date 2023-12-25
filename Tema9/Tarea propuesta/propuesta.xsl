<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <!-- Template to match the root element -->
    <xsl:template match="/escuelasdeidiomas">
        <html>
            <head>
                <title>Calendario de idiomas </title>
                <style>
                    h1 {
                    background-color: orange;
                    }

                    h2 {
                    color: blue;
                    background-color: #9BAABE;
                    }

                    table {
                    border: 3px solid #c2c2c2;
                    
                    }

                    th, td {
                    border: 1px solid #c2c2c2;
                    padding: 8px;
                    text-align: left;
                    }

                    th {
                    color: white;
                    background-color: #617567;
                    }
                </style>
            </head>
            <body>
                <h1>Calendario de examenes</h1>
                <!-- llamada the template de mayo -->
                <h2>Mayo</h2>
                <table>
                   
                    <tr>
                        <th>Nivel</th>
                        <th>Modalidad</th>
                        <th>Lugar</th>
                        <th>Fecha</th>
                    </tr>
                    <xsl:apply-templates select="escuela/idioma/nivel/examen[contains(., 'Mayo')]">
                        <xsl:sort select="substring(., 1, 2)" data-type="number" />
                    </xsl:apply-templates>
                </table>

                <!-- llamada the template de junio -->
                <h2>Junio</h2>
                <table>
                    
                    <tr>
                        <th>Nivel</th>
                        <th>Modalidad</th>
                        <th>Lugar</th>
                        <th>Fecha</th>
                    </tr>
                    <xsl:apply-templates select="escuela/idioma/nivel/examen[contains(., 'Junio')]">
                        <xsl:sort select="substring(., 1, 2)" data-type="number" />
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Template to match exams for a specific month -->
    <xsl:template match="examen">
        <!-- Check if the exam is in the correct month -->
        <xsl:param name="mes" />
        <xsl:if test="contains(., $mes)">
            
            <tr>
                
                <td>
                    <xsl:value-of select="../@certificacion" />
                </td>
                <td><xsl:value-of select="@tipo"/></td>
                <td>
                    <xsl:value-of select="../../../@sede" />
                </td>
                <td>
                    <xsl:value-of select="." />
                </td>
            </tr>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
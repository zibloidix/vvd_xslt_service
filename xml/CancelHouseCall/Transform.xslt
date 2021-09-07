<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xml:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:hc="http://www.rt-eu.ru/med/hc/">
    <xsl:output version="1.0" encoding="UTF-8" standalone="yes" method="xml"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
            xmlns:hc="http://www.rt-eu.ru/med/hc/">
            <soapenv:Header/>
            <soapenv:Body>
                <hc:CancelHouseCallResponse>
                    <xsl:choose>
                        <xsl:when test="//HC_Id_Rmis = '2406516207'">
                            <HC_Id_Rmis>2406516207</HC_Id_Rmis>
                            <Status_Code>0</Status_Code>
                            <Comment></Comment>
                        </xsl:when>
                        <xsl:when test="//HC_Id_Rmis = '3589018462'">
                            <HC_Id_Rmis>3589018462</HC_Id_Rmis>
                            <Status_Code>1</Status_Code>
                            <Comment>Внутренняя ошибка системы</Comment>
                        </xsl:when>
                        <xsl:when test="//HC_Id_Rmis = '8846293365'">
                            <HC_Id_Rmis>8846293365</HC_Id_Rmis>
                            <Status_Code>2</Status_Code>
                            <Comment>Отказ в проведении операции</Comment>
                        </xsl:when>
                    </xsl:choose>
                </hc:CancelHouseCallResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xml:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:hc="http://www.rt-eu.ru/med/hc/">
    <xsl:output version="1.0" encoding="UTF-8" standalone="yes" method="xml"/>
    <xsl:template match="//Session_ID">
        <Session_ID>
            <xsl:value-of select="." />
        </Session_ID>
    </xsl:template>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
            xmlns:hc="http://www.rt-eu.ru/med/hc/">
            <soapenv:Header/>
            <soapenv:Body>
                <hc:CreateHouseCallResponse>
                    <xsl:apply-templates select="//Session_ID"/>
                    <xsl:choose>
                        <xsl:when test="//Slot_Id = 'e0569a75-badf-4561-acd1-7a748272976d'">
                            <HC_Id_Rmis>2406516207</HC_Id_Rmis>
                            <Status_Code>0</Status_Code>
                            <Comment>ОК</Comment>
                            <Slot_Id>e0569a75-badf-4561-acd1-7a748272976d</Slot_Id>
                            <VisitTime>2021-08-24T10:00:00+11:00</VisitTime>
                            <Duration>480</Duration>
                        </xsl:when>
                        <xsl:when test="//Slot_Id = '85d7bf40-9086-46b9-9ec5-df0522d82ebc'">
                            <HC_Id_Rmis/>
                            <Status_Code>1</Status_Code>
                            <Comment>Внутренняя ошибка системы</Comment>
                            <Slot_Id>85d7bf40-9086-46b9-9ec5-df0522d82ebc</Slot_Id>
                            <VisitTime>2021-08-24T12:00:00+11:00</VisitTime>
                            <Duration>480</Duration>
                        </xsl:when>
                    </xsl:choose>
                </hc:CreateHouseCallResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
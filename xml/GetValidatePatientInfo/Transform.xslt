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
                <hc:GetValidatePatientInfoResponse>
                    <xsl:apply-templates select="//Session_ID"/>
                    <Patient_Id>98727272</Patient_Id>
                    <MO_Id>131132133</MO_Id>
                    <MO_OID>1.2.643.5.1.13.13.12.2.65.6742.0.11096</MO_OID>
                    <MO_Name>ГБУЗ Городская поликлиника № 2</MO_Name>
                    <MO_Address>г. Южно-Сахалинск ул. Ленина 150</MO_Address>
                    <MO_Phone>8 4242 412319</MO_Phone>
                    <Resource_Id>17157120147.237373065</Resource_Id>
                    <Resource_Name>Кадди Елизавета Ивановна (врач-террапевт)</Resource_Name>
                    <Error>
                        <errorDetail>
                            <errorCode>0</errorCode>
                            <errorMessage>OK</errorMessage>
                        </errorDetail>
                    </Error>
                </hc:GetValidatePatientInfoResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
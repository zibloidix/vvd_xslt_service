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
                <hc:GetHouseCallScheduleInfoResponse>
                    <xsl:apply-templates select="//Session_ID"/>
                    <Schedule>
                        <Slots>
                            <Slot_Id>688c00b8-af26-4200-8419-92f4a070ff2f</Slot_Id>
                            <VisitTime>2021-08-24T10:00:00+11:00</VisitTime>
                            <Duration>480</Duration>
                        </Slots>
                    </Schedule>
                    <Error>
                        <errorDetail>
                            <errorCode>0</errorCode>
                            <errorMessage></errorMessage>
                        </errorDetail>
                    </Error>
                </hc:GetHouseCallScheduleInfoResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
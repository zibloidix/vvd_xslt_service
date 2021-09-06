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
                    <xsl:choose>
                        <xsl:when test="not(//Resource_Id) or not(//StartDateRange) or not(//EndDateRange)">
                            <Schedule/>
                            <Error>
                                <errorDetail>
                                    <errorCode>1</errorCode>
                                    <errorMessage>По запросу данных не найдено</errorMessage>
                                </errorDetail>
                            </Error>
                        </xsl:when>
                        <xsl:when test="//Resource_Id = '17157120147.237373065'">
                            <Schedule>
                                <Slots>
                                    <Slot_Id>e0569a75-badf-4561-acd1-7a748272976d</Slot_Id>
                                    <VisitTime>2021-08-24T10:00:00+11:00</VisitTime>
                                    <Duration>480</Duration>
                                </Slots>
                                <Slots>
                                    <Slot_Id>85d7bf40-9086-46b9-9ec5-df0522d82ebc</Slot_Id>
                                    <VisitTime>2021-08-24T12:00:00+11:00</VisitTime>
                                    <Duration>480</Duration>
                                </Slots>
                                <Slots>
                                    <Slot_Id>a40528e8-4721-45ee-9095-c489013c6422</Slot_Id>
                                    <VisitTime>2021-08-24T14:00:00+11:00</VisitTime>
                                    <Duration>480</Duration>
                                </Slots>
                            </Schedule>
                            <Error>
                                <errorDetail>
                                    <errorCode>0</errorCode>
                                    <errorMessage></errorMessage>
                                </errorDetail>
                            </Error>
                        </xsl:when>
                        <xsl:when test="//Resource_Id != '17157120147.237373065'">
                            <Schedule/>
                            <Error>
                                <errorDetail>
                                    <errorCode>1</errorCode>
                                    <errorMessage>По запросу данных не найдено</errorMessage>
                                </errorDetail>
                            </Error>
                        </xsl:when>
                    </xsl:choose>
                </hc:GetHouseCallScheduleInfoResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
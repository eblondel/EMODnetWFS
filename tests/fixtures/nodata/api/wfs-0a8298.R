structure(list(url = "https://geo.vliz.be/geoserver/Emodnetbio/wfs?service=WFS&version=2.0.0&typeName=Emodnetbio:OOPS_metadata&request=DescribeFeatureType", 
    status_code = 200L, headers = structure(list(server = "Apache-Coyote/1.1", 
        `content-disposition` = "inline; filename=geoserver-DescribeFeatureType.text", 
        `content-encoding` = "gzip", `content-type` = "text/xml; subtype=gml/3.2", 
        `transfer-encoding` = "chunked", date = "Fri, 07 Oct 2022 13:22:05 GMT"), class = c("insensitive", 
    "list")), all_headers = list(list(status = 200L, version = "HTTP/1.1", 
        headers = structure(list(server = "Apache-Coyote/1.1", 
            `content-disposition` = "inline; filename=geoserver-DescribeFeatureType.text", 
            `content-encoding` = "gzip", `content-type` = "text/xml; subtype=gml/3.2", 
            `transfer-encoding` = "chunked", date = "Fri, 07 Oct 2022 13:22:05 GMT"), class = c("insensitive", 
        "list")))), cookies = structure(list(domain = logical(0), 
        flag = logical(0), path = logical(0), secure = logical(0), 
        expiration = structure(numeric(0), class = c("POSIXct", 
        "POSIXt")), name = logical(0), value = logical(0)), row.names = integer(0), class = "data.frame"), 
    content = charToRaw("<?xml version=\"1.0\" encoding=\"UTF-8\"?><xsd:schema xmlns:Emodnetbio=\"geo.vliz.be/Emodnetbio\" xmlns:gml=\"http://www.opengis.net/gml/3.2\" xmlns:wfs=\"http://www.opengis.net/wfs/2.0\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" elementFormDefault=\"qualified\" targetNamespace=\"geo.vliz.be/Emodnetbio\">\n  <xsd:import namespace=\"http://www.opengis.net/gml/3.2\" schemaLocation=\"http://geo.vliz.be:80/geoserver/schemas/gml/3.2.1/gml.xsd\"/>\n  <xsd:complexType name=\"OOPS_metadataType\">\n    <xsd:complexContent>\n      <xsd:extension base=\"gml:AbstractFeatureType\">\n        <xsd:sequence>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"1\" name=\"id\" nillable=\"false\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"AphiaID\" nillable=\"true\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"scientificName\" nillable=\"true\" type=\"xsd:string\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"startYearCollection\" nillable=\"true\" type=\"xsd:short\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"endYearCollection\" nillable=\"true\" type=\"xsd:short\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"season\" nillable=\"true\" type=\"xsd:short\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"measurementUnit\" nillable=\"true\" type=\"xsd:string\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"fileName\" nillable=\"true\" type=\"xsd:string\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"datasetID\" nillable=\"true\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"uploadDate\" nillable=\"true\" type=\"xsd:dateTime\"/>\n        </xsd:sequence>\n      </xsd:extension>\n    </xsd:complexContent>\n  </xsd:complexType>\n  <xsd:element name=\"OOPS_metadata\" substitutionGroup=\"gml:AbstractFeature\" type=\"Emodnetbio:OOPS_metadataType\"/>\n</xsd:schema>\n"), 
    date = structure(1665148925, class = c("POSIXct", "POSIXt"
    ), tzone = "GMT"), times = c(redirect = 0, namelookup = 3.2e-05, 
    connect = 3.3e-05, pretransfer = 0.000125, starttransfer = 0.029671, 
    total = 0.029769)), class = "response")

structure(list(url = "https://geo.vliz.be/geoserver/Emodnetbio/wfs?service=WFS&version=2.0.0&typeName=Emodnetbio:Species_gridded_abundances_10year&request=DescribeFeatureType", 
    status_code = 200L, headers = structure(list(server = "Apache-Coyote/1.1", 
        `content-disposition` = "inline; filename=geoserver-DescribeFeatureType.text", 
        `content-encoding` = "gzip", `content-type` = "text/xml; subtype=gml/3.2", 
        `transfer-encoding` = "chunked", date = "Fri, 07 Oct 2022 13:24:12 GMT"), class = c("insensitive", 
    "list")), all_headers = list(list(status = 200L, version = "HTTP/1.1", 
        headers = structure(list(server = "Apache-Coyote/1.1", 
            `content-disposition` = "inline; filename=geoserver-DescribeFeatureType.text", 
            `content-encoding` = "gzip", `content-type` = "text/xml; subtype=gml/3.2", 
            `transfer-encoding` = "chunked", date = "Fri, 07 Oct 2022 13:24:12 GMT"), class = c("insensitive", 
        "list")))), cookies = structure(list(domain = logical(0), 
        flag = logical(0), path = logical(0), secure = logical(0), 
        expiration = structure(numeric(0), class = c("POSIXct", 
        "POSIXt")), name = logical(0), value = logical(0)), row.names = integer(0), class = "data.frame"), 
    content = charToRaw("<?xml version=\"1.0\" encoding=\"UTF-8\"?><xsd:schema xmlns:Emodnetbio=\"geo.vliz.be/Emodnetbio\" xmlns:gml=\"http://www.opengis.net/gml/3.2\" xmlns:wfs=\"http://www.opengis.net/wfs/2.0\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" elementFormDefault=\"qualified\" targetNamespace=\"geo.vliz.be/Emodnetbio\">\n  <xsd:import namespace=\"http://www.opengis.net/gml/3.2\" schemaLocation=\"http://geo.vliz.be:80/geoserver/schemas/gml/3.2.1/gml.xsd\"/>\n  <xsd:complexType name=\"Species_gridded_abundances_10yearType\">\n    <xsd:complexContent>\n      <xsd:extension base=\"gml:AbstractFeatureType\">\n        <xsd:sequence>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"1\" name=\"meta_id\" nillable=\"false\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"1\" name=\"geom_id\" nillable=\"false\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"measurementValue\" nillable=\"true\" type=\"xsd:float\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"errorValue\" nillable=\"true\" type=\"xsd:float\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"geom\" nillable=\"true\" type=\"gml:GeometryPropertyType\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"mrgid\" nillable=\"true\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"AphiaID\" nillable=\"true\" type=\"xsd:int\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"scientificName\" nillable=\"true\" type=\"xsd:string\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"season\" nillable=\"true\" type=\"xsd:short\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"startYearCollection\" nillable=\"true\" type=\"xsd:short\"/>\n          <xsd:element maxOccurs=\"1\" minOccurs=\"0\" name=\"endYearCollection\" nillable=\"true\" type=\"xsd:short\"/>\n        </xsd:sequence>\n      </xsd:extension>\n    </xsd:complexContent>\n  </xsd:complexType>\n  <xsd:element name=\"Species_gridded_abundances_10year\" substitutionGroup=\"gml:AbstractFeature\" type=\"Emodnetbio:Species_gridded_abundances_10yearType\"/>\n</xsd:schema>\n"), 
    date = structure(1665149052, class = c("POSIXct", "POSIXt"
    ), tzone = "GMT"), times = c(redirect = 0, namelookup = 3.9e-05, 
    connect = 4.1e-05, pretransfer = 0.000132, starttransfer = 0.029096, 
    total = 0.029173)), class = "response")

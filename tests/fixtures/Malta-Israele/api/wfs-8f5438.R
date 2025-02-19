structure(list(url = "https://geo.vliz.be/geoserver/Emodnetbio/wfs?service=WFS&version=2.0.0&typeNames=Emodnetbio:mediseh_cymodocea_pnt&cql_filter=country='Israele'&request=GetFeature", 
    status_code = 200L, headers = structure(list(server = "Apache-Coyote/1.1", 
        `content-disposition` = "inline; filename=geoserver-GetFeature.text", 
        `content-encoding` = "gzip", `content-type` = "text/xml; subtype=gml/3.2", 
        `transfer-encoding` = "chunked", date = "Fri, 07 Oct 2022 13:21:57 GMT"), class = c("insensitive", 
    "list")), all_headers = list(list(status = 200L, version = "HTTP/1.1", 
        headers = structure(list(server = "Apache-Coyote/1.1", 
            `content-disposition` = "inline; filename=geoserver-GetFeature.text", 
            `content-encoding` = "gzip", `content-type` = "text/xml; subtype=gml/3.2", 
            `transfer-encoding` = "chunked", date = "Fri, 07 Oct 2022 13:21:57 GMT"), class = c("insensitive", 
        "list")))), cookies = structure(list(domain = logical(0), 
        flag = logical(0), path = logical(0), secure = logical(0), 
        expiration = structure(numeric(0), class = c("POSIXct", 
        "POSIXt")), name = logical(0), value = logical(0)), row.names = integer(0), class = "data.frame"), 
    content = charToRaw("<?xml version=\"1.0\" encoding=\"UTF-8\"?><wfs:FeatureCollection xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:Emodnetbio=\"geo.vliz.be/Emodnetbio\" xmlns:wfs=\"http://www.opengis.net/wfs/2.0\" xmlns:gml=\"http://www.opengis.net/gml/3.2\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" numberMatched=\"1\" numberReturned=\"1\" timeStamp=\"2022-10-07T13:21:58.491Z\" xsi:schemaLocation=\"http://www.opengis.net/wfs/2.0 http://geo.vliz.be:80/geoserver/schemas/wfs/2.0/wfs.xsd geo.vliz.be/Emodnetbio http://geo.vliz.be:80/geoserver/Emodnetbio/wfs?service=WFS&amp;version=2.0.0&amp;request=DescribeFeatureType&amp;typeName=Emodnetbio%3Amediseh_cymodocea_pnt http://www.opengis.net/gml/3.2 http://geo.vliz.be:80/geoserver/schemas/gml/3.2.1/gml.xsd\"><wfs:boundedBy><gml:Envelope><gml:lowerCorner>32.91777958700004 35.075850495000054</gml:lowerCorner><gml:upperCorner>32.91777958700004 35.075850495000054</gml:upperCorner></gml:Envelope></wfs:boundedBy><wfs:member><Emodnetbio:mediseh_cymodocea_pnt gml:id=\"mediseh_cymodocea_pnt.1160\"><gml:boundedBy><gml:Envelope srsName=\"urn:ogc:def:crs:EPSG::4326\" srsDimension=\"2\"><gml:lowerCorner>32.91778 35.07585</gml:lowerCorner><gml:upperCorner>32.91778 35.07585</gml:upperCorner></gml:Envelope></gml:boundedBy><Emodnetbio:id>0</Emodnetbio:id><Emodnetbio:country>Israele</Emodnetbio:country><Emodnetbio:the_geom><gml:Point srsName=\"urn:ogc:def:crs:EPSG::4326\" srsDimension=\"2\"><gml:pos>32.91778 35.07585</gml:pos></gml:Point></Emodnetbio:the_geom></Emodnetbio:mediseh_cymodocea_pnt></wfs:member></wfs:FeatureCollection>"), 
    date = structure(1665148917, class = c("POSIXct", "POSIXt"
    ), tzone = "GMT"), times = c(redirect = 0, namelookup = 3.6e-05, 
    connect = 3.7e-05, pretransfer = 0.00012, starttransfer = 0.037833, 
    total = 0.03789)), class = "response")

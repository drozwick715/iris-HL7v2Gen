Include Ensemble

Class dc.HL7v2Gen Extends %SwizzleObject
{



ClassMethod GetSegmentDetails(htmlString, segName, cardinality, segmentDefinition, ver = "2.5") [ Language = python ]
{

    """
    Class to Get Segment details which is used in generation of HL7 Structure, this is for creating the web page.
    
    Parms
    htmlString: A main string used to construct the structure in List form
    segName: Segment name
    cardinality: (0 / 1)
    segmentDefinition: Containing related elements
    ver: HL7 message version, defalut value "2.5"

    """
    import importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        # module name from the hl7apy libraries for the version inputed
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        # Example for ver 2.1 is hl7apy.v2_1
        lib = importlib.import_module(module_name)
        # Example lib for ver 2.1 is <module 'hl7apy.v2_1' from '/usr/irissys/mgr/python/hl7apy/v2_1/__init__.py'>
        #get the HL7 tables in a dictionary else set to empty list
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    if cardinality[0] == 1:
        htmlString += f'<li><span class="caret">{segName}</span>\n'
    else:
        htmlString += f'<li><span class="caret dis">{segName}</span>\n'    
    sequence_type, segmentsS = segmentDefinition
    #FIELD
    if len(segmentsS) > 0:
        htmlString += f'<ul class="nested">\n'            
        for elementS in segmentsS: 
                segment_name, segment_definition, cardinality, segment_type = elementS   
                sname = segment_name+" - "+segment_definition[3].replace("_", " ").title()+" ("+segment_definition[2]+")"
                #COMPONENT
                if segment_definition[0] == "sequence":
                    if segment_definition[4] and segment_definition[4] in TABLES:
                        if cardinality[0] == 1:
                            htmlString += f'<li><span class="caret" >{sname} <i class="bi bi-table" data-value={segment_definition[4]+"!"+segment_definition[3]}></i></li>\n'
                        else:    
                            htmlString += f'<li><span class="caret dis" >{sname} <i class="bi bi-table" data-value={segment_definition[4]+"!"+segment_definition[3]}></i></li>\n'
                    else:                    
                        if cardinality[0] == 1:
                            htmlString += f'<li><span class="caret">{sname}</span>\n'
                        else:    
                            htmlString += f'<li><span class="caret dis">{sname}</span>\n'
                    htmlString += f'<ul class="nested">\n'    
                    segmentsC = segment_definition[1]       
                    for counter,elementC in enumerate(segmentsC, start=1):
                        segment_nameC, segment_definition, cardinalitySC, segment_type = elementC
                        sname = segment_name+"_"+str(counter)+" - "+segment_definition[3].replace("_", " ").title()+" ("+segment_definition[2]+")"                        
                        if segment_definition[4] and segment_definition[4] in TABLES:
                            #sname += segment_definition[4]
                            if cardinality[0] == 1:
                                htmlString += f'<li><span class="caret-box" >{sname} <i class="bi bi-table" data-value={segment_definition[4]+"!"+segment_definition[3]}></i></li>\n'
                            else:
                                htmlString += f'<li><span class="caret-box dis">{sname} <i class="bi bi-table" data-value={segment_definition[4]+"!"+segment_definition[3]}></i></li>\n'
                        else:   
                            if cardinality[0] == 1:
                                htmlString += f'<li><span class="caret-box">{sname}</i></li>\n'
                            else:
                                htmlString += f'<li><span class="caret-box dis">{sname}</li>\n'
                    htmlString += '</ul></li>'      
                else:
                    if segment_definition[4] and segment_definition[4] in TABLES:
                        #sname += segment_definition[4]
                        if cardinality[0] == 1:    
                            htmlString += f'<li><span class="caret-box">{sname} <i class="bi bi-table" data-value={segment_definition[4]+"!"+segment_definition[3]}></i></li>\n'      
                        else:
                            htmlString += f'<li><span class="caret-box dis">{sname} <i class="bi bi-table" data-value={segment_definition[4]+"!"+segment_definition[3]}></i></li>\n'  
                    else:
                        if cardinality[0] == 1:    
                            htmlString += f'<li><span class="caret-box">{sname}</li>\n'      
                        else:
                            htmlString += f'<li><span class="caret-box dis">{sname}</li>\n'                  
        htmlString += '</ul></li>'
    
    return htmlString
}

ClassMethod GetHL7Structure(messgeType) [ Language = python ]
{
"""
    Core class to be used to construct the HL7 structure
    
    Parms
    messageType: message type e.g ADT_A01, ORM_O01    

"""
import textwrap,iris
from hl7apy.core import Message
from HL7v2Gen import hl7_segment_names

m = Message(messgeType)
sequence_type, segmentsM = m.reference
#init list 
html_string = textwrap.dedent('''<ul>
''')

for elementM in segmentsM:  
    segment_name, segment_definition, cardinality, segment_type = elementM
    #SEGMENT
    if segment_type == "SEG":
        #get segment name
        description = hl7_segment_names.get(segment_name, "(SEG)")  # Get description from dictionary
        seg_name = f"{segment_name} - {description}"
        html_string = iris.cls(__name__).GetSegmentDetails(html_string,seg_name,cardinality,segment_definition)
    elif segment_type == "GRP":
        description = segment_name.replace(messgeType, "").lstrip('_') + " (GROUP)"
        if cardinality[0] == 1:
            html_string += f'<li><span class="caret">{description}</span>\n'
        else:    
            html_string += f'<li><span class="caret dis">{description}</span>\n'        
        html_string += f'<ul class="nested">\n'
        sequence_type, segmentsG = segment_definition
        for elementG in segmentsG: 
        #get segment name
            segment_name, segment_definition, cardinality, segment_type = elementG            
            if segment_type == "SEG":
                #get segment name
                description = hl7_segment_names.get(segment_name, "(SEG)")  # Get description from dictionary
                seg_name = f"{segment_name} - {description}"
                html_string = iris.cls(__name__).GetSegmentDetails(html_string,seg_name,cardinality,segment_definition) 
            elif segment_type == "GRP":
                description = segment_name.replace(messgeType, "").lstrip('_') + " (GROUP)"                
                if cardinality[0] == 1:
                    html_string += f'<li><span class="caret">{description}</span>\n'
                else:    
                    html_string += f'<li><span class="caret dis">{description}</span>\n'        
                html_string += f'<ul class="nested">\n'
                sequence_type, segmentsG2 = segment_definition
                for elementG2 in segmentsG2: 
                #get segment name
                    segment_name, segment_definition, cardinality, segment_type = elementG2            
                    if segment_type == "SEG":
                        #get segment name
                        description = hl7_segment_names.get(segment_name, "(SEG)")  # Get description from dictionary
                        seg_name = f"{segment_name} - {description}"
                        html_string = iris.cls(__name__).GetSegmentDetails(html_string,seg_name,cardinality,segment_definition)  
                    elif segment_type == "GRP":
                        description = segment_name.replace(messgeType, "").lstrip('_') + " (GROUP)"                
                        if cardinality[0] == 1:
                            html_string += f'<li><span class="caret">{description}</span>\n'
                        else:    
                            html_string += f'<li><span class="caret dis">{description}</span>\n'        
                        html_string += f'<ul class="nested">\n'
                        sequence_type, segmentsG3 = segment_definition
                        for elementG3 in segmentsG3: 
                        #get segment name
                            segment_name, segment_definition, cardinality, segment_type = elementG3            
                            if segment_type == "SEG":
                                #get segment name
                                description = hl7_segment_names.get(segment_name, "(SEG)")  # Get description from dictionary
                                seg_name = f"{segment_name} - {description}"
                                html_string = iris.cls(__name__).GetSegmentDetails(html_string,seg_name,cardinality,segment_definition)   
                        html_string += '</ul></li>' #closing segment list                                            
                html_string += '</ul></li>' #closing segment list                  
        html_string += '</ul></li>' #closing segment list   
html_string += '</ul>' #closing main list       

return html_string
}


/// Description
ClassMethod TestConnection(host, port) [ Language = python ]
{
"""    
    Class used to test TCP/IP connection

    params
    host : Host IP address
    port : Host Port

"""
import socket

# Create a socket object
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
# Set a timeout for the connection (optional)
sock.settimeout(10)  # Timeout in seconds
    
try:
    # Attempt to connect to the specified host and port
    sock.connect((host, int(port)))
    return f"Successfully connected to {host} on port {port}"
    return True
except socket.error as e:
    return f"Failed to connect to {host} on port {port}: {e}"
    return False
finally:
        # Always close the socket after the test
    sock.close()
}

ClassMethod GetTablesData(table, ver = "2.5") [ Language = python ]
{
    """    
    Class used to get HL7 tables data (HL7 coding system)

    params
    table : Table ID
    ver : HL7 version

    """
    import importlib
    import hl7apy as cr
    from HL7v2Gen import TABLES
    tbl = '<table class="table table-striped"><thead class="bg-secondary"><tr><th>ID</th><th>Description</th></td></tr></tr></thead><tbody>'
    #If table is defined in HL7v2Gen tables dictionary then table values
    if table in TABLES:
        table_values = TABLES[table][1]

        # Iterate over the dictionary
        for code, description in table_values.items():
            tbl += '<tr>'
            tbl += f'<td>{code}</td><td>{description}</td>'
            tbl += '</tr>'    
    #Take values from library itself    
    else:
        #Get reference of TABLES   
        if ver in cr.SUPPORTED_LIBRARIES:          
            module_name = cr.SUPPORTED_LIBRARIES[ver]
            lib = importlib.import_module(module_name)
            #get tables reference
            try:
                LibTABLES = lib.tables.TABLES
            except:
                LibTABLES = {}    
        # Get the values for the key 
        table_values = LibTABLES[table][1]
        for code in table_values:
            tbl += '<tr>'
            tbl += f'<td>{code}</td><td>{code}</td>'
            tbl += '</tr>'    
    tbl += "</tbody></table>"
    
    return tbl
}


/// Get list of tables for version
ClassMethod GetListandValuesofTables(ver = "2.5") [ Language = python ]
{
import importlib, random
import hl7apy as cr
thislist = ""
#Get HL7 version related library

if ver in cr.SUPPORTED_LIBRARIES:      
    message_with_descriptions = []
    module_name = cr.SUPPORTED_LIBRARIES[ver]
    lib = importlib.import_module(module_name)
    #get datatype reference
    try:
        TABLES = lib.tables.TABLES
    except:
        TABLES = 0
        print ("Tables Errors")
    itera = 0
    emptylist="EMPTYLIST: "
    if TABLES !=0:
        for x in TABLES:
        # Get the values for the key
            ##print(f"{TABLES[x][0]}: {TABLES[x][1]}")
            if str(TABLES[x][1])=="()":
                emptylist=emptylist+TABLES[x][0]+";"
            if int==0:
                thislist = x
                itera = itera + 1
            else:
                thislist = thislist +","+x
        list_string = thislist.split(",")
        unique_list = list(set(list_string))
        ##print(emptylist)
        return unique_list
else:
    ##print("Version Not supported")
    return 0
}















}

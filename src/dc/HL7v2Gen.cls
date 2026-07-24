Include Ensemble

Class dc.HL7v2Gen Extends %SwizzleObject
{

ClassMethod GetTestVal(dataType = "", table = "", ver = "2.5") [ Language = python ]
{
    """
    Function to generate HL7 message based on data type 
    
    Parms
    dataType: Data Type
    table: If field is linked to the table
    
    """
    ###temporary####
    charSep = "|^~\&"
    import iris
    import textwrap,random,importlib
    from faker import Faker
    import datetime,string    
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Initialize Faker instance
    fake = Faker()
    #Get the value from table values
    if table:
        # Get the values for the key
        ##print(f":{TABLES[table][1]}:")

        if str(TABLES[table][1]) != "()":
            table_values = TABLES[table][1]
            return random.choice(table_values)
        else:
            ##print("Table not filled in")
            return "E"
    match dataType:
        case "AD":
            GeneratedDataType = iris.cls(__name__).GenerateAD(ver,charSep)
        case "AUI":
            GeneratedDataType = iris.cls(__name__).GenerateAUI(ver,charSep)
        case "BLG":
            GeneratedDataType = iris.cls(__name__).GenerateBLG(ver,charSep)
        case "CCD":
            GeneratedDataType = iris.cls(__name__).GenerateCCD(ver,charSep)
        case "CCP":
            GeneratedDataType = iris.cls(__name__).GenerateCCP(ver,charSep)
        case "CD":
            GeneratedDataType = iris.cls(__name__).GenerateCD(ver,charSep)
        case "CE":
            GeneratedDataType = iris.cls(__name__).GenerateCE(ver,charSep)
        case "CF":
            GeneratedDataType = iris.cls(__name__).GenerateCF(ver,charSep)
        case "CK":
            GeneratedDataType = iris.cls(__name__).GenerateCK(ver,charSep)
        case "CK_ACCOUNT_NO":
            GeneratedDataType = iris.cls(__name__).GenerateCKACCOUNTNO(ver,charSep)
        case "CK_PAT_ID":
            GeneratedDataType = iris.cls(__name__).GenerateCKPATID(ver,charSep)
        case "CM":
            GeneratedDataType = iris.cls(__name__).GenerateCM(ver,charSep)
        case "CM_ABS_RANGE":
            GeneratedDataType = iris.cls(__name__).GenerateCMABSRANGE(ver,charSep)
        case "CM_AUI":
            GeneratedDataType = iris.cls(__name__).GenerateCMAUI(ver,charSep)
        case "CM_BATCH_TOTAL":
            GeneratedDataType = iris.cls(__name__).GenerateCMBATCHTOTAL(ver,charSep)
        case "CM_CCD":
            GeneratedDataType = iris.cls(__name__).GenerateCMCCD(ver,charSep)
        case "CM_CP":
            GeneratedDataType = iris.cls(__name__).GenerateCMCP(ver,charSep)
        case "CM_CSU":
            GeneratedDataType = iris.cls(__name__).GenerateCMCSU(ver,charSep)
        case "CM_DDI":
            GeneratedDataType = iris.cls(__name__).GenerateCMDDI(ver,charSep)
        case "CM_DIN":
            GeneratedDataType = iris.cls(__name__).GenerateCMDIN(ver,charSep)
        case "CM_DLD":
            GeneratedDataType = iris.cls(__name__).GenerateCMDLD(ver,charSep)
        case "CM_DLT":
            GeneratedDataType = iris.cls(__name__).GenerateCMDLT(ver,charSep)
        case "CM_DTN":
            GeneratedDataType = iris.cls(__name__).GenerateCMDTN(ver,charSep)
        case "CM_EIP":
            GeneratedDataType = iris.cls(__name__).GenerateCMEIP(ver,charSep)
        case "CM_ELD":
            GeneratedDataType = iris.cls(__name__).GenerateCMELD(ver,charSep)
        case "CM_ELECTRODE":
            GeneratedDataType = iris.cls(__name__).GenerateCMELECTRODE(ver,charSep)
        case "CM_FILLER":
            GeneratedDataType = iris.cls(__name__).GenerateCMFILLER(ver,charSep)
        case "CM_FINANCE":
            GeneratedDataType = iris.cls(__name__).GenerateCMFINANCE(ver,charSep)
        case "CM_GROUP_ID":
            GeneratedDataType = iris.cls(__name__).GenerateCMGROUPID(ver,charSep)
        case "CM_INTERNAL_LOCATION":
            GeneratedDataType = iris.cls(__name__).GenerateCMINTERNALLOCATION(ver,charSep)
        case "CM_JOB_CODE":
            GeneratedDataType = iris.cls(__name__).GenerateCMJOBCODE(ver,charSep)
        case "CM_LA1":
            GeneratedDataType = iris.cls(__name__).GenerateCMLA1(ver,charSep)
        case "CM_LICENSE_NO":
            GeneratedDataType = iris.cls(__name__).GenerateCMLICENSENO(ver,charSep)
        case "CM_MDV":
            GeneratedDataType = iris.cls(__name__).GenerateCMMDV(ver,charSep)
        case "CM_MOC":
            GeneratedDataType = iris.cls(__name__).GenerateCMMOC(ver,charSep)
        case "CM_MSG":
            GeneratedDataType = iris.cls(__name__).GenerateCMMSG(ver,charSep)
        case "CM_NDL":
            GeneratedDataType = iris.cls(__name__).GenerateCMNDL(ver,charSep)
        case "CM_OCD":
            GeneratedDataType = iris.cls(__name__).GenerateCMOCD(ver,charSep)
        case "CM_OS":
            GeneratedDataType = iris.cls(__name__).GenerateCMOS(ver,charSep)
        case "CM_OSP":
            GeneratedDataType = iris.cls(__name__).GenerateCMOSP(ver,charSep)
        case "CM_PARENT_RESULT":
            GeneratedDataType = iris.cls(__name__).GenerateCMPARENTRESULT(ver,charSep)
        case "CM_PAT_ID":
            GeneratedDataType = iris.cls(__name__).GenerateCMPATID(ver,charSep)
        case "CM_PAT_ID_0192":
            GeneratedDataType = iris.cls(__name__).GenerateCMPATID0192(ver,charSep)
        case "CM_PCF":
            GeneratedDataType = iris.cls(__name__).GenerateCMPCF(ver,charSep)
        case "CM_PEN":
            GeneratedDataType = iris.cls(__name__).GenerateCMPEN(ver,charSep)
        case "CM_PI":
            GeneratedDataType = iris.cls(__name__).GenerateCMPI(ver,charSep)
        case "CM_PIP":
            GeneratedDataType = iris.cls(__name__).GenerateCMPIP(ver,charSep)
        case "CM_PLACER":
            GeneratedDataType = iris.cls(__name__).GenerateCMPLACER(ver,charSep)
        case "CM_PLN":
            GeneratedDataType = iris.cls(__name__).GenerateCMPLN(ver,charSep)
        case "CM_POSITION":
            GeneratedDataType = iris.cls(__name__).GenerateCMPOSITION(ver,charSep)
        case "CM_PRACTITIONER":
            GeneratedDataType = iris.cls(__name__).GenerateCMPRACTITIONER(ver,charSep)
        case "CM_PRL":
            GeneratedDataType = iris.cls(__name__).GenerateCMPRL(ver,charSep)
        case "CM_PTA":
            GeneratedDataType = iris.cls(__name__).GenerateCMPTA(ver,charSep)
        case "CM_RANGE":
            GeneratedDataType = iris.cls(__name__).GenerateCMRANGE(ver,charSep)
        case "CM_RANGE_SIMPLE":
            GeneratedDataType = iris.cls(__name__).GenerateCMRANGESIMPLE(ver,charSep)
        case "CM_RFR":
            GeneratedDataType = iris.cls(__name__).GenerateCMRFR(ver,charSep)
        case "CM_RI":
            GeneratedDataType = iris.cls(__name__).GenerateCMRI(ver,charSep)
        case "CM_RMC":
            GeneratedDataType = iris.cls(__name__).GenerateCMRMC(ver,charSep)
        case "CM_SPD":
            GeneratedDataType = iris.cls(__name__).GenerateCMSPD(ver,charSep)
        case "CM_SPS":
            GeneratedDataType = iris.cls(__name__).GenerateCMSPS(ver,charSep)
        case "CM_UVC":
            GeneratedDataType = iris.cls(__name__).GenerateCMUVC(ver,charSep)
        case "CM_VR":
            GeneratedDataType = iris.cls(__name__).GenerateCMVR(ver,charSep)
        case "CM_WVI":
            GeneratedDataType = iris.cls(__name__).GenerateCMWVI(ver,charSep)
        case "CN":
            GeneratedDataType = iris.cls(__name__).GenerateCN(ver,charSep)
        case "CN_PERSON":
            GeneratedDataType = iris.cls(__name__).GenerateCNPERSON(ver,charSep)
        case "CN_PHYSICIAN":
            GeneratedDataType = iris.cls(__name__).GenerateCNPHYSICIAN(ver,charSep)
        case "CN_SIMPLE":
            GeneratedDataType = iris.cls(__name__).GenerateCNSIMPLE(ver,charSep)
        case "CNS":
            GeneratedDataType = iris.cls(__name__).GenerateCNS(ver,charSep)
        case "CNE":
            GeneratedDataType = iris.cls(__name__).GenerateCNE(ver,charSep)
        case "CNN":
            GeneratedDataType = iris.cls(__name__).GenerateCNN(ver,charSep)
        case "CP":
            GeneratedDataType = iris.cls(__name__).GenerateCP(ver,charSep)
        case "CQ":
            GeneratedDataType = iris.cls(__name__).GenerateCQ(ver,charSep)
        case "CQ_QUANTITY":
            GeneratedDataType = iris.cls(__name__).GenerateCQQUANTITY(ver,charSep)
        case "CQ_SIMPLE":
            GeneratedDataType = iris.cls(__name__).GenerateCQSIMPLE(ver,charSep)
        case "CSU":
            GeneratedDataType = iris.cls(__name__).GenerateCSU(ver,charSep)
        case "CWE":
            GeneratedDataType = iris.cls(__name__).GenerateCWE(ver,charSep)
        case "CX":
            GeneratedDataType = iris.cls(__name__).GenerateCX(ver,charSep)
        case "DDI":
            GeneratedDataType = iris.cls(__name__).GenerateDDI(ver,charSep)
        case "DIN":
            GeneratedDataType = iris.cls(__name__).GenerateDIN(ver,charSep)
        case "DLD":
            GeneratedDataType = iris.cls(__name__).GenerateDLD(ver,charSep)
        case "DLN":
            GeneratedDataType = iris.cls(__name__).GenerateDLN(ver,charSep)
        case "DLT":
            GeneratedDataType = iris.cls(__name__).GenerateDLT(ver,charSep)
        case "DR":
            GeneratedDataType = iris.cls(__name__).GenerateDR(ver,charSep)
        case "DR_SIMPLE":
            GeneratedDataType = iris.cls(__name__).GenerateDRSIMPLE(ver,charSep)
        case "DT":
            GeneratedDataType = iris.cls(__name__).GenerateDT(ver,charSep)
        case "DTM":
            GeneratedDataType = iris.cls(__name__).GenerateDTM(ver,charSep)
        case "DTN":
            GeneratedDataType = iris.cls(__name__).GenerateDTN(ver,charSep)
        case "ED":
            GeneratedDataType = iris.cls(__name__).GenerateED(ver,charSep)
        case "EI":
            GeneratedDataType = iris.cls(__name__).GenerateEI(ver,charSep)
        case "EIP":
            GeneratedDataType = iris.cls(__name__).GenerateEIP(ver,charSep)
        case "ELD":
            GeneratedDataType = iris.cls(__name__).GenerateELD(ver,charSep)
        case "ERL":
            GeneratedDataType = iris.cls(__name__).GenerateERL(ver,charSep)
        case "FC":
            GeneratedDataType = iris.cls(__name__).GenerateFC(ver,charSep)
        case "FN":
            GeneratedDataType = iris.cls(__name__).GenerateFN(ver,charSep)
        case "FT":
            GeneratedDataType = iris.cls(__name__).GenerateFT(ver,charSep)
        case "GTS":
            GeneratedDataType = iris.cls(__name__).GenerateGTS(ver,charSep)
        case "HD":
            GeneratedDataType = iris.cls(__name__).GenerateHD(ver,charSep)
        case "ICD":
            GeneratedDataType = iris.cls(__name__).GenerateICD(ver,charSep)
        case "ID":
            GeneratedDataType = iris.cls(__name__).GenerateID(ver,charSep)
        case "IS":
            GeneratedDataType = iris.cls(__name__).GenerateIS(ver,charSep)
        case "JCC":
            GeneratedDataType = iris.cls(__name__).GenerateJCC(ver,charSep)
        case "LA1":
            GeneratedDataType = iris.cls(__name__).GenerateLA1(ver,charSep)
        case "LA2":
            GeneratedDataType = iris.cls(__name__).GenerateLA2(ver,charSep)
        case "MA":
            GeneratedDataType = iris.cls(__name__).GenerateMA(ver,charSep)
        case "MFI":
            GeneratedDataType = iris.cls(__name__).GenerateMFI(ver,charSep)
        case "MO":
            GeneratedDataType = iris.cls(__name__).GenerateMO(ver,charSep)
        case "MOC":
            GeneratedDataType = iris.cls(__name__).GenerateMOC(ver,charSep)
        case "MOP":
            GeneratedDataType = iris.cls(__name__).GenerateMOP(ver,charSep)
        case "MSG":
            GeneratedDataType = iris.cls(__name__).GenerateMSG(ver,charSep)
        case "NA":
            GeneratedDataType = iris.cls(__name__).GenerateNA(ver,charSep)
        case "NDL":
            GeneratedDataType = iris.cls(__name__).GenerateNDL(ver,charSep)
        case "NM":
            GeneratedDataType = iris.cls(__name__).GenerateNM(ver,charSep)
        case "NR":
            GeneratedDataType = iris.cls(__name__).GenerateNR(ver,charSep)
        case "OCD":
            GeneratedDataType = iris.cls(__name__).GenerateOCD(ver,charSep)
        case "OG":
            GeneratedDataType = iris.cls(__name__).GenerateOG(ver,charSep)
        case "OSD":
            GeneratedDataType = iris.cls(__name__).GenerateOSD(ver,charSep)
        case "OSP":
            GeneratedDataType = iris.cls(__name__).GenerateOSP(ver,charSep)
        case "PCF":
            GeneratedDataType = iris.cls(__name__).GeneratePCF(ver,charSep)
        case "PI":
            GeneratedDataType = iris.cls(__name__).GeneratePI(ver,charSep)
        case "PIP":
            GeneratedDataType = iris.cls(__name__).GeneratePIP(ver,charSep)
        case "PL":
            GeneratedDataType = iris.cls(__name__).GeneratePL(ver,charSep)
        case "PLN":
            GeneratedDataType = iris.cls(__name__).GeneratePLN(ver,charSep)
        case "PN":
            GeneratedDataType = iris.cls(__name__).GeneratePN(ver,charSep)
        case "PPN":
            GeneratedDataType = iris.cls(__name__).GeneratePPN(ver,charSep)
        case "PRL":
            GeneratedDataType = iris.cls(__name__).GeneratePRL(ver,charSep)
        case "PT":
            GeneratedDataType = iris.cls(__name__).GeneratePT(ver,charSep)
        case "PTA":
            GeneratedDataType = iris.cls(__name__).GeneratePTA(ver,charSep)
        case "QIP":
            GeneratedDataType = iris.cls(__name__).GenerateQIP(ver,charSep)
        case "QSC":
            GeneratedDataType = iris.cls(__name__).GenerateQSC(ver,charSep)
        case "RCD":
            GeneratedDataType = iris.cls(__name__).GenerateRCD(ver,charSep)
        case "RFR":
            GeneratedDataType = iris.cls(__name__).GenerateRFR(ver,charSep)
        case "RI":
            GeneratedDataType = iris.cls(__name__).GenerateRI(ver,charSep)
        case "RMC":
            GeneratedDataType = iris.cls(__name__).GenerateRMC(ver,charSep)
        case "RP":
            GeneratedDataType = iris.cls(__name__).GenerateRP(ver,charSep)
        case "RPT":
            GeneratedDataType = iris.cls(__name__).GenerateRPT(ver,charSep)
        case "SAD":
            GeneratedDataType = iris.cls(__name__).GenerateSAD(ver,charSep)
        case "SCV":
            GeneratedDataType = iris.cls(__name__).GenerateSCV(ver,charSep)
        case "SI":
            GeneratedDataType = iris.cls(__name__).GenerateSI(ver,charSep)
        case "SN":
            GeneratedDataType = iris.cls(__name__).GenerateSN(ver,charSep)
        case "SNM":
            GeneratedDataType = iris.cls(__name__).GenerateSNM(ver,charSep)
        case "SPD":
            GeneratedDataType = iris.cls(__name__).GenerateSPD(ver,charSep)
        case "SPS":
            GeneratedDataType = iris.cls(__name__).GenerateSPS(ver,charSep)
        case "SRT":
            GeneratedDataType = iris.cls(__name__).GenerateSRT(ver,charSep)
        case "ST":
            GeneratedDataType = iris.cls(__name__).GenerateST(ver,charSep)
        case "TM":
            GeneratedDataType = iris.cls(__name__).GenerateTM(ver,charSep)
        case "TN":
            GeneratedDataType = iris.cls(__name__).GenerateTN(ver,charSep)
        case "TQ":
            GeneratedDataType = iris.cls(__name__).GenerateTQ(ver,charSep)
        case "TS":
            GeneratedDataType = iris.cls(__name__).GenerateTS(ver,charSep)
        case "TX":
            GeneratedDataType = iris.cls(__name__).GenerateTX(ver,charSep)
        case "TX_CHALLENGE":
            GeneratedDataType = iris.cls(__name__).GenerateTXCHALLENGE(ver,charSep)
        case "UVC":
            GeneratedDataType = iris.cls(__name__).GenerateUVC(ver,charSep)
        case "VH":
            GeneratedDataType = iris.cls(__name__).GenerateVH(ver,charSep)
        case "VID":
            GeneratedDataType = iris.cls(__name__).GenerateVID(ver,charSep)
        case "VR":
            GeneratedDataType = iris.cls(__name__).GenerateVR(ver,charSep)        
        case "WVI":
            GeneratedDataType = iris.cls(__name__).GenerateWVI(ver,charSep)
        case "WVS":
            GeneratedDataType = iris.cls(__name__).GenerateWVS(ver,charSep)
        case "XAD":
            GeneratedDataType = iris.cls(__name__).GenerateXAD(ver,charSep)
        case "XCN":
            GeneratedDataType = iris.cls(__name__).GenerateXCN(ver,charSep)
        case "XON":
            GeneratedDataType = iris.cls(__name__).GenerateXON(ver,charSep)
        case "XPN":
            GeneratedDataType = iris.cls(__name__).GenerateXPN(ver,charSep)
        case "XTN":
            GeneratedDataType = iris.cls(__name__).GenerateXTN(ver,charSep)
        case "_":
            ##print("No matching datatypes")
            GeneratedDataType = "A"
        
    return GeneratedDataType
}

// Function to validate HL7 Message

ClassMethod ValidateMessage(msg) [ Language = python ]
{
"""
    Class to validate generated HL7 Message
    
    Parms
    msg: Message to validate    
"""    
from hl7apy import parser
import html

decoded_string = html.unescape(msg)
# Try to parse and validate the HL7 message
try:
    message = parser.parse_message(decoded_string)
    #message.validate()
    return "HL7 Message is valid!"
except Exception as e:
    return f"Invalid HL7 message: {e}"
}

ClassMethod GetSegmentDetails(htmlString, segName, cardinality, segmentDefinition, ver = "2.5") [ Language = python ]
{

    """
    Class to Get Segment details which is used in generation of HL7 Structure
    
    Parms
    htmlString: A main string used to construct the strcture in List form
    segName: Segment name
    cardinality: (0 / 1)
    segmentDefinition: Containing related elements
    ver: HL7 message version, defalut value "2.5"

    """
    import importlib
    import hl7apy as cr
    #Get reference of TABLES   
    if ver in cr.SUPPORTED_LIBRARIES:          
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
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
    Core class to be used to construct the HL7 strcuture
    
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

// Funtion to return all the message types against the HL7 Version

ClassMethod GetMessageTypes(ver) [ Language = python ]
{
"""
    Function to return all the Message Types against HL7 version

    Parms
    ver: HL7 version
"""
from HL7v2Gen import hl7_message_types 
import hl7apy as cr
import importlib

version = ver  
if version in cr.SUPPORTED_LIBRARIES:      
    message_with_descriptions = []
    module_name = cr.SUPPORTED_LIBRARIES[version]
    lib = importlib.import_module(module_name)
    MESSAGES = lib.MESSAGES
    message_types = list(MESSAGES.keys())    
    if 'ACK' in message_types:
        #Move ACK message at the end
        message_types.remove('ACK')  # Remove 'ACK' from its current position
        message_types.append('ACK')  # Append 'ACK' to the end
    
    for message in message_types:
        description = hl7_message_types.get(message, "Description not found")  # Get description from dictionary
        if description != "Description not found":
            message_with_descriptions.append(f"{message}-{description}")
    
    result = '|'.join(message_with_descriptions)
    return result
else:
    return ver
}

ClassMethod SendMessage(msgg, host, port) [ Language = python ]
{
"""
    Class used to send message to TCP/IP client

    params
    msgg : HL7 message 
    host : Host IP address
    port : Host Port
"""
import socket
from hl7apy.parser import parse_message
from hl7apy.core import Message

#Send message to production

#hl7_message = msgg.replace("\n","\r")
hl7_message = msgg

# convert string to int
port = int(port)
# TCP server address and port
server_address = (host, port)  # Example IP and port

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
try:
    # Connect to the server
    sock.connect(server_address)

    # Send the HL7 message
    sock.sendall(hl7_message.encode('utf-8'))
         
    hl7_message = hl7_message + "   RETVAL HL7 message sent successfully!"
except socket.error as e:
    hl7_message = hl7_message + "   RETVAL"+ f"Socket error occurred: {e}"
except socket.timeout as e:
    hl7_message = hl7_message + "   RETVAL"+ f"Socket timeout: {e}"
except AttributeError as e:
    hl7_message = hl7_message + "   RETVAL"+ f"Error in HL7 message construction: {e}"
except Exception as e:
    hl7_message = hl7_message + "   RETVAL"+ f"An unexpected error occurred: {e}"

finally:
    # Close the connection
    sock.close()
return hl7_message
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

/// Build AD datatype
ClassMethod GenerateAD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import random,importlib
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import string    
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]

    # Build the example Datatype
    StreetAddress = fake.street_address()
    OtherDesignation = "APT1"
    City = fake.city()
    StateorProvince = fake.state()
    ZiporPostalCode = fake.zipcode()
    Country = fake.country_code()
    try:
        AT = TABLES["HL70190"][1]
    except:
        AT = "BA","BI","N","BDL","F","C","B","H","L","M","O","P","RH","BR","S","SH","TM","V"
    AddressType = random.choice(AT)
    OtherGeographicDesignation = fake.current_country()
    return f"{StreetAddress}{CompSep}{OtherDesignation}{CompSep}{City}{CompSep}{StateorProvince}{CompSep}{ZiporPostalCode}{CompSep}{Country}{CompSep}{AddressType}{CompSep}{OtherGeographicDesignation}"
}

/// Build AUI datatype
ClassMethod GenerateAUI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import iris,random
    from faker import Faker
    from datetime import datetime
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build the example Datatype
    AuthorizationNumber = random.randint(10000000000, 999999999999)
    # Using current time
    ini_time_for_now = datetime.now()
    # Current date and time in YYYYMMDDHHMMSS
    Date = ini_time_for_now.strftime("%Y%m%d%H%M%S")
    Source = iris.cls(__name__).GenerateST(ver, charSep)
    return f"{AuthorizationNumber}{CompSep}{Date}{CompSep}{Source}"
}

/// Build BLG datatype
ClassMethod GenerateBLG(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import iris,random,importlib
    # Get the Component separator
    CompSep = charSep[1:2]
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    


    # Build the example Datatype

    # get table values
    try:
        WhentoCharge = TABLES["HL70100"][1]
    except:
        WhentoCharge = "D","O","R","S","T"
    # pick one of the values
    WhentoCharge = random.choice(WhentoCharge)
    # get table values
    try:
        ChargeType = TABLES["HL70122"][1]
    except:
        ChargeType = "CH","CO","CR","DP","GR","NC","PC","RS"
    ChargeType = random.choice(ChargeType)
    AccountID = iris.cls(__name__).GenerateCX(ver, charSep)
    if ver > "2.4":
        try:
            ChargeTypeReason = TABLES["HL70475"][1]
        except:
            ChargeTypeReason = "Allergy","Intolerance","Treatement Failure","Patient Request","No Exception"
        ChargeTypeReason = random.choice(ChargeTypeReason)
        return f"{WhentoCharge}{CompSep}{ChargeType}{CompSep}{AccountID}{CompSep}{ChargeTypeReason}"
    else:
        return f"{WhentoCharge}{CompSep}{ChargeType}{CompSep}{AccountID}"
}

/// Generate Charge Code and Date
ClassMethod GenerateCCD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CCD Charge Code and Date
    import iris,importlib,random
    import hl7apy as cr
    # Get the Component separator
    CompSep = charSep[1:2]
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # name of coding system version logic
    match ver:
        case "2.1":
            InvocationEvent = iris.cls(__name__).GenerateID(ver,charSep)
        case "2.2":
            InvocationEvent = iris.cls(__name__).GenerateID(ver,charSep)
        case "2.3":
            InvocationEvent = iris.cls(__name__).GenerateID(ver,charSep)
        case "2.3.1":
            # get table values
            try:
                InvocationEvent  = TABLES["HL70100"][1]
            except:
                InvocationEvent = "D","O","R","S","T"
            # pick one of the values
            InvocationEvent = random.choice(InvocationEvent)
        case "2.4":
            # get table values
            try:
                InvocationEvent  = TABLES["HL70100"][1]
            except:
                InvocationEvent = "D","O","R","S","T"
            # pick one of the values
            InvocationEvent = random.choice(InvocationEvent)
        case "2.5":
            # get table values
            try:
                InvocationEvent  = TABLES["HL70100"][1]
            except:
                InvocationEvent = "D","O","R","S","T"
            # pick one of the values
            InvocationEvent = random.choice(InvocationEvent)
        case "2.5.1":
            # get table values
            try:
                InvocationEvent  = TABLES["HL70100"][1]
            except:
                InvocationEvent = "D","O","R","S","T"
            # pick one of the values
            InvocationEvent = random.choice(InvocationEvent)
        case "2.6":
            # get table values
            try:
                InvocationEvent  = TABLES["HL70100"][1]
            except:
                InvocationEvent = "D","O","R","S","T"
            # pick one of the values
            InvocationEvent = random.choice(InvocationEvent)
        case _:
            InvocationEvent = "notable"    

    Datetime = iris.cls(__name__).GenerateTS(ver,charSep)


    return f"{InvocationEvent}{CompSep}{Datetime}"
}

/// Build CCP Datatype
ClassMethod GenerateCCP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CCP Channel Calibration Parameters
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    ChannelCalibrationSensitivit = iris.cls(__name__).GenerateNM(ver,charSep)
    ChannelCalibrationBaseline = iris.cls(__name__).GenerateNM(ver,charSep)
    ChannelCalibrationTimeSkew = iris.cls(__name__).GenerateNM(ver,charSep)
    return f"{ChannelCalibrationSensitivit}{CompSep}{ChannelCalibrationBaseline}{CompSep}{ChannelCalibrationTimeSkew}"
}

/// Build CD Datatype
ClassMethod GenerateCD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CD Channel Definition
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    ChannelIdentifier = iris.cls(__name__).GenerateWVI(ver,charSep)
    WaveformSource = iris.cls(__name__).GenerateWVS(ver,charSep)
    ChannelSensitivityUnits = iris.cls(__name__).GenerateCSU(ver,charSep)
    ChannelCalibrationParameters = iris.cls(__name__).GenerateCCP(ver,charSep)
    ChannelSamplingFrequency = iris.cls(__name__).GenerateNM(ver,charSep)
    MinimumMaximumDataValues = iris.cls(__name__).GenerateNR(ver,charSep)
    return f"{ChannelIdentifier}{CompSep}{WaveformSource}{CompSep}{ChannelSensitivityUnits}{CompSep}{ChannelCalibrationParameters}{CompSep}{ChannelSamplingFrequency}{CompSep}{MinimumMaximumDataValues}"
}

/// Build CE datatype
ClassMethod GenerateCE(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    import textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]

    # Build the example Datatype
    identifierST = str(random.randint(100, 999))  # Random 3-digit code
    text = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description

    # name of coding system version logic
            # get table values
    try:
        nameofcodingsystem = TABLES["HL70396"][1]
    except:
        nameofcodingsystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
    # pick one of the values
    nameofcodingsystem = random.choice(nameofcodingsystem)


    alternateidentifierST = str(random.randint(100, 999))  # Random 3-digit code
    alternatetext = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
    # name of coding system version logic
    # get table values
    try:
        nameofalternatecodingsystem = TABLES["HL70396"][1]
    except:
        nameofalternatecodingsystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
    # pick one of the values
    nameofalternatecodingsystem = random.choice(nameofalternatecodingsystem)

    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep == "None":
        return f"{identifierST}{CompSep}{text}{CompSep}{nameofcodingsystem}{CompSep}{alternateidentifierST}{CompSep}{alternatetext}{CompSep}{nameofalternatecodingsystem}"
    else:
        return f"{identifierST}{SubCompSep}{text}{SubCompSep}{nameofcodingsystem}{SubCompSep}{alternateidentifierST}{SubCompSep}{alternatetext}{SubCompSep}{nameofalternatecodingsystem}"
}

/// Build CF datatype
ClassMethod GenerateCF(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]


    # Build the example Datatype
    Identifier = iris.cls(__name__).GenerateST(ver,charSep)
    FormattedText = iris.cls(__name__).GenerateFT(ver,charSep)
    # name of coding system version logic
    try:
        NameofCodingSystem = TABLES["HL70396"][1]
    except:
        NameofCodingSystem = "99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"
    # pick a random value
    NameofCodingSystem = random.choice(NameofCodingSystem)
    AlternateIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateFormattedText = iris.cls(__name__).GenerateFT(ver,charSep)
    # name of coding system version logic
    try:
        NameofAlternateCodingSystem = TABLES["HL70396"][1]
    except:
        NameofAlternateCodingSystem = "99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"
    NameofAlternateCodingSystem = random.choice(NameofAlternateCodingSystem)

    if ver > "2.6":
        CodingSystemVersionID = iris.cls(__name__).GenerateST(ver,charSep)
        AlternateCodingSystemVersion = iris.cls(__name__).GenerateST(ver,charSep)
        OriginalText = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltFormattedText = iris.cls(__name__).GenerateFT(ver,charSep)

        # name of coding system version logic
        try:
            NameofSecAltCodingSystem = TABLES["HL70396"][1]
        except:
            NameofSecAltCodingSystem = "99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"
        NameofSecAltCodingSystem = random.choice(NameofSecAltCodingSystem)

        SecAltCodingSystemVersionID = iris.cls(__name__).GenerateST(ver,charSep)
        CodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
        ValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
        ValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)
        AlternateCodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
        AlternateValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
        AlternateValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)
        SecAltCodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)



    # return case
    match ver:
        case "2.3":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}"
        case "2.3.1":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}"
        case "2.4":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}"
        case "2.5":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}"
        case "2.5.1":
           return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}"
        case "2.6":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}"
        case "2.7":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltFormattedText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
        case "2.7.1":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltFormattedText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
        case "2.8":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltFormattedText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
        case "2.8.1":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltFormattedText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
        case "2.8.2":
            return f"{Identifier}{CompSep}{FormattedText}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateFormattedText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltFormattedText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
        case _:
            return
}

/// Build CK datatype
ClassMethod GenerateCK(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build the example Datatype
    IDnumberNM = str(random.randint(100, 999))  # Random 3-digit code
    checkdigit = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
    # get table values
    try:
        codeidentifyingthecheckdigit = TABLES["HL70061"][1]
    except:
        codeidentifyingthecheckdigit = "NPI","ISO","M10","M11"
    # pick one of the values
    codeidentifyingthecheckdigit = random.choice(codeidentifyingthecheckdigit)
    assigningauthority = fake.company()

    return f"{IDnumberNM}{CompSep}{checkdigit}{CompSep}{codeidentifyingthecheckdigit}{CompSep}{assigningauthority}"
}

/// Generate CK_ACCOUNT_NO
ClassMethod GenerateCKACCOUNTNO(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CKACCOUNTNO
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    accountnumber = iris.cls(__name__).GenerateNM(ver,charSep)
    checkdigit = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
    # get table values
    try:
        Checkdigitscheme = TABLES["HL70061"][1]
    except:
        Checkdigitscheme = "M10","M11"
    # pick one of the values
    Checkdigitscheme = random.choice(Checkdigitscheme)
    FacilityID = iris.cls(__name__).GenerateID(ver,charSep)
    return f"{accountnumber}{CompSep}{checkdigit}{CompSep}{Checkdigitscheme}{CompSep}{FacilityID}"
}

/// Generate CK_PAT_ID
ClassMethod GenerateCKPATID(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CKPATID
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    PatientID = iris.cls(__name__).GenerateST(ver,charSep)
    Checkdigit = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
    # get table values
    try:
        Checkdigitscheme = TABLES["HL70061"][1]
    except:
        Checkdigitscheme = "M10","M11"
    # pick one of the values
    Checkdigitscheme = random.choice(Checkdigitscheme)
    FacilityID = iris.cls(__name__).GenerateID(ver,charSep)
    return f"{PatientID}{CompSep}{Checkdigit}{CompSep}{Checkdigitscheme}{CompSep}{FacilityID}"
}

/// Generate CM_ABS_RANGE
ClassMethod GenerateCMABSRANGE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMABSRANGE
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    Range = iris.cls(__name__).GenerateCMRANGE(ver,charSep)
    NumericChange = iris.cls(__name__).GenerateNM(ver,charSep)
    PercentperChange = iris.cls(__name__).GenerateNM(ver,charSep)
    Days = iris.cls(__name__).GenerateNM(ver,charSep)
    return f"{Range}{CompSep}{NumericChange}{CompSep}{PercentperChange}{CompSep}{Days}"
}

/// Generate CM_AUI
ClassMethod GenerateCMAUI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMAUI
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    authorizationnumber = iris.cls(__name__).GenerateST(ver,charSep)
    date = iris.cls(__name__).GenerateDT(ver,charSep)
    source = iris.cls(__name__).GenerateST(ver,charSep)
    return f"{authorizationnumber}{CompSep}{date}{CompSep}{source}"
}

/// CM_BATCH_TOTAL
ClassMethod GenerateCMBATCHTOTAL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMBATCHTOTAL
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    Batchtotal1 = iris.cls(__name__).GenerateNM(ver,charSep)
    Batchtotal2 = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{Batchtotal1}{CompSep}{Batchtotal2}"
}

/// Generate CM_CCD
ClassMethod GenerateCMCCD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMCCD
    import iris,importlib,random
    import hl7apy as cr
        #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        WhentoCharge = TABLES["HL70100"][1]
    except:
        WhentoCharge = "D","O","R","S","T"
    WhentoCharge = random.choice(WhentoCharge)
    datetime = iris.cls(__name__).GenerateTS(ver,charSep)

    return f"{WhentoCharge}{CompSep}{datetime}"
}

/// Generate CM_CP
ClassMethod GenerateCMCP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMCP
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    SENSITIVITY_CORRECTION_FACTOR = iris.cls(__name__).GenerateNM(ver,charSep)
    BASELINE = iris.cls(__name__).GenerateNM(ver,charSep)
    TIME_SKEW = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{SENSITIVITY_CORRECTION_FACTOR}{CompSep}{BASELINE}{CompSep}{TIME_SKEW}"
}

/// Generate CM_CSU
ClassMethod GenerateCMCSU(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMCSU
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    SENSITIVITY = iris.cls(__name__).GenerateNM(ver,charSep)
    UNITS_IDENTIFIER = iris.cls(__name__).GenerateID(ver,charSep)
    UNITS_TEXT = iris.cls(__name__).GenerateST(ver,charSep)
    UNITS_NAME_OF_CODING_SYSTEM = iris.cls(__name__).GenerateST(ver,charSep)
    UNITS_ALTERNATE_IDENTIFIER = iris.cls(__name__).GenerateID(ver,charSep)
    UNITS_ALTERNATE_TEXT = iris.cls(__name__).GenerateST(ver,charSep)
    UNITS_NAME_OF_ALTERNATE_CODING_SYSTEM = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{SENSITIVITY}{CompSep}{UNITS_IDENTIFIER}{CompSep}{UNITS_TEXT}{CompSep}{UNITS_NAME_OF_CODING_SYSTEM}{CompSep}{UNITS_ALTERNATE_IDENTIFIER}{CompSep}{UNITS_ALTERNATE_TEXT}{CompSep}{UNITS_NAME_OF_ALTERNATE_CODING_SYSTEM}"
}

/// Generate CM_DDI
ClassMethod GenerateCMDDI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMDDI
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    delaydays = iris.cls(__name__).GenerateST(ver,charSep)
    amount = iris.cls(__name__).GenerateNM(ver,charSep)
    numberofdays = iris.cls(__name__).GenerateNM(ver,charSep)
    return f"{delaydays}{CompSep}{amount}{CompSep}{numberofdays}"
}

/// Generate CM_DIN
ClassMethod GenerateCMDIN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMDIN
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    Date = iris.cls(__name__).GenerateTS(ver,charSep)
    institutionname = iris.cls(__name__).GenerateCE(ver,charSep)

    return f"{Date}{CompSep}{institutionname}"
}

/// Generate CM_DLD
ClassMethod GenerateCMDLD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMDLD
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    dischargelocation = iris.cls(__name__).GenerateID(ver,charSep)
    effectivedate = iris.cls(__name__).GenerateTS(ver,charSep)

    return f"{dischargelocation}{CompSep}{effectivedate}"
}

/// Generate CM_DLT
ClassMethod GenerateCMDLT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMDLT
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    Range = iris.cls(__name__).GenerateCMRANGE(ver,charSep)
    numericthreshold = iris.cls(__name__).GenerateNM(ver,charSep)
    change = iris.cls(__name__).GenerateST(ver,charSep)
    lengthoftimedays = iris.cls(__name__).GenerateNM(ver,charSep)
    return f"{Range}{CompSep}{numericthreshold}{CompSep}{change}{CompSep}{lengthoftimedays}"
}

/// Generate CM_DTN
ClassMethod GenerateCMDTN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMDTN
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        daytype = TABLES["HL70149"][1]
    except:
        daytype = "AP","DE","PE"
    daytype = random.choice(daytype)
    numberofdays = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{daytype}{CompSep}{numberofdays}"
}

/// Generate CM_EIP
ClassMethod GenerateCMEIP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMEIP
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    parentsplacerordernumber = iris.cls(__name__).GenerateID(ver,charSep)
    parentsfillerordernumber = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{parentsplacerordernumber}{CompSep}{parentsfillerordernumber}"
}

/// Generate CM_ELD
ClassMethod GenerateCMELD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # GenerateCMELD
    import iris,random,string
    # Get the Component separator
    CompSep = charSep[1:2]
    SegmentID = iris.cls(__name__).GenerateST(ver,charSep)
    Sequence = iris.cls(__name__).GenerateNM(ver,charSep)
    FieldPosition = iris.cls(__name__).GenerateNM(ver,charSep)
    CodeIdentifyingError = iris.cls(__name__).GenerateCE(ver,charSep)
    return f"{SegmentID}{CompSep}{Sequence}{CompSep}{FieldPosition}{CompSep}{CodeIdentifyingError}"
}

/// Generate CM_ELECTRODE
ClassMethod GenerateCMELECTRODE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMELECTRODE
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    SOURCE_NAME_1 = iris.cls(__name__).GenerateID(ver,charSep)
    SOURCE_NAME_2 = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{SOURCE_NAME_1}{CompSep}{SOURCE_NAME_2}"
}

/// Generate CM_FILLER
ClassMethod GenerateCMFILLER(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMFILLER
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    uniquefillerid = iris.cls(__name__).GenerateID(ver,charSep)
    fillerapplicationID = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{uniquefillerid}{CompSep}{fillerapplicationID}"
}

/// Generate CM_FINANCE
ClassMethod GenerateCMFINANCE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMFINANCE
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        financialclassID = TABLES["HL70064"][1]
    except:
        financialclassID = "01","02","03","10","11","12","13","14","15","16","17","18","20","21","22","23","24","25","26","27","28","29","40","41","42","43","44","45","46","50"
    financialclassID = random.choice(financialclassID)
    effectivedate = iris.cls(__name__).GenerateTS(ver,charSep)

    return f"{financialclassID}{CompSep}{effectivedate}"
}

/// Generate CM_GROUP_ID
ClassMethod GenerateCMGROUPID(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMGROUPID
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    uniquegroupid = iris.cls(__name__).GenerateID(ver,charSep)
    placerapplicationid = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{uniquegroupid}{CompSep}{placerapplicationid}"
}

/// Generate CM_INTERNAL_LOCATION
ClassMethod GenerateCMINTERNALLOCATION(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMFINANCE
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]
    nurseunitStation = iris.cls(__name__).GenerateID(ver,charSep)
    Room = iris.cls(__name__).GenerateID(ver,charSep)
    Bed = iris.cls(__name__).GenerateID(ver,charSep)
    FacilityID = iris.cls(__name__).GenerateID(ver,charSep)
    try:
        BedStatus = TABLES["HL70116"][1]
    except:
        BedStatus = "C","H","O","U","K","I"
    BedStatus = random.choice(BedStatus)
    Etage = iris.cls(__name__).GenerateID(ver,charSep)
    Klinik = iris.cls(__name__).GenerateID(ver,charSep)
    Zentrum = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{nurseunitStation}{CompSep}{Room}{CompSep}{Bed}{CompSep}{FacilityID}{CompSep}{BedStatus}{CompSep}{Etage}{CompSep}{Klinik}{CompSep}{Zentrum}"
}

/// Generate CM_JOB_CODE
ClassMethod GenerateCMJOBCODE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMJOBCODE
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    jobcode = iris.cls(__name__).GenerateID(ver,charSep)
    employeeclassification = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{jobcode}{CompSep}{employeeclassification}"
}

/// Generate CM_LA1
ClassMethod GenerateCMLA1(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMLA1
    import iris, random, importlib
    from faker import Faker
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()# Get the Component separator
    CompSep = charSep[1:2]
    if ver == "2.2":
        DispenseDelivertoLocation = iris.cls(__name__).GenerateID(ver,charSep)
        location = iris.cls(__name__).GenerateID(ver,charSep)
    else:
        PointofCare = iris.cls(__name__).GenerateIS(ver,charSep)
        Room = iris.cls(__name__).GenerateIS(ver,charSep)
        Bed = iris.cls(__name__).GenerateIS(ver,charSep)
        Facility = iris.cls(__name__).GenerateHD(ver,charSep)
        LocationStatus = iris.cls(__name__).GenerateIS(ver,charSep)
        try:
            PatientLocationType = TABLES["HL70305"][1]
        except:
            PatientLocationType = "C","D","H","N","O","P","S"
        PatientLocationType = random.choice(PatientLocationType)
        Building = iris.cls(__name__).GenerateIS(ver,charSep)
        Floor = iris.cls(__name__).GenerateIS(ver,charSep)
        StreetAddress = fake.street_address()
        OtherDesignation = fake.street_address()
        City = fake.city() 
        StateorProvince = fake.state() 
        ZiporPostalCode = fake.zipcode()
        Country = fake.country()
        try:
            AddressType = TABLES["HL70190"][1]
        except:
            AddressType = "C","P","O","M","F","B","H"
        AddressType = random.choice(AddressType)
        OtherGeographicDesignation = iris.cls(__name__).GenerateST(ver,charSep)
    if ver == "2.2":
        return f"{DispenseDelivertoLocation}{CompSep}{location}"
    else:
        return f"{PointofCare}{CompSep}{Room}{CompSep}{Bed}{CompSep}{Facility}{CompSep}{LocationStatus}{CompSep}{PatientLocationType}{CompSep}{Building}{CompSep}{Floor}{CompSep}{StreetAddress}{CompSep}{OtherDesignation}{CompSep}{City}{CompSep}{StateorProvince}{CompSep}{ZiporPostalCode}{CompSep}{Country}{CompSep}{AddressType}{CompSep}{OtherGeographicDesignation}"
}

/// Generate CM_LICENSE_NO
ClassMethod GenerateCMLICENSENO(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMLICENSENO
    import iris
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    LicenseNumber = iris.cls(__name__).GenerateST(ver,charSep)
    issuingstateprovincecountry = fake.state()

    return f"{LicenseNumber}{CompSep}{issuingstateprovincecountry}"
}

/// Generate CM_MDV
ClassMethod GenerateCMMDV(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMMDV
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    MINIMUM_VALUE = iris.cls(__name__).GenerateNM(ver,charSep)
    MAXIMUM_VALUE = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{MINIMUM_VALUE}{CompSep}{MAXIMUM_VALUE}"
}

/// Generate CM_MOC
ClassMethod GenerateCMMOC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMMOC
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    dollaramount = iris.cls(__name__).GenerateST(ver,charSep)
    chargecode = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{dollaramount}{CompSep}{chargecode}"
}

/// Generate CM
ClassMethod GenerateCM(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CM - Derived from HL7apy datatypes.py
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    messagetype = iris.cls(__name__).GenerateID(ver,charSep)
    TriggerEvent = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{messagetype}{CompSep}{TriggerEvent}"
}

/// Generate CM_MSG
ClassMethod GenerateCMMSG(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMMSG
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    messagetype = iris.cls(__name__).GenerateID(ver,charSep)
    TriggerEvent = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{messagetype}{CompSep}{TriggerEvent}"
}

/// Generate CM_NDL
ClassMethod GenerateCMNDL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMNDL
    import iris,random,string,importlib
    from datetime import datetime, timedelta
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    # Using current time
    ini_time_for_now = datetime.now()
    if ver == "2.2":
        interpretertechnician = iris.cls(__name__).GenerateCNPERSON(ver,charSep)
        startdatetime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        enddatetime = ini_time_for_now + timedelta(days = 30)
        enddatetime = enddatetime.strftime("%Y%m%d%H%M%S")
        location = iris.cls(__name__).GenerateCMINTERNALLOCATION(ver,charSep)
        return f"{interpretertechnician}{CompSep}{startdatetime}{CompSep}{enddatetime}{CompSep}{location}"
    else:
        interpretertechnician = iris.cls(__name__).GenerateCNPERSON(ver,charSep)
        startdatetime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        enddatetime = ini_time_for_now + timedelta(days = 30)
        enddatetime = enddatetime.strftime("%Y%m%d%H%M%S")
        PointofCare = iris.cls(__name__).GenerateIS(ver,charSep)
        Room = iris.cls(__name__).GenerateIS(ver,charSep)
        Bed = iris.cls(__name__).GenerateIS(ver,charSep)
        Facility = iris.cls(__name__).GenerateHD(ver,charSep)
        LocationStatus = iris.cls(__name__).GenerateIS(ver,charSep)
        try:
            PatientLocationType = TABLES["HL70305"][1]
        except:
            PatientLocationType = "C","D","H","N","O","P","S"
        PatientLocationType = random.choice(PatientLocationType)
        Building = iris.cls(__name__).GenerateIS(ver,charSep)
        Floor = iris.cls(__name__).GenerateIS(ver,charSep)
        return f"{interpretertechnician}{CompSep}{startdatetime}{CompSep}{enddatetime}{CompSep}{PointofCare}{CompSep}{Room}{CompSep}{Bed}{CompSep}{Facility}{CompSep}{LocationStatus}{CompSep}{PatientLocationType}{CompSep}{Building}{CompSep}{Floor}"
}

/// Generate CM_OCD
ClassMethod GenerateCMOCD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMOCD
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    occurrencecode = iris.cls(__name__).GenerateCE(ver,charSep)
    occurrencedate = iris.cls(__name__).GenerateDT(ver,charSep)

    return f"{occurrencecode}{CompSep}{occurrencedate}"
}

/// Generate CM_OS
ClassMethod GenerateCMOS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMOS
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    SEQUENCE_RESULTS_FLAG = iris.cls(__name__).GenerateID(ver,charSep)
    PLACER_ORDER_NUMBER_ENTITY_IDENTIFIER = iris.cls(__name__).GenerateST(ver,charSep)
    PLACER_ORDER_NUMBER_NAMESPACE_ID = iris.cls(__name__).GenerateIS(ver,charSep)
    FILLER_ORDER_NUMBER_ENTITY_IDENTIFIER = iris.cls(__name__).GenerateST(ver,charSep)
    FILLER_ORDER_NUMBER_NAMESPACE_ID = iris.cls(__name__).GenerateIS(ver,charSep)
    SEQUENCE_CONDITION_VALUE = iris.cls(__name__).GenerateST(ver,charSep)
    MAXIMUM_NUMBER_OF_REPEATS = iris.cls(__name__).GenerateNM(ver,charSep)
    PLACER_ORDER_NUMBER_UNIVERSAL_ID = iris.cls(__name__).GenerateST(ver,charSep)
    PLACER_ORDER_NUMBER_UNIVERSAL_ID_TYPE = iris.cls(__name__).GenerateID(ver,charSep)
    FILLER_ORDER_NUMBER_UNIVERSAL_ID = iris.cls(__name__).GenerateST(ver,charSep)
    FILLER_ORDER_NUMBER_UNIVERSAL_ID_TYPE = iris.cls(__name__).GenerateID(ver,charSep)
    return f"{SEQUENCE_RESULTS_FLAG}{CompSep}{PLACER_ORDER_NUMBER_ENTITY_IDENTIFIER}{CompSep}{PLACER_ORDER_NUMBER_NAMESPACE_ID}{CompSep}{FILLER_ORDER_NUMBER_ENTITY_IDENTIFIER}{CompSep}{FILLER_ORDER_NUMBER_NAMESPACE_ID}{CompSep}{SEQUENCE_CONDITION_VALUE}{CompSep}{MAXIMUM_NUMBER_OF_REPEATS}{CompSep}{PLACER_ORDER_NUMBER_UNIVERSAL_ID}{CompSep}{PLACER_ORDER_NUMBER_UNIVERSAL_ID_TYPE}{CompSep}{FILLER_ORDER_NUMBER_UNIVERSAL_ID}{CompSep}{FILLER_ORDER_NUMBER_UNIVERSAL_ID_TYPE}"
}

/// Generate CM_OSP
ClassMethod GenerateCMOSP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMOSP
    import iris
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]
    # Using current time
    ini_time_for_now = datetime.now()
    occurrencespancode = iris.cls(__name__).GenerateID(ver,charSep)
    occurrencespanstartdate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
    occurrencespanstopdate = ini_time_for_now + timedelta(days = 30)
    occurrencespanstopdate = occurrencespanstopdate.strftime("%Y%m%d%H%M%S")

    return f"{occurrencespancode}{CompSep}{occurrencespanstartdate}{CompSep}{occurrencespanstopdate}"
}

/// Generate CM_PARENT_RESULT
ClassMethod GenerateCMPARENTRESULT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    return "CM"
}

/// Generate CM_PAT_ID
ClassMethod GenerateCMPATID(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPATID
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    PatientID = iris.cls(__name__).GenerateST(ver,charSep)
    Checkdigit = iris.cls(__name__).GenerateNM(ver,charSep)
    Checkdigitscheme = iris.cls(__name__).GenerateID(ver,charSep)
    FacilityID = iris.cls(__name__).GenerateID(ver,charSep)
    type = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{PatientID}{CompSep}{Checkdigit}{CompSep}{Checkdigitscheme}{CompSep}{FacilityID}{CompSep}{type}"
}

/// Generate CM_PAT_ID_0192
ClassMethod GenerateCMPATID0192(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPATID0192
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    PatientID = iris.cls(__name__).GenerateST(ver,charSep)
    Checkdigit = iris.cls(__name__).GenerateNM(ver,charSep)
    Checkdigitscheme = iris.cls(__name__).GenerateID(ver,charSep)
    FacilityID = iris.cls(__name__).GenerateID(ver,charSep)
    type = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{PatientID}{CompSep}{Checkdigit}{CompSep}{Checkdigitscheme}{CompSep}{FacilityID}{CompSep}{type}"
}

/// Generate CM_PCF
ClassMethod GenerateCMPCF(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # GenerateCMPCF
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}   
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        precertificationpatienttype = TABLES["HL70150"][1]
    except:
        precertificationpatienttype = "ER","IPE","OPE","UR"
    precertificationpatienttype = random.choice(precertificationpatienttype)
    try:
        precerticationrequired = TABLES["HL70136"][1]
    except:
        precerticationrequired = "N","Y"
    precerticationrequired = random.choice(precerticationrequired)
    precertificationwindow = iris.cls(__name__).GenerateTS(ver,charSep)
   
    return f"{precertificationpatienttype}{CompSep}{precerticationrequired}{CompSep}{precertificationwindow}"
}

/// Generate CM_PEN
ClassMethod GenerateCMPEN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPEN
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        PenaltyID = TABLES["HL70136"][1]
    except:
        PenaltyID = "N","Y"
    PenaltyID = random.choice(PenaltyID)
    penaltyamount = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{PenaltyID}{CompSep}{penaltyamount}"
}

/// Generate CM_PI
ClassMethod GenerateCMPI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPI
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    IDnumberST = iris.cls(__name__).GenerateST(ver,charSep)
    typeofIDnumberIS = iris.cls(__name__).GenerateIS(ver,charSep)
    otherqualifyinginfo = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{IDnumberST}{CompSep}{typeofIDnumberIS}{CompSep}{otherqualifyinginfo}"
}

/// Generate PIP
ClassMethod GenerateCMPIP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPIP
    import iris
    from datetime import datetime, timedelta
        # Using current time
    ini_time_for_now = datetime.now()
    # Get the Component separator
    CompSep = charSep[1:2]

    privilege = iris.cls(__name__).GenerateST(ver,charSep)
    privilegeclass = iris.cls(__name__).GenerateNM(ver,charSep)

    activationdate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
    expirationdate = ini_time_for_now + timedelta(days = 30)
    expirationdate = expirationdate.strftime("%Y%m%d%H%M%S")
    return f"{privilege}{CompSep}{privilegeclass}{CompSep}{expirationdate}{CompSep}{activationdate}"
}

/// Generate CM_PLACER
ClassMethod GenerateCMPLACER(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPLACER
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    uniqueplacerid = iris.cls(__name__).GenerateID(ver,charSep)
    placerapplication = iris.cls(__name__).GenerateID(ver,charSep)

    return f"{uniqueplacerid}{CompSep}{placerapplication}"
}

/// Generate PLN
ClassMethod GenerateCMPLN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPLN
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    if ver == "2.2":
        IDnumber = iris.cls(__name__).GenerateST(ver,charSep)
        typeofIDnumberID = iris.cls(__name__).GenerateID(ver,charSep)
        stateotherqualifiyinginfo = iris.cls(__name__).GenerateST(ver,charSep)

        return f"{IDnumber}{CompSep}{typeofIDnumberID}{CompSep}{stateotherqualifiyinginfo}"
    else:
        IDnumber = iris.cls(__name__).GenerateST(ver,charSep)
        typeofIDnumberIS = iris.cls(__name__).GenerateIS(ver,charSep)
        stateotherqualifiyinginfo = iris.cls(__name__).GenerateST(ver,charSep)
        expirationdate = iris.cls(__name__).GenerateDT(ver,charSep)

        return f"{IDnumber}{CompSep}{typeofIDnumberIS}{CompSep}{stateotherqualifiyinginfo}{CompSep}{expirationdate}"
}

/// Generate CM_POSITION
ClassMethod GenerateCMPOSITION(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPOSITION
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    Saal = iris.cls(__name__).GenerateST(ver,charSep)
    Tisch = iris.cls(__name__).GenerateST(ver,charSep)
    Stuhl = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{Saal}{CompSep}{Tisch}{CompSep}{Stuhl}"
}

/// Generate CM_PRACTITIONER
ClassMethod GenerateCMPRACTITIONER(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPRACTITIONER
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]

    ProcedurePractitionerID = iris.cls(__name__).GenerateCNPERSON(ver,charSep)

    try:
        procedurepractitionertype = TABLES["HL70133"][1]
    except:
        procedurepractitionertype = "AN","PR","RD","RS","NP","CM"
    procedurepractitionertype = random.choice(procedurepractitionertype)
    return f"{ProcedurePractitionerID}{CompSep}{procedurepractitionertype}"
}

/// Generate CM_PRL
ClassMethod GenerateCMPRL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPRL
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    OBX3observationidentifierofp = iris.cls(__name__).GenerateST(ver,charSep)
    OBX4subIDofparentresult = iris.cls(__name__).GenerateST(ver,charSep)
    partofOBX5observationresultf = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{OBX3observationidentifierofp}{CompSep}{OBX4subIDofparentresult}{CompSep}{partofOBX5observationresultf}"
}

/// Generate CM_PTA
ClassMethod GenerateCMPTA(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMPTA
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]

    try:
        policytype = TABLES["HL70147"][1]
    except:
        policytype = "ANC","2ANC","3MMD","MMD","2MMD"
    policytype = random.choice(policytype)
    try:
        amountclass = TABLES["HL70193"][1]
    except:
        amountclass = "AT","LM","PC","UL"
    amountclass = random.choice(amountclass)
    amount = iris.cls(__name__).GenerateNM(ver,charSep)
    return f"{policytype}{CompSep}{amountclass}{CompSep}{amount}"
}

/// Generate CM_RANGE
ClassMethod GenerateCMRANGE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMABSRANGE
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    LowValue = iris.cls(__name__).GenerateCE(ver,charSep)
    HighValue = iris.cls(__name__).GenerateCE(ver,charSep)
 
    return f"{LowValue}{CompSep}{HighValue}"
}

/// Generate CM_RANGE_SIMPLE
ClassMethod GenerateCMRANGESIMPLE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMRANGESIMPLE
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    LowValue = iris.cls(__name__).GenerateCE(ver,charSep)
    HighValue = iris.cls(__name__).GenerateCE(ver,charSep)
 
    return f"{LowValue}{CompSep}{HighValue}"
}

/// Generate CM_RFR
ClassMethod GenerateCMRFR(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMRFR
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]

    ReferenceRange = iris.cls(__name__).GenerateCMRANGE(ver,charSep)
    try:
        Sex = TABLES["HL70001"][1]
    except:
        Sex = "F","M","O","U"
    Sex = random.choice(Sex)
    AgeRange = iris.cls(__name__).GenerateCMRANGE(ver,charSep)
    GestationalAgeRange = iris.cls(__name__).GenerateCMRANGE(ver,charSep)
    Species = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        RaceSubspecies = TABLES["HL70005"][1]
    except:
        RaceSubspecies = "1002-5","2028-9","2054-5","2076-8","2106-3","2131-1"
    RaceSubspecies = random.choice(RaceSubspecies)
    TextCondition = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{ReferenceRange}{CompSep}{Sex}{CompSep}{AgeRange}{CompSep}{GestationalAgeRange}{CompSep}{Species}{CompSep}{RaceSubspecies}{CompSep}{TextCondition}"
}

/// Generate CM_RI
ClassMethod GenerateCMRI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMABSRI
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]

    repeatpattern = iris.cls(__name__).GenerateIS(ver,charSep)
    try:
        explicittimeintevall = TABLES["HL70335"][1]
    except:
        explicittimeintevall = "QnS","QnM","QnH","QnD","QnW","QnL","QnJd","BID","TID","QID","xID","QAM","QSHIFT","QOD","QHS","QPM","C","Uxxx","PRN","PRNxxx","Once","Meal Related Timings","A","P","I","M","D","V"
    explicittimeintevall = random.choice(explicittimeintevall)
 
    return f"{repeatpattern}{CompSep}{explicittimeintevall}"
}

/// Generate CM_RMC
ClassMethod GenerateCMRMC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMRMC
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]

    try:
        roomtype = TABLES["HL70145"][1]
    except:
        roomtype = "ICU","2ICU","PRI","2SPR","2PRI","SPR"
    roomtype = random.choice(roomtype)
    try:
        amounttype = TABLES["HL70146"][1]
    except:
        amounttype = "DF","LM","PC","RT","UL"
    amounttype = random.choice(amounttype)
    try:
        coverageamount = TABLES["HL70193"][1]
    except:
        coverageamount = "AT","LM","PC","UL"
    coverageamount = random.choice(coverageamount)

    return f"{roomtype}{CompSep}{amounttype}{CompSep}{coverageamount}"
}

/// Generate CM_SPD
ClassMethod GenerateCMSPD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMSPD
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    specialtyname = iris.cls(__name__).GenerateST(ver,charSep)
    governingboard = iris.cls(__name__).GenerateST(ver,charSep)
    eligibleorcertified = iris.cls(__name__).GenerateID(ver,charSep)
    dateofcertification = iris.cls(__name__).GenerateDT(ver,charSep)

    return f"{specialtyname}{CompSep}{governingboard}{CompSep}{eligibleorcertified}{CompSep}{dateofcertification}"
}

/// Generate CM_SPS
ClassMethod GenerateCMSPS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMSPS
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        specimensourcenameorcode = TABLES["0070"][1]
    except:
        specimensourcenameorcode = "RBC","RT","SAL","SEM","PUS","SKM","SER","SNV","SPRM","PRT","SPTC","PLAS","SPTT","SPT","PAT","MEC","MILK","MLK","NAIL","NOS","PLC","PAFL","PRP","TISU","PLB","STL","PLR","PMN","PPP","ORH","UR","MBLD","XXX","WNDE","WNDD","WNDA","WND","WICK","WBC","WAT","VOM","USUB","URTH","URT","TISPL","TLNG","SWT","TEAR","THRB","THRT","TISG","URNS","TLGI","URC","TSMI","TUB","ULC","UMB","UMED","STON","TISS","BPU","DOSE","DIAF","CYST","CVX","CVM","CUR","CTP","COL","CNJT","CDM","CBLD","CALC","BRTH","DRN","BLD","MAR","ABS","AMN","ASP","BBL","BRO","BIFL","BRN","BLDA","BLDC","BLDV","BON","BPH","CSF","BDY","LAM","GEN","GENC","GENL","GENV","HAR","IHG","GAST","DUFL","IT","CNL","LN","LNA","LNV","LYM","MAC","ISLT","ENDM","LIQ","GAS","EAR","EARW","ENDC","EOS","EXHLD","FIST","FLU","ELT","FLT","SKN","FIB","EYE"
    specimensourcenameorcode = random.choice(specimensourcenameorcode)
    additives = iris.cls(__name__).GenerateTX(ver,charSep)
    freetext = iris.cls(__name__).GenerateTX(ver,charSep)
    bodysite = iris.cls(__name__).GenerateCE(ver,charSep)
    sitemodifier = iris.cls(__name__).GenerateCE(ver,charSep)
    collectionmodifiermethodcode = iris.cls(__name__).GenerateCE(ver,charSep)
    return f"{specimensourcenameorcode}{CompSep}{additives}{CompSep}{freetext}{CompSep}{bodysite}{CompSep}{sitemodifier}{CompSep}{collectionmodifiermethodcode}"
}

/// Generate CM_UVC
ClassMethod GenerateCMUVC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMRMC
    import iris,importlib,random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]

    try:
        valuecode = TABLES["HL70153"][1]
    except:
        valuecode = "01","02","04","05","06","08","09","10","11","12","13","14","15","16","17","21","22","23","24","30","31","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","56","57","58","59","60","67","68","70 ... 72","75 ... 79","80","81","A1","A2","A3","X0","X4"
    valuecode = random.choice(valuecode)
    valueamount  = iris.cls(__name__).GenerateNM(ver,charSep)
    
    return f"{valuecode}{CompSep}{valueamount}"
}

/// Generate CM_VR
ClassMethod GenerateCMVR(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMVR
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    firstdatacodevalue = iris.cls(__name__).GenerateST(ver,charSep)
    Lastdatacodecalue = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{firstdatacodevalue}{CompSep}{Lastdatacodecalue}"
}

/// Generate CM_WVI
ClassMethod GenerateCMWVI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CMWVI
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    ChannelNumber = iris.cls(__name__).GenerateST(ver,charSep)
    ChannelName = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{ChannelNumber}{CompSep}{ChannelName}"
}

/// Generate CN
ClassMethod GenerateCN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CN composite ID number and name      
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    IDnumberST = random.randint(100000000000000, 999999999999999)
    familyname = fake.last_name()
    givenname = fake.first_name()
    middleinitialorname =  fake.first_name()
    suffix = fake.suffix()
    prefix = fake.prefix()
    try:
        degree = TABLES["HL70360"][1]
    except:    
        degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    degree = random.choice(degree)
    sourcetable = fake.pystr()[:4]
    try:
        assigningauthority = TABLES["HL70363"][1]
    except:
        assigningauthority = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    assigningauthority = random.choice(assigningauthority)
    return f"{IDnumberST}{CompSep}{familyname}{CompSep}{givenname}{CompSep}{middleinitialorname}{CompSep}{suffix}{CompSep}{prefix}{CompSep}{degree}{CompSep}{sourcetable}{CompSep}{assigningauthority}"
}

/// Generate CN_SIMPLE
ClassMethod GenerateCNSIMPLE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CN composite ID number and name      
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    IDnumberST = random.randint(100000000000000, 999999999999999)
    familyname = fake.last_name()
    givenname = fake.first_name()
    middleinitialorname =  fake.first_name()
    suffix = fake.suffix()
    prefix = fake.prefix()
    try:
        degree = TABLES["HL70360"][1]
    except:    
        degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    degree = random.choice(degree)
    sourcetable = fake.pystr()[:4]
    try:
        assigningauthority = TABLES["HL70363"][1]
    except:
        assigningauthority = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    assigningauthority = random.choice(assigningauthority)
    return f"{IDnumberST}{CompSep}{familyname}{CompSep}{givenname}{CompSep}{middleinitialorname}{CompSep}{suffix}{CompSep}{prefix}{CompSep}{degree}{CompSep}{sourcetable}{CompSep}{assigningauthority}"
}

/// Generate CNS
ClassMethod GenerateCNS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CNS Composite ID number and Name simplified      
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    IDnumberST = random.randint(100000000000000, 999999999999999)
    familyname = fake.last_name()
    givenname = fake.first_name()
    secondandfurthergivennamesor =  fake.first_name()
    suffix = fake.suffix()
    prefix = fake.prefix()
    try:
        degree = TABLES["HL70360"][1]
    except:    
        degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    degree = random.choice(degree)
    sourcetable = fake.pystr()[:4]
    try:
        assigauthnamespaceID = TABLES["HL70363"][1]
    except:
        assigauthnamespaceID = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    assigauthnamespaceID = random.choice(assigauthnamespaceID)
    assigauthuniversalID = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        assigauthuniversalIDtype = TABLES["HL70301"][1]
    except:
        assigauthuniversalIDtype = "DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","UUID","x400","x500"
    assigauthuniversalIDtype = random.choice(assigauthuniversalIDtype)

    return f"{IDnumberST}{CompSep}{familyname}{CompSep}{givenname}{CompSep}{secondandfurthergivennamesor}{CompSep}{suffix}{CompSep}{prefix}{CompSep}{degree}{CompSep}{sourcetable}{CompSep}{assigauthnamespaceID}{CompSep}{assigauthuniversalID}{CompSep}{assigauthuniversalIDtype}"
}

/// Build CNE datatype
ClassMethod GenerateCNE(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    #CNE Coded with No Exceptions
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]


    # Build the example Datatype
    Identifier = iris.cls(__name__).GenerateST(ver,charSep)
    Text = iris.cls(__name__).GenerateFT(ver,charSep)
    # name of coding system version logic
    try:
        NameofCodingSystem = TABLES["HL70396"][1]
    except:
        NameofCodingSystem = "99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"
    # pick a random value
    NameofCodingSystem = random.choice(NameofCodingSystem)
    AlternateIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateText = iris.cls(__name__).GenerateFT(ver,charSep)
    # name of coding system version logic
    try:
        NameofAlternateCodingSystem = TABLES["HL70396"][1]
    except:
        NameofAlternateCodingSystem = "99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"
    NameofAlternateCodingSystem = random.choice(NameofAlternateCodingSystem)
    CodingSystemVersionID = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateCodingSystemVersion = iris.cls(__name__).GenerateST(ver,charSep)
    OriginalText = iris.cls(__name__).GenerateST(ver,charSep)

    if ver > "2.6":
        SecAltIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltText = iris.cls(__name__).GenerateFT(ver,charSep)
    # name of coding system version logic
    try:
        NameofSecAltCodingSystem = TABLES["HL70396"][1]
    except:
        NameofSecAltCodingSystem = "99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"
    NameofSecAltCodingSystem = random.choice(NameofSecAltCodingSystem)
    SecAltCodingSystemVersionID = iris.cls(__name__).GenerateST(ver,charSep)
    CodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
    ValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
    ValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)
    AlternateCodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)
    SecAltCodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
    SecAltValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
    SecAltValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)

    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        if ver < "2.7":
            return f"{Identifier}{CompSep}{Text}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateText}{CompSep}{NameofAlternateCodingSystem}"
        else:
            return f"{Identifier}{CompSep}{Text}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
    else:
        if ver < "2.7":
            return f"{Identifier}{SubCompSep}{Text}{SubCompSep}{NameofCodingSystem}{SubCompSep}{AlternateIdentifier}{SubCompSep}{AlternateText}{SubCompSep}{NameofAlternateCodingSystem}"
        else:
            return f"{Identifier}{SubCompSep}{Text}{SubCompSep}{NameofCodingSystem}{SubCompSep}{AlternateIdentifier}{SubCompSep}{AlternateText}{SubCompSep}{NameofAlternateCodingSystem}{SubCompSep}{CodingSystemVersionID}{SubCompSep}{AlternateCodingSystemVersion}{SubCompSep}{OriginalText}{SubCompSep}{SecAltIdentifier}{SubCompSep}{SecAltText}{SubCompSep}{NameofSecAltCodingSystem}{SubCompSep}{SecAltCodingSystemVersionID}{SubCompSep}{CodingSystemOID}{SubCompSep}{ValueSetOID}{SubCompSep}{ValueSetVersionID}{SubCompSep}{AlternateCodingSystemOID}{SubCompSep}{AlternateValueSetOID}{SubCompSep}{AlternateValueSetVersionID}{SubCompSep}{SecAltCodingSystemOID}{SubCompSep}{SecAltValueSetOID}{SubCompSep}{SecAltValueSetVersionID}"
}

/// Generate CNN
ClassMethod GenerateCNN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CNN Composite ID Number and Name Simplified   
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    IDNumber = random.randint(100000000000000, 999999999999999)
    FamilyName = fake.last_name()
    GivenName = fake.first_name()
    SecondandFurtherGivenNamesor =  fake.first_name()
    Suffix = fake.suffix()
    Prefix = fake.prefix()
    # Degree try logic for when the table doesn't exist in HL7apy
    try:
        Degree = TABLES["HL70360"][1]
    except:
        Degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    Degree = random.choice(Degree)
    # trSourceTable table is empty so just create a string
    SourceTable = iris.cls(__name__).GenerateIS(ver,charSep)
    # HL7apy is missing table 0363 so can't use table function
    try:
        AssigAuthNamespaceID = TABLES["HL70363"][1]
    except:
        AssigAuthNamespaceID = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    # if tables entry is empty then use the CSV
    try:
        AssigAuthNamespaceID = random.choice(AssigAuthNamespaceID)
    except:
        AssigAuthNamespaceID = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    AssigAuthNamespaceID = random.choice(AssigAuthNamespaceID)
    AssigAuthUniversalID = iris.cls(__name__).GenerateST(ver,charSep)
    # AssigAuthUniversalIDType try logic when table doesn't exist
    try:
        AssigAuthUniversalIDType = TABLES["HL70301"][1]
    except:
        AssigAuthUniversalIDType = "DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"
    AssigAuthUniversalIDType = random.choice(AssigAuthUniversalIDType)

    return f"{IDNumber}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigAuthNamespaceID}{CompSep}{AssigAuthUniversalID}{CompSep}{AssigAuthUniversalIDType}"
}

/// Generate CN_PERSON
ClassMethod GenerateCNPERSON(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    IDnumber = random.randint(100000000000000, 999999999999999)
    familiyname = fake.last_name()
    givenname = fake.first_name()
    middleinitialorname =  fake.first_name()
    suffix = fake.suffix()
    prefix = fake.prefix()
    try:
        degree = TABLES["HL70360"][1]
    except:    
        degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    degree = random.choice(degree)
    sourcetableid = fake.pystr()[:4]
    return f"{IDnumber}{CompSep}{familiyname}{CompSep}{givenname}{CompSep}{middleinitialorname}{CompSep}{suffix}{CompSep}{prefix}{CompSep}{degree}{CompSep}{sourcetableid}"
}

/// Generate CN_PHYSICIAN
ClassMethod GenerateCNPHYSICIAN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    IDnumber = random.randint(100000000000000, 999999999999999)
    familiyname = fake.last_name()
    givenname = fake.first_name()
    middleinitialorname =  fake.first_name()
    suffix = fake.suffix()
    prefix = fake.prefix()
    try:
        degree = TABLES["HL70360"][1]
    except:    
        degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    degree = random.choice(degree)
    sourcetableid = fake.pystr()[:4]
    return f"{IDnumber}{CompSep}{familiyname}{CompSep}{givenname}{CompSep}{middleinitialorname}{CompSep}{suffix}{CompSep}{prefix}{CompSep}{degree}{CompSep}{sourcetableid}"
}

/// Generate CP
ClassMethod GenerateCP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CP Composite Price
    import iris,random,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]

    price = iris.cls(__name__).GenerateMO(ver,charSep)
    #try tables else use csv
    try:
        pricetype = TABLES["HL70205"][1]
    except:
        pricetype = "AP","DC","IC","PF","TF","TP","UP"
    pricetype = random.choice(pricetype)
    fromvalue = iris.cls(__name__).GenerateNM(ver,charSep)
    tovalue = iris.cls(__name__).GenerateNM(ver,charSep)
    rangeunits = iris.cls(__name__).GenerateCE(ver,charSep)
    # try tables else use csv
    try:
        rangetype = TABLES["HL70298"][1]
    except:
        rangetype = "P","F"
    rangetype = random.choice(rangetype)

    return f"{price}{CompSep}{pricetype}{CompSep}{fromvalue}{CompSep}{tovalue}{CompSep}{rangeunits}{CompSep}{rangetype}"
}

/// Generate CQ
ClassMethod GenerateCQ(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # CQ Composite Quantity with Units
    import iris,random
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build data type
    Quantity = random.randint(1, 199999999)
    # units of measurement
    Units = "m","s","mol","A","K","cd","kg"
    Units = random.choice(Units)
    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        return f"{Quantity}{CompSep}{Units}"
    else:
        return f"{Quantity}{SubCompSep}{Units}"
}

/// Generate CQ_QUANTITY
ClassMethod GenerateCQQUANTITY(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CQQUANTITY
    import iris,random
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build data type
    quantity = random.randint(1, 199999999)
    units = iris.cls(__name__).GenerateCE(ver,charSep)
    return f"{quantity}{CompSep}{units}"
}

/// Generate CQ_SIMPLE
ClassMethod GenerateCQSIMPLE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CQSIMPLE
    import iris,random
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build data type
    quantity = random.randint(1, 199999999)
    units = iris.cls(__name__).GenerateCE(ver,charSep)
    return f"{quantity}{CompSep}{units}"
}

/// Generate CSU
ClassMethod GenerateCSU(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CSU Channel Sensitivity
    import iris,random,importlib
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}   
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build data type
    ChannelSensitivity = iris.cls(__name__).GenerateNM(ver,charSep)
    UnitofMeasureIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
    UnitofMeasureDescription = iris.cls(__name__).GenerateST(ver,charSep)
    #get the table values
    try:
        UnitofMeasureCodingSystem = TABLES["HL70396"][1]
    except:
        UnitofMeasureCodingSystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
    # pick a random value
    UnitofMeasureCodingSystem = random.choice(UnitofMeasureCodingSystem)
    AltUnitofMeasureIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
    AltUnitofMeasureDescription = iris.cls(__name__).GenerateST(ver,charSep)
    # get the table values
    try:
        AltUnitofMeasureCodingSystem = TABLES["HL70396"][1]
    except:
        AltUnitofMeasureCodingSystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
    # pick a random value
    AltUnitofMeasureCodingSystem = random.choice(AltUnitofMeasureCodingSystem)
    if ver > "2.6":
        UnitCodingSystemVerID = str(random.randint(100, 999))  # Random 3-digit code
        AltUnitCodingSystemVerID = str(random.randint(100, 999))  # Random 3-digit code
        OriginalText = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltUnitIdentifier = str(random.randint(100, 999))  # Random 3-digit code
        SecAltUnitText = iris.cls(__name__).GenerateST(ver,charSep)
        # get the table values
        try:
            NameofSecAltUnitCodingSystem = TABLES["HL70396"][1]
        except:
            NameofSecAltUnitCodingSystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
        # pick a random value
        NameofSecAltUnitCodingSystem = random.choice(NameofSecAltUnitCodingSystem)
        SecAltUnitCodingSystemVerID = str(random.randint(100, 999))  # Random 3-digit code
        UnitCodingSystemOID = str(random.randint(100, 999))  # Random 3-digit code
        UnitValueSetOID = str(random.randint(100, 999))  # Random 3-digit code
        UnitValueSetVerID = str(random.randint(100, 999))  # Random 3-digit code
        AltUnitCodingSystemOID = str(random.randint(100, 999))  # Random 3-digit code
        AltUnitValueSetOID = str(random.randint(100, 999))  # Random 3-digit code
        AltUnitValueSetVerID = str(random.randint(100, 999))  # Random 3-digit code
        SecAltUnitCodingSystemOID = str(random.randint(100, 999))  # Random 3-digit code
        SecAltUnitValueSetOID = str(random.randint(100, 999))  # Random 3-digit code
        SecAltUnitValueSetVerID = str(random.randint(100, 999))  # Random 3-digit code


    if ver <= "2.6":
        return f"{ChannelSensitivity}{CompSep}{UnitofMeasureIdentifier}{CompSep}{UnitofMeasureDescription}{CompSep}{UnitofMeasureCodingSystem}{CompSep}{AltUnitofMeasureIdentifier}{CompSep}{AltUnitofMeasureDescription}{CompSep}{AltUnitofMeasureCodingSystem}"
    else:
        return f"{ChannelSensitivity}{CompSep}{UnitofMeasureIdentifier}{CompSep}{UnitofMeasureDescription}{CompSep}{UnitofMeasureCodingSystem}{CompSep}{AltUnitofMeasureIdentifier}{CompSep}{AltUnitofMeasureDescription}{CompSep}{AltUnitofMeasureCodingSystem}{CompSep}{UnitCodingSystemVerID}{CompSep}{AltUnitCodingSystemVerID}{CompSep}{OriginalText}{CompSep}{SecAltUnitIdentifier}{CompSep}{SecAltUnitText}{CompSep}{NameofSecAltUnitCodingSystem}{CompSep}{SecAltUnitCodingSystemVerID}{CompSep}{UnitCodingSystemOID}{CompSep}{UnitValueSetOID}{CompSep}{UnitValueSetVerID}{CompSep}{AltUnitCodingSystemOID}{CompSep}{AltUnitValueSetOID}{CompSep}{AltUnitValueSetVerID}{CompSep}{SecAltUnitCodingSystemOID}{CompSep}{SecAltUnitValueSetOID}{CompSep}{SecAltUnitValueSetVerID}"
}

/// Generate CWE
ClassMethod GenerateCWE(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # CWE Coded with Exceptions
    import iris,random,importlib
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}   
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build data type
    Identifier = iris.cls(__name__).GenerateST(ver,charSep)
    Text = iris.cls(__name__).GenerateST(ver,charSep)
    #get the table values
    try:
        NameofCodingSystem = TABLES["HL70396"][1]
    except:
        NameofCodingSystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
    # pick a random value
    NameofCodingSystem = random.choice(NameofCodingSystem)
    AlternateIdentifier	 = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateText = iris.cls(__name__).GenerateST(ver,charSep)
    #get the table values
    try:
        NameofAlternateCodingSystem = TABLES["HL70396"][1]
    except:
        NameofAlternateCodingSystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
    # pick a random value
    NameofAlternateCodingSystem = random.choice(NameofAlternateCodingSystem)
    CodingSystemVersionID = iris.cls(__name__).GenerateST(ver,charSep)
    AlternateCodingSystemVersion = iris.cls(__name__).GenerateST(ver,charSep)
    OriginalText = iris.cls(__name__).GenerateST(ver,charSep)
    if ver > "2.6":
        SecAltIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltText = iris.cls(__name__).GenerateST(ver,charSep)
        OriginalText = iris.cls(__name__).GenerateST(ver,charSep)
        #get the table values
        try:
            NameofSecAltCodingSystem = TABLES["HL70396"][1]
        except:
            NameofSecAltCodingSystem = "L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"
        # pick a random value
        NameofSecAltCodingSystem = random.choice(NameofSecAltCodingSystem)
        SecAltCodingSystemVersionID = iris.cls(__name__).GenerateST(ver,charSep)
        CodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
        ValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
        ValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)
        AlternateCodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
        AlternateValueSetOID = iris.cls(__name__).GenerateST(ver,charSep)
        AlternateValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)
        SecAltCodingSystemOID = iris.cls(__name__).GenerateST(ver,charSep)
        SecAltValueSetOID= iris.cls(__name__).GenerateST(ver,charSep)
        SecAltValueSetVersionID = iris.cls(__name__).GenerateDTM(ver,charSep)

        # if this is going to be a subcomponent then need to switch separator
    if SubCompSep=="None":
        if ver <= "2.6":
            return f"{Identifier}{CompSep}{Text}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}"
        else:
            return f"{Identifier}{CompSep}{Text}{CompSep}{NameofCodingSystem}{CompSep}{AlternateIdentifier}{CompSep}{AlternateText}{CompSep}{NameofAlternateCodingSystem}{CompSep}{CodingSystemVersionID}{CompSep}{AlternateCodingSystemVersion}{CompSep}{OriginalText}{CompSep}{SecAltIdentifier}{CompSep}{SecAltText}{CompSep}{NameofSecAltCodingSystem}{CompSep}{SecAltCodingSystemVersionID}{CompSep}{CodingSystemOID}{CompSep}{ValueSetOID}{CompSep}{ValueSetVersionID}{CompSep}{AlternateCodingSystemOID}{CompSep}{AlternateValueSetOID}{CompSep}{AlternateValueSetVersionID}{CompSep}{SecAltCodingSystemOID}{CompSep}{SecAltValueSetOID}{CompSep}{SecAltValueSetVersionID}"
    else:
        if ver <= "2.6":
            return f"{Identifier}{SubCompSep}{Text}{SubCompSep}{NameofCodingSystem}{SubCompSep}{AlternateIdentifier}{SubCompSep}{AlternateText}{SubCompSep}{NameofAlternateCodingSystem}{SubCompSep}{CodingSystemVersionID}{SubCompSep}{AlternateCodingSystemVersion}{SubCompSep}{OriginalText}"
        else:
            return f"{Identifier}{SubCompSep}{Text}{SubCompSep}{NameofCodingSystem}{SubCompSep}{AlternateIdentifier}{SubCompSep}{AlternateText}{SubCompSep}{NameofAlternateCodingSystem}{SubCompSep}{CodingSystemVersionID}{SubCompSep}{AlternateCodingSystemVersion}{SubCompSep}{OriginalText}{SubCompSep}{SecAltIdentifier}{SubCompSep}{SecAltText}{SubCompSep}{NameofSecAltCodingSystem}{SubCompSep}{SecAltCodingSystemVersionID}{SubCompSep}{CodingSystemOID}{SubCompSep}{ValueSetOID}{SubCompSep}{ValueSetVersionID}{SubCompSep}{AlternateCodingSystemOID}{SubCompSep}{AlternateValueSetOID}{SubCompSep}{AlternateValueSetVersionID}{SubCompSep}{SecAltCodingSystemOID}{SubCompSep}{SecAltValueSetOID}{SubCompSep}{SecAltValueSetVersionID}"
}

/// Build CX datatype
ClassMethod GenerateCX(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # CX Extended Composite ID with Check Digit
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime, timedelta
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]


    # Build the example Datatype
    IDNumber = iris.cls(__name__).GenerateST(ver,charSep)
    CheckDigit = ''.join(random.choices(string.ascii_uppercase, k=1))  # Random letter
    try:
        # get the table values
        CheckDigitScheme = TABLES["HL70061"][1]
    except:
        CheckDigitScheme = "NPI","ISO","M10","M11"
    # pick a random value
    ##print(CheckDigitScheme)
    CheckDigitScheme = random.choice(CheckDigitScheme)
    ##print(CheckDigitScheme)

    # need logic to generate AssigningAuthority
    try:
        AssigningAuthority = TABLES["HL70363"][1]
    except:
        AssigningAuthority = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    if len(AssigningAuthority) == 0:
        AssigningAuthority = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    # pick a random value
    AssigningAuthority = random.choice(AssigningAuthority)
    # IdentifierTypeCode logic
    try:
        IdentifierTypeCode = TABLES["HL70203"][1]
    except:
        IdentifierTypeCode = "AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"
    IdentifierTypeCode = random.choice(IdentifierTypeCode)

    AssigningFacility = iris.cls(__name__).GenerateHD(ver,charSep)

    # Using current time
    ini_time_for_now = datetime.now()

    if ver >"2.3.1":
        EffectiveDate = iris.cls(__name__).GenerateDT(ver,charSep)
        # Need future date
        ExpirationDate = ini_time_for_now + timedelta(days = 30)
        ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")
    if ver >"2.4":
        AssigningJurisdiction = iris.cls(__name__).GenerateCWE(ver,charSep)
        AssigningAgencyorDepartment = iris.cls(__name__).GenerateCWE(ver,charSep)
    if ver >"2.6":
        SecurityCheck = iris.cls(__name__).GenerateST(ver,charSep)
        # get the table values
        try:
            SecurityCheckScheme = TABLES["HL70904"][1]
        except:
            SecurityCheckScheme = "BCV","CCS","VID"
        # pick a random value
        SecurityCheckScheme = random.choice(SecurityCheckScheme)

    # return case
    match ver:
        case "2.3":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}"
        case "2.3.1":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}"
        case "2.4":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}"
        case "2.5":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
        case "2.5.1":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
        case "2.6":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
        case "2.7":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.7.1":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.8":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.8.1":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.8.2":
            return f"{IDNumber}{CompSep}{CheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case _:
            return
}

/// Generate DDI
ClassMethod GenerateDDI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DDI Daily Deductible Information
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    DelayDays = iris.cls(__name__).GenerateNM(ver,charSep)
    MonetaryAmount = iris.cls(__name__).GenerateMO(ver,charSep)
    NumberofDays = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{DelayDays}{CompSep}{MonetaryAmount}{CompSep}{NumberofDays}"
}

/// Generate DIN
ClassMethod GenerateDIN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DIN Date and Institution Name
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime, timedelta
 
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    if ver < "2.7":
        date = iris.cls(__name__).GenerateTS(ver,charSep)
        institutionname = fake.company()
    else:
        date = iris.cls(__name__).GenerateDTM(ver,charSep)
        institutionname = fake.company()

    return f"{date}{CompSep}{institutionname}"
}

/// Generate DLD
ClassMethod GenerateDLD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DLD Discharge Location and Date
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    if ver < "2.7":
        DischargeLocation = iris.cls(__name__).GenerateIS(ver,charSep)
        EffectiveDate = iris.cls(__name__).GenerateTS(ver,charSep)
    else:
        DischargeLocation = iris.cls(__name__).GenerateCWE(ver,charSep)
        EffectiveDate = iris.cls(__name__).GenerateDTM(ver,charSep)

    return f"{DischargeLocation}{CompSep}{EffectiveDate}"
    return
}

/// Generate DLN
ClassMethod GenerateDLN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DLN Driver_s License Number
    import iris
    from faker import Faker
    from faker.providers import address
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    if ver < "2.7":
        LicenseNumber = iris.cls(__name__).GenerateST(ver,charSep)
        IssuingStateProvinceCountry = fake.country()
        ExpirationDate = iris.cls(__name__).GenerateDT(ver,charSep)

    else:
        LicenseNumber = iris.cls(__name__).GenerateCWE(ver,charSep)
        IssuingStateProvinceCountry = fake.country()
        ExpirationDate = iris.cls(__name__).GenerateDTM(ver,charSep)

    return f"{LicenseNumber}{CompSep}{IssuingStateProvinceCountry}{CompSep}{ExpirationDate}"
}

/// Generate DLT
ClassMethod GenerateDLT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DLT Delta
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    NormalRange = iris.cls(__name__).GenerateNR(ver,charSep)
    NumericThreshold = iris.cls(__name__).GenerateNM(ver,charSep)
    ChangeComputation = iris.cls(__name__).GenerateID(ver,charSep)
    DaysRetained = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{NormalRange}{CompSep}{NumericThreshold}{CompSep}{ChangeComputation}{CompSep}{DaysRetained}"
}

/// Generate DR
ClassMethod GenerateDR(ver = "2.5", charSep = "|^~\&", subCompSep = "None") [ Language = python ]
{
    # DR Date/Time Range
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]


    # Using current time
    ini_time_for_now = datetime.now()
    rangestartdatetime = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
    # Need future date like EffectiveDate + 30 days
    rangeenddatetime = ini_time_for_now + timedelta(days = 30)
    rangeenddatetime = rangeenddatetime.strftime("%Y%m%d%H%M%S")

    if subCompSep=="None":
        return f"{rangestartdatetime}{CompSep}{rangeenddatetime}"
    else:
        return f"{rangestartdatetime}{subCompSep}{rangeenddatetime}"
}

/// Generate DR_SIMPLE
ClassMethod GenerateDRSIMPLE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DR Date/Time Range
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]


    # Using current time
    ini_time_for_now = datetime.now()
    RANGE_START_DATE_TIME = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
    # Need future date like EffectiveDate + 30 days
    RANGE_END_DATE_TIME = ini_time_for_now + timedelta(days = 30)
    RANGE_END_DATE_TIME = RANGE_END_DATE_TIME.strftime("%Y%m%d%H%M%S")


    return f"{RANGE_START_DATE_TIME}{CompSep}{RANGE_END_DATE_TIME}"
}

/// Generate DT
ClassMethod GenerateDT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DT - Date, in the format YYYYMMDD
    from datetime import datetime
    return datetime.now().strftime("%Y%m%d")  # Current date in YYYYMMDD
}

/// Generate DTM
ClassMethod GenerateDTM(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DTM Date/Time - An Elementary Data Type
    from datetime import datetime
    return datetime.now().strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
}

/// Generate DTN
ClassMethod GenerateDTN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # DTN Day Type and Number
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        DayType = TABLES["HL70149"][1]
    except:
        DayType = "AP","DE","PE"
    DayType = random.choice(DayType)

    NumberofDays = iris.cls(__name__).GenerateNM(ver,charSep)


    return f"{DayType}{CompSep}{NumberofDays}"
}

/// Generate ED
ClassMethod GenerateED(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # ED Encapsulated Data
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    
    SourceApplication = iris.cls(__name__).GenerateHD(ver,charSep)
    if ver < "2.6":
        try:
            TypeofData  = TABLES["HL70191"][1]
        except:
            TypeofData = "SI","NS","SD","TX","FT","TEXT","IM","AU","SGML","AP","Image","Audio","Application"
    else:
        try:
            TypeofData  = TABLES["HL70834"][1]
        except:
            TypeofData = "application","audio","image","model","text","video","multipart"
    TypeofData = random.choice(TypeofData)
    try:
        DataSubtype = TABLES["HL70291"][1]
    except:
        DataSubtype = "x-hl7-cda-level-one","..."
    DataSubtype = random.choice(DataSubtype)
    try:
        Encoding = TABLES["HL70299"][1]
    except:
        Encoding = "A","Hex","Base64"
    Encoding = random.choice(Encoding)
    Data = iris.cls(__name__).GenerateTX(ver,charSep)
    return f"{SourceApplication}{CompSep}{TypeofData}{CompSep}{DataSubtype}{CompSep}{Encoding}{CompSep}{Data}"
}

/// Generate EI
ClassMethod GenerateEI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # EI Entity Identifier
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    
    EntityIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
    NamespaceID = iris.cls(__name__).GenerateID(ver,charSep)
    UniversalID = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        UniversalIDType = TABLES["HL70301"][1]
    except:
        UniversalIDType = "DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","UUID","x400","x500"
    UniversalIDType = random.choice(UniversalIDType)

    return f"{EntityIdentifier}{CompSep}{NamespaceID}{CompSep}{UniversalID}{CompSep}{UniversalIDType}"
}

/// Generate EIP
ClassMethod GenerateEIP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # EIP Entity Identifier Pair
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    
    PlacerAssignedIdentifier = iris.cls(__name__).GenerateEI(ver,charSep)
    FillerAssignedIdentifier = iris.cls(__name__).GenerateEI(ver,charSep)

    return f"{PlacerAssignedIdentifier}{CompSep}{FillerAssignedIdentifier}"
}

/// Generate ELD
ClassMethod GenerateELD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # ELD Error Location and Description
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
        #get segment reference
        try:
            SEGMENTS = lib.segments.SEGMENTS
        except:
            SEGMENTS = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    
    for idx, x in enumerate(SEGMENTS):
        if idx == 0:
            segList = [x]
        else:
            segList.append(x)
    
    SegmentID = random.choice(segList)
    SegmentSequence = str(random.randint(1, 20))
    FieldPosition = str(random.randint(1, 20))
    CodeIdentifyingError = iris.cls(__name__).GenerateCE(ver,charSep)
    return f"{SegmentID}{CompSep}{SegmentSequence}{CompSep}{FieldPosition}{CompSep}{CodeIdentifyingError}"
}

/// Generate ERL
ClassMethod GenerateERL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # ERL Error Location
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
        #get segment reference
        try:
            SEGMENTS = lib.segments.SEGMENTS
        except:
            SEGMENTS = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    
    for idx, x in enumerate(SEGMENTS):
        if idx == 0:
            segList = [x]
        else:
            segList.append(x)

    SegmentID = random.choice(segList)
    SegmentSequence = str(random.randint(1, 20))
    FieldPosition = str(random.randint(1, 20))
    CodeIdentifyingError = iris.cls(__name__).GenerateCE(ver,charSep)

    return f"{SegmentID}"
}

/// Generate FC
ClassMethod GenerateFC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # FC Financial Class
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    if ver < "2.7":
        FinancialClassCode = iris.cls(__name__).GenerateIS(ver,charSep)
        EffectiveDate = iris.cls(__name__).GenerateTS(ver,charSep)
    else:
        FinancialClassCode = iris.cls(__name__).GenerateCWE(ver,charSep)
        EffectiveDate = iris.cls(__name__).GenerateDTM(ver,charSep)
    return f"{FinancialClassCode}{CompSep}{EffectiveDate}"
}

/// Generate FN
ClassMethod GenerateFN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # FN Family Name
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    Surname = fake.last_name()
    OwnSurnamePrefix = fake.last_name()
    OwnSurname = fake.last_name()
    SurnamePrefixFromPartnerSpou = fake.last_name()
    SurnameFromPartnerSpouse = fake.last_name()

    if ver <"2.4":
        return f"{Surname}{CompSep}{OwnSurnamePrefix}"
    else:
        return f"{Surname}{CompSep}{OwnSurnamePrefix}{CompSep}{OwnSurnamePrefix}{CompSep}{OwnSurname}{CompSep}{SurnamePrefixFromPartnerSpou}{CompSep}{SurnameFromPartnerSpouse}"
}

/// Generate FT
ClassMethod GenerateFT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # FT formatted text data - An Elementary Data Type
    import random,string 
    return ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
}

/// Generate GTS
ClassMethod GenerateGTS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # GTS General Timing Specification - An Elementary Data Type
    import random,string 
    return ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
}

/// Build HD datatype
ClassMethod GenerateHD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # HD Hierarchic Designator
    import iris,importlib,random
    from faker import Faker
    from datetime import datetime
    # Initialize Faker instance
    fake = Faker()
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}  
    # Get the Component separator
    CompSep = charSep[1:2]
    # Build the example Datatype
    NamespaceID = iris.cls(__name__).GenerateIS(ver,charSep)
    UniversalID = iris.cls(__name__).GenerateST(ver, charSep)
    # get table values
    try:
        UniversalIDType = TABLES["HL70301"][1]
    except:
        UniversalIDType = "DNS","EUI64","CLIA","CLIP","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"
    # pick one of the values
    UniversalIDType = random.choice(UniversalIDType)
    return f"{NamespaceID}{CompSep}{UniversalID}{CompSep}{UniversalIDType}"
}

/// Generate ICD
ClassMethod GenerateICD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # ICD Insurance Certification Definition
    import iris,importlib,random
    from faker import Faker
    from datetime import datetime
    # Initialize Faker instance
    fake = Faker()
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    
    try:
        CertificationPatientType = TABLES["HL70150"][1]
    except:
        CertificationPatientType = "ER","IPE","OPE","UR"

    CertificationPatientType = random.choice(CertificationPatientType)

    try:
        CertificationRequired = TALBES["HL70136"][1]
    except:
        CertificationRequired = "Y","N"

    CertificationRequired = random.choice(CertificationRequired)
    if ver < "2.6":
        DateTimeCertificationRequire = iris.cls(__name__).GenerateTS(ver,charSep)
    else:
        DateTimeCertificationRequire = iris.cls(__name__).GenerateDTM(ver,charSep)

    return f"{CertificationPatientType}{CompSep}{CertificationRequired}{CompSep}{DateTimeCertificationRequire}"
}

/// Generate ID
ClassMethod GenerateID(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # ID CODED VALUE - An Elementary Data Type
    import random

    return random.randint(1, 199)
}

/// Generate IS
ClassMethod GenerateIS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # IS String Data - An Elementary Data Type
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()    
    return fake.pystr()[:20]
}

/// Generate JCC
ClassMethod GenerateJCC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # JCC Job Code/Class
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    if ver < "2.7":
        JobCode = iris.cls(__name__).GenerateIS(ver,charSep)
    else:
        JobCode = iris.cls(__name__).GenerateCWE(ver,charSep)

    if ver < "2.7":
        JobClass = iris.cls(__name__).GenerateIS(ver,charSep)
    else:
        JobClass = iris.cls(__name__).GenerateCWE(ver,charSep)

    JobDescriptionText = iris.cls(__name__).GenerateTX(ver,charSep)

    if ver < "2.5":
        return f"{JobCode}{CompSep}{JobClass}"
    else:
        return f"{JobCode}{CompSep}{JobClass}{CompSep}{JobDescriptionText}"
}

/// Generate LA1
ClassMethod GenerateLA1(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # LA1 Location with Address Variation 1
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    PointofCare = iris.cls(__name__).GenerateIS(ver,charSep)
    Room = iris.cls(__name__).GenerateIS(ver,charSep)
    Bed = iris.cls(__name__).GenerateIS(ver,charSep)
    Facility = iris.cls(__name__).GenerateHD(ver,charSep)
    LocationStatus = iris.cls(__name__).GenerateIS(ver,charSep)
    try:
        PatientLocationType = TABLES["HL70305"][1]
    except:
        PatientLocationType = "C","D","H","N","O","P","S"
    PatientLocationType = random.choice(PatientLocationType)
    Building = iris.cls(__name__).GenerateIS(ver,charSep)
    Floor = iris.cls(__name__).GenerateIS(ver,charSep)
    Address = iris.cls(__name__).GenerateAD(ver,charSep)

    return f"{PointofCare}{CompSep}{Room}{CompSep}{Bed}{CompSep}{Facility}{CompSep}{LocationStatus}{CompSep}{PatientLocationType}{CompSep}{Building}{CompSep}{Floor}{CompSep}{Address}"
}

/// Generate LA2
ClassMethod GenerateLA2(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # LA2 Location with Address Variation 2
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime, timedelta
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]

    PointofCare = iris.cls(__name__).GenerateIS(ver,charSep)
    Room = iris.cls(__name__).GenerateIS(ver,charSep)
    Bed = iris.cls(__name__).GenerateIS(ver,charSep)
    Facility = iris.cls(__name__).GenerateHD(ver,charSep)
    LocationStatus = iris.cls(__name__).GenerateIS(ver,charSep)
    try:
        PatientLocationType = TABLES["HL70305"][1]
    except:
        PatientLocationType = "C","D","H","N","O","P","S"
    PatientLocationType = random.choice(PatientLocationType)
    Building = iris.cls(__name__).GenerateIS(ver,charSep)
    Floor = iris.cls(__name__).GenerateIS(ver,charSep)
    StreetAddress = fake.street_address()
    OtherDesignation = fake.street_address()
    City = fake.city() 
    StateorProvince = fake.state() 
    ZiporPostalCode = fake.zipcode()
    Country = fake.country()
    try:
        AddressType = TABLES["HL70190"][1]
    except:
        AddressType = "BA","N","BDL","F","C","B","H","L","M","O","P","RH","BR"
    AddressType = random.choice(AddressType)
    OtherGeographicDesignation = iris.cls(__name__).GenerateST(ver,charSep)
    

    return f"{PointofCare}{CompSep}{Room}{CompSep}{Bed}{CompSep}{Facility}{CompSep}{LocationStatus}{CompSep}{PatientLocationType}{CompSep}{Building}{CompSep}{Floor}{CompSep}{StreetAddress}{CompSep}{OtherDesignation}{CompSep}{City}{CompSep}{StateorProvince}{CompSep}{ZiporPostalCode}{CompSep}{Country}{CompSep}{AddressType}{CompSep}{OtherGeographicDesignation}"
}

/// Generate MA
ClassMethod GenerateMA(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # MA Multiplexed Array
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    Quantity = iris.cls(__name__).GenerateNM(ver,charSep)
    Denomination = iris.cls(__name__).GenerateID(ver,charSep)

    if ver < "2.6":
        Sample1FromChannel1 = iris.cls(__name__).GenerateNM(ver,charSep)
        Sample1FromChannel2 = iris.cls(__name__).GenerateNM(ver,charSep)
        Sample1FromChannelN = iris.cls(__name__).GenerateNM(ver,charSep)
        Sample2FromChannel1 = iris.cls(__name__).GenerateNM(ver,charSep)
        Sample2FromChannelN = iris.cls(__name__).GenerateNM(ver,charSep)
        SampleNFromChannelN = iris.cls(__name__).GenerateNM(ver,charSep)
        return f"{Sample1FromChannel1}{CompSep}{Sample1FromChannel2}{CompSep}{Sample1FromChannelN}{CompSep}{Sample2FromChannel1}{CompSep}{Sample2FromChannelN}{CompSep}{SampleNFromChannelN}"

    else:
        SampleYFromChannel1 = iris.cls(__name__).GenerateNM(ver,charSep)
        SampleYFromChannel2 = iris.cls(__name__).GenerateNM(ver,charSep)
        SampleYFromChannel3 = iris.cls(__name__).GenerateNM(ver,charSep)
        SampleYFromChannel4 = iris.cls(__name__).GenerateNM(ver,charSep)
        return f"{SampleYFromChannel1}{CompSep}{SampleYFromChannel2}{CompSep}{SampleYFromChannel3}{SampleYFromChannel4}"
}

/// Generate MFI
ClassMethod GenerateMFI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # MFI Master File Identification
    import iris, random, importlib, string
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    
    try:
        MasterFileIdentifier = TABLES["HL70175"][1]
    except:
        MasterFileIdentifier = "CDM", "CMA", "CMB", "LOC", "OMA", "OMB", "OMC", "OMD","PRA","STF","CLN","OME","INV"
    MasterFileIdentifier = random.choice(MasterFileIdentifier)
    MasterFileApplicationIdentif = iris.cls(__name__).GenerateHD(ver,charSep)
    try:
        FileLevelEventCode = TABLES["HL70175"][1]
    except:
        FileLevelEventCode = "REP","UPD"
    FileLevelEventCode = random.choice(FileLevelEventCode)
    EnteredDateTime = iris.cls(__name__).GenerateTS(ver,charSep)
    EffectiveDateTime = iris.cls(__name__).GenerateTS(ver,charSep)
    try:
        ResponseLevelCode = TABLES["HL70179"][1]
    except:
        ResponseLevelCode = "NE","ER","AL","SU"
    ResponseLevelCode = random.choice(ResponseLevelCode)
    return f"{MasterFileIdentifier}{CompSep}{MasterFileApplicationIdentif}{CompSep}{FileLevelEventCode}{CompSep}{EnteredDateTime}{CompSep}{EffectiveDateTime}{CompSep}{ResponseLevelCode}"
}

/// Generate MO
ClassMethod GenerateMO(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # MO Money
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    Quantity = iris.cls(__name__).GenerateNM(ver,charSep)
    Denomination = iris.cls(__name__).GenerateID(ver,charSep)
    if SubCompSep == "None":
        return f"{Quantity}{CompSep}{Denomination}"
    else:
        return f"{Quantity}{SubCompSep}{Denomination}"
}

/// Generate MOC
ClassMethod GenerateMOC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # MOC Money and Code
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    MonetaryAmount = iris.cls(__name__).GenerateMO(ver,charSep)
    ChargeCode = iris.cls(__name__).GenerateCE(ver,charSep)

    return f"{MonetaryAmount}{CompSep}{ChargeCode}"
}

/// Generate MOP
ClassMethod GenerateMOP(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # MOP Money or Percentage
    import iris,random,importlib
    from faker import Faker
    from faker.providers import currency
    # Initialize Faker instance
    fake = Faker()
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    


    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        MoneyorPercentageIndicator=TABLES["HL70148"][1]
    except:
        MoneyorPercentageIndicator="AT","PC"
    MoneyorPercentageIndicator = random.choice(MoneyorPercentageIndicator)
    MoneyorPercentageQuantity = iris.cls(__name__).GenerateNM(ver,charSep)

    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        if ver < "2.5":
            return f"{MoneyorPercentageIndicator}{CompSep}{MoneyorPercentageQuantity}"
        else:
            CurrencyDenomination = fake.currency()[0]
            return f"{MoneyorPercentageIndicator}{CompSep}{MoneyorPercentageQuantity}{CompSep}{CurrencyDenomination}"
    else:
        if ver < "2.5":
            return f"{MoneyorPercentageIndicator}{SubCompSep}{MoneyorPercentageQuantity}"
        else:
            CurrencyDenomination = fake.currency()[0]
            return f"{MoneyorPercentageIndicator}{SubCompSep}{MoneyorPercentageQuantity}{SubCompSep}{CurrencyDenomination}"
}

/// Generate MSG
ClassMethod GenerateMSG(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # MSG Message Type
    import iris,random,importlib

    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]
    try:        
        MessageCode = TABLES["HL70076"][1]
    except:
        MessageCode = {}
    MessageCode = random.choice(MessageCode)
    try:
        TriggerEvent = TABLES["HL70003"][1]
    except:
        TriggerEvent = {}
    TriggerEvent = random.choice(TriggerEvent)
    try:
        MessageStructure = TABLES["HL70354"][1]
    except:
        MessageStructure = {}
    MessageStructure = random.choice(MessageStructure)

    return f"{MessageCode}{CompSep}{TriggerEvent}{CompSep}{MessageStructure}"
}

/// Generate NA
ClassMethod GenerateNA(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # NA Numeric Array
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    Value1 = iris.cls(__name__).GenerateNM(ver,charSep)
    Value2 = iris.cls(__name__).GenerateNM(ver,charSep)
    Value3 = iris.cls(__name__).GenerateNM(ver,charSep)
    Value4 = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{Value1}{CompSep}{Value2}{CompSep}{Value3}{CompSep}{Value4}"
}

/// Generate NM
ClassMethod GenerateNM(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # NM Numeric - An Elementary Data Type
    import random

    return random.randint(1, 199)
}

/// Generate NDL
ClassMethod GenerateNDL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # NDL Name with Date and Location
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]
    if ver < "":
        Name = iris.cls(__name__).GenerateCN(ver,charSep)

    else:
        Name = iris.cls(__name__).GenerateCNN(ver,charSep)
    StartDatetime = iris.cls(__name__).GenerateTS(ver,charSep)
    EndDatetime = iris.cls(__name__).GenerateTS(ver,charSep)
    PointofCare = iris.cls(__name__).GenerateIS(ver,charSep)
    Room = iris.cls(__name__).GenerateIS(ver,charSep)
    Bed = iris.cls(__name__).GenerateIS(ver,charSep)
    Facility = iris.cls(__name__).GenerateHD(ver,charSep)
    LocationStatus = iris.cls(__name__).GenerateIS(ver,charSep)
    PatientLocationType = iris.cls(__name__).GenerateIS(ver,charSep)
    Building = iris.cls(__name__).GenerateIS(ver,charSep)
    Floor = iris.cls(__name__).GenerateIS(ver,charSep)
    return f"{Name}{CompSep}{StartDatetime}{CompSep}{EndDatetime}{CompSep}{PointofCare}{CompSep}{Room}{CompSep}{Bed}{CompSep}{Facility}{CompSep}{LocationStatus}{CompSep}{PatientLocationType}{CompSep}{Building}{CompSep}{Floor}"
}

/// Generate NR
ClassMethod GenerateNR(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # NR Numeric Range
    # Get the Component separator
    CompSep = charSep[1:2]
    import iris,random

    LowValue = iris.cls(__name__).GenerateNM(ver,charSep)
    HighValue = iris.cls(__name__).GenerateNM(ver,charSep)+random.randint(1, 999999)

    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        return f"{LowValue}{CompSep}{HighValue}"
    else:
        return f"{LowValue}{SubCompSep}{HighValue}"
}

/// Generate OCD
ClassMethod GenerateOCD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # OCD Occurrence Code and Date
    # Get the Component separator
    CompSep = charSep[1:2]
    import iris,random

    OccurrenceCode = iris.cls(__name__).GenerateCNE(ver,charSep)
    OccurrenceDate = iris.cls(__name__).GenerateDT(ver,charSep)

    return f"{OccurrenceCode}{CompSep}{OccurrenceDate}"
}

/// Generate OG
ClassMethod GenerateOG(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # OG Observation Grouper
    import iris
    # Get the Component separator
    CompSep = charSep[1:2]

    OriginalSubIdentifier = iris.cls(__name__).GenerateST(ver,charSep)
    Group = iris.cls(__name__).GenerateNM(ver,charSep)
    Sequence = iris.cls(__name__).GenerateNM(ver,charSep)
    Identifier = iris.cls(__name__).GenerateST(ver,charSep)
    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        return f"{OriginalSubIdentifier}{CompSep}{Group}{CompSep}{Sequence}{CompSep}{Identifier}"
    else:
        return f"{OriginalSubIdentifier}{SubCompSep}{Group}{SubCompSep}{Sequence}{SubCompSep}{Identifier}"
}

/// Generate OSD
ClassMethod GenerateOSD(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # OSD Order Sequence Definition
    import iris,random,importlib
    from faker import Faker
    import hl7apy as cr
    # Initialize Faker instance
    fake = Faker()
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        SequenceResultsFlag = TABLES["HL70524"][1]
    except:
        SequenceResultsFlag = "S","C","R"
    SequenceResultsFlag = random.choice(SequenceResultsFlag)
    PlacerOrderNumberEntityIdent = iris.cls(__name__).GenerateST(ver,charSep)
    PlacerOrderNumberNamespaceID = iris.cls(__name__).GenerateIS(ver,charSep)
    FillerOrderNumberEntityIdent = iris.cls(__name__).GenerateST(ver,charSep)
    FillerOrderNumberNamespaceID = iris.cls(__name__).GenerateIS(ver,charSep)
    # The acceptable condition values have the form commonly used in project planning methodologies in the following format: <one of “SS", “EE", “SE", or “ES”> +/- <time>.
    # example: ES + 10M Start time of the successor
    STARTEND = "S","E"
    predecessor = random.choice(STARTEND)
    successor = random.choice(STARTEND)
    values = str(fake.random_digit() + 1)
    timeinterval = "S", "M", "H", "D", "W", "L"
    timeinterval = random.choice(timeinterval)
    plusminus = "+","-"
    plusminus = random.choice(plusminus)
    SequenceConditionValue = predecessor + successor + " " + plusminus + " " + values + timeinterval
    MaximumNumberofRepeats = iris.cls(__name__).GenerateNM(ver,charSep)
    PlacerOrderNumUnivID = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        PlacerOrderNumUnivIDType = TABLES["HL70301"][1]
    except:
        PlacerOrderNumUnivIDType = "DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"
    PlacerOrderNumUnivIDType = random.choice(PlacerOrderNumUnivIDType)
    FillerOrderNumUnivID = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        FillerOrderNumUnivIDType = TABLES["HL70301"][1]
    except:
        FillerOrderNumUnivIDType = "DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"
    FillerOrderNumUnivIDType = random.choice(FillerOrderNumUnivIDType)

    # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        return f"{SequenceResultsFlag}{CompSep}{PlacerOrderNumberEntityIdent}{CompSep}{PlacerOrderNumberNamespaceID}{CompSep}{FillerOrderNumberEntityIdent}{CompSep}{FillerOrderNumberNamespaceID}{CompSep}{SequenceConditionValue}{CompSep}{MaximumNumberofRepeats}{CompSep}{PlacerOrderNumUnivID}{CompSep}{PlacerOrderNumUnivIDType}{CompSep}{FillerOrderNumUnivID}{CompSep}{FillerOrderNumUnivIDType}"
    else:
        return f"{SequenceResultsFlag}{SubCompSep}{PlacerOrderNumberEntityIdent}{SubCompSep}{PlacerOrderNumberNamespaceID}{SubCompSep}{FillerOrderNumberEntityIdent}{SubCompSep}{FillerOrderNumberNamespaceID}{SubCompSep}{SequenceConditionValue}{SubCompSep}{MaximumNumberofRepeats}{SubCompSep}{PlacerOrderNumUnivID}{SubCompSep}{PlacerOrderNumUnivIDType}{SubCompSep}{FillerOrderNumUnivID}{SubCompSep}{FillerOrderNumUnivIDType}"
}

/// Generate OSP
ClassMethod GenerateOSP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # OSP Occurrence Span Code and Date
    import iris
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]

    OccurrenceSpanCode = iris.cls(__name__).GenerateCNE(ver,charSep)

    # Using current time
    ini_time_for_now = datetime.now()
    OccurrenceSpanStartDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
    # Need future date like EffectiveDate + 30 days
    OccurrenceSpanStopDate = ini_time_for_now + timedelta(days = 30)
    OccurrenceSpanStopDate = OccurrenceSpanStopDate.strftime("%Y%m%d%H%M%S")

    return f"{OccurrenceSpanCode}{CompSep}{OccurrenceSpanStartDate}{CompSep}{OccurrenceSpanStopDate}"
}

/// Generate PCF
ClassMethod GeneratePCF(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PCF Pre-certification required
    import iris,random,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    
    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        precertificationpatienttype = TABLES["HL70338"][1]
    except:
        precertificationpatienttype = "ER","IPE","OPE","UR"
    precertificationpatienttype = random.choice(precertificationpatienttype)
    
    try:
        precertificationrequired = TABLES["HL70150"][1]
    except:
        precertificationrequired = "Y","N"
    precertificationrequired = random.choice(precertificationrequired)


    precertificationwindow = iris.cls(__name__).GenerateTS(ver,charSep)
    

    return f"{precertificationpatienttype}{CompSep}{precertificationrequired}{CompSep}{precertificationwindow}"
}

/// Generate PI
ClassMethod GeneratePI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PIP Practitioner Institutional Privileges
    import iris
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]

    IDnumberST  = iris.cls(__name__).GenerateST(ver,charSep)
    typeofIDnumberIS  = iris.cls(__name__).GenerateIS(ver,charSep)
    otherqualifyinginfo  = iris.cls(__name__).GenerateST(ver,charSep)

    return f"{IDnumberST}{CompSep}{typeofIDnumberIS}{CompSep}{otherqualifyinginfo}"
}

/// Generate PIP
ClassMethod GeneratePIP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PIP Practitioner Institutional Privileges
    import iris
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]

    if ver < "2.6":
        Privilege = iris.cls(__name__).GenerateCE(ver,charSep)
        PrivilegeClass = iris.cls(__name__).GenerateCE(ver,charSep)
    else:
        Privilege = iris.cls(__name__).GenerateCWE(ver,charSep)
        PrivilegeClass = iris.cls(__name__).GenerateCWE(ver,charSep)

    Facility = iris.cls(__name__).GenerateEI(ver,charSep)

    # Using current time
    ini_time_for_now = datetime.now()
    ActivationDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
    # Need future date like EffectiveDate + 30 days
    ExpirationDate = ini_time_for_now + timedelta(days = 30)
    ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")

    return f"{Privilege}{CompSep}{PrivilegeClass}{CompSep}{ExpirationDate}{CompSep}{ActivationDate}{CompSep}{Facility}"
}

/// Generate PL
ClassMethod GeneratePL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PL Person Location
    import iris,random,importlib,string
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Get the Component separator
    CompSep = charSep[1:2]
    if ver < "2.7":
        Building = iris.cls(__name__).GenerateIS(ver,charSep)
        LocationDescription = iris.cls(__name__).GenerateST(ver,charSep)
        ComprehensiveLocationIdentif = iris.cls(__name__).GenerateEI(ver,charSep)
        AssigningAuthorityforLocatio = iris.cls(__name__).GenerateHD(ver,charSep)

    else:

        Building = iris.cls(__name__).GenerateHD(ver,charSep)
        LocationDescription = iris.cls(__name__).GenerateST(ver,charSep)
        ComprehensiveLocationIdentif = iris.cls(__name__).GenerateEI(ver,charSep)
        AssigningAuthorityforLocatio = iris.cls(__name__).GenerateHD(ver,charSep)

    PointofCare = "ICU","Med-Surg","ED","OR","PACU","ASU","L&D","NICU","CVICU","CATHLAB","ORTHO","IR","ENDO","PEDS","PICU","PSYCH","REHAB","2E","2N","3W","3S","4"
    PointofCare = random.choice(PointofCare)
    Room = str(random.randint(1,2010))
    Bed = "A","B"
    Bed = random.choice(Bed)
    Facility = "Communitycare Hospital","Familycare Haven","Healthlink Clinic","Heartfelt Healing Clinic","Holistic Health Oasis","Orthocare Orthopedic Clinic","Patients Choice Medical Clinic","Warm Embrace Healthcare","Advanced Pediatrics associates","AllCare family medicine","Aspire To Thrive Clinic","Atlanta Medical Group","Austin Carehub Medical Center","Austin Health Clinic","Balancelife Medical Center","Beyondlimits Wellness","Biofusion Clinic","Biorevolution Care","Biotech breakthroughs","Blossomhealth Integrative Medicine","Bodylogic clinic","Boston health and Wellness","Brighthorizon Health","Brooklyn Neighborhood Hospital"
    Facility = random.choice(Facility)
    LocationStatus = "Dirty","Clean"
    LocationStatus = random.choice(LocationStatus)
        # get table values
    try:
        PersonLocationType = TABLES["HL70305"][1]
    except:
        PersonLocationType = "C","D","H","N","O","P","S"
    # pick one of the values
    PersonLocationType = random.choice(PersonLocationType)
    Floor = Room[0]

    return f"{PointofCare}{CompSep}{Room}{CompSep}{Bed}{CompSep}{Facility}{CompSep}{LocationStatus}{CompSep}{PersonLocationType}{CompSep}{Building}{CompSep}{Floor}{CompSep}{LocationDescription}{CompSep}{ComprehensiveLocationIdentif}{CompSep}{AssigningAuthorityforLocatio}"
}

/// Generate PLN
ClassMethod GeneratePLN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PLN Practitioner License or Other ID Number
    # Definition: This data type specifies a practitioner’s license number, or other ID number such as UPIN, Medicare and Medicaid number, and associated detail.
    import iris,random,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    
    # Get the Component separator
    CompSep = charSep[1:2]
    IDNumber = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        TypeofIDNumber = TABLES["HL70338"][1]
    except:
        TypeofIDNumber = "CY","DEA","GL","LI","L&I","MCD","MCR","QA","SL","TAX","TRL","UPIN"
    TypeofIDNumber = random.choice(TypeofIDNumber)
    
    StateotherQualifyingInformat = iris.cls(__name__).GenerateST(ver,charSep)
    ExpirationDate = iris.cls(__name__).GenerateDT(ver,charSep)
    

    return f"{IDNumber}{CompSep}{TypeofIDNumber}{CompSep}{StateotherQualifyingInformat}{CompSep}{ExpirationDate}"
}

/// Generate PN
ClassMethod GeneratePN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PN - Extended Person Name
    import iris,random,importlib,string
    from faker import Faker
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2] 
    familyname = fake.first_name()
    givenname = fake.first_name()
    secondandfurthergivennamesor =  fake.last_name()
    suffix = fake.suffix()
    prefix = fake.prefix()

    match ver:
        case "2.1":
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)
        case "2.2":
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)
        case "2.3":
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)
        case "2.3.1":
            # get table values
            degree = TABLES["HL70360"][1]
            # pick one of the values
            degree = random.choice(degree)
        case "2.4":
            # get table values
            degree = TABLES["HL70360"][1]
            # pick one of the values
            degree = random.choice(degree)
        case "2.5":
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)
        case "2.5.1":
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)
        case "2.6":
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)
        case _:
            degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
            degree = random.choice(degree)

    return f"{familyname}^{givenname}^{secondandfurthergivennamesor}^{suffix}^{prefix}^{degree}"
}

/// Generate PPN
ClassMethod GeneratePPN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PPN Performing Person Time Stamp
    import iris,random,importlib,string
    from faker import Faker
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    PersonIdentifier = iris.cls(__name__).GenerateST(ver,CompSep)
    FamilyName = fake.first_name()
    GivenName = fake.first_name()
    SecondandFurtherGivenNamesor =  fake.last_name()
    Suffix = fake.suffix()
    Prefix = fake.prefix()
    # Degree logic
    try:
        Degree = TABLES["HL70360"][1]
    except:
        Degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    Degree = random.choice(Degree)
    SourceTable = iris.cls(__name__).GenerateIS(ver,CompSep)
    AssigningAuthority = iris.cls(__name__).GenerateHD(ver,CompSep)
    # NameTypeCode logic
    try:
        NameTypeCode = TABLES["HL70200"][1]
    except:
        NameTypeCode = "A","B","C","D","I","L","M","N","P","R","S","T","U"
    NameTypeCode = random.choice(NameTypeCode)
    IdentifierCheckDigit = iris.cls(__name__).GenerateST(ver,CompSep)
    # Check Digit Scheme logic
    try:
        CheckDigitScheme = TABLES["HL70061"][1]
    except:
        CheckDigitScheme = "NPI","ISO","M10","M11"
    CheckDigitScheme = random.choice(CheckDigitScheme)
    # IdentifierTypeCode logic
    try:
        IdentifierTypeCode = TABLES["HL70203"][1]
    except:
        IdentifierTypeCode = "AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"
    IdentifierTypeCode = random.choice(IdentifierTypeCode)
    AssigningFacility = iris.cls(__name__).GenerateHD(ver,CompSep)
    DateTimeActionPerformed = iris.cls(__name__).GenerateTS(ver,CompSep)
    # NameRepresentationCode logic
    try:
        NameRepresentationCode = TABLES["HL70465"][1]
    except:
        NameRepresentationCode = "I","A","P"
    NameRepresentationCode = random.choice(NameRepresentationCode)
    NameContext = iris.cls(__name__).GenerateCE(ver,CompSep)
    NameValidityRange = iris.cls(__name__).GenerateDR(ver,CompSep,SubCompSep)
    # NameAssemblyOrder logic
    try:
        NameAssemblyOrder = TABLES["HL70444"][1]
    except:
        NameAssemblyOrder = "G","F"
    NameAssemblyOrder = random.choice(NameAssemblyOrder)
    EffectiveDate = iris.cls(__name__).GenerateTS(ver,CompSep)
    ExpirationDate = iris.cls(__name__).GenerateTS(ver,CompSep)
    ProfessionalSuffix = iris.cls(__name__).GenerateST(ver,CompSep)
    AssigningJurisdiction = iris.cls(__name__).GenerateCWE(ver,CompSep)
    AssigningAgencyorDepartment = iris.cls(__name__).GenerateCWE(ver,CompSep)
    if ver > "2.6":
        SecurityCheck = iris.cls(__name__).GenerateST(ver,CompSep)
        # SecurityCheckScheme Logic
        try:
            SecurityCheckScheme = TABLES["HL70904"][1]
        except:
            SecurityCheckScheme = "BCV","CCS","VID"
        SecurityCheckScheme = random.choice(SecurityCheckScheme)
    # return case
    match ver:
        case "2.3":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}"
        case "2.3.1":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}"
        case "2.4":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}"
        case "2.5":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
        case "2.5.1":
           return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
        case "2.6":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
        case "2.7":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.7.1":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.8":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.8.1":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case "2.8.2":
            return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{DateTimeActionPerformed}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
        case _:
            return
}

/// Generate PRL
ClassMethod GeneratePRL(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PRL Parent Result Link
    # Definition: Uniquely identifies the parent result’s OBX segment related to the current order, together with the information in OBR-29-parent.
    import iris
    # Get the Component separator
    CompSep = charSep[1:2] 
    SubCompSep = charSep[4:5]
    if ver < "2.6":
        ParentObservationIdentifier = iris.cls(__name__).GenerateCE(ver,CompSep,SubCompSep)
    else:
        ParentObservationIdentifier = iris.cls(__name__).GenerateCWE(ver,CompSep,SubCompSep)
    if ver < "2.8.2":
        ParentObservationSubidentifi = iris.cls(__name__).GenerateST(ver,CompSep)
    else:
        ParentObservationSubidentifi = iris.cls(__name__).GenerateOG(ver,CompSep,SubCompSep)
    ParentObservationValueDescri = iris.cls(__name__).GenerateTX(ver,CompSep)

    return f"{ParentObservationIdentifier}{CompSep}{ParentObservationSubidentifi}{CompSep}{ParentObservationValueDescri}"
}

/// Generate PT
ClassMethod GeneratePT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PT Processing Type
    # Definition: This data type indicates whether to process a message as defined in HL7 Application (level 7) Processing rules.
    import iris,random,importlib

    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        ProcessingID = TABLES["HL70103"][1]
    except:
        ProcessingID = "D","P","T"
    ProcessingID = random.choice(ProcessingID)
    try:
        ProcessingMode = TABLES["HL70207"][1]
    except:
        ProcessingMode = "A","R","I","T","Not present"
    ProcessingMode = random.choice(ProcessingMode)
    return f"{ProcessingID}{CompSep}{ProcessingMode}"
}

/// Generate PTA
ClassMethod GeneratePTA(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # PTA Policy Type and Amount
    # Definition: This data type specifies the policy type and amount covered by the insurance.
    import iris,random,importlib

    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    try:
        PolicyType = TABLES["HL70147"][1]
    except:
        PolicyType = "ANC","2ANC","MMD","2MMD","3MMD"
    PolicyType = random.choice(PolicyType)
    try:
        AmountClass = TABLES["HL70193"][1]
    except:
        AmountClass = "AT","LM","PC","UL"
    AmountClass = random.choice(AmountClass)

    MoneyorPercentageQuantity = iris.cls(__name__).GenerateNM(ver,CompSep)
    MoneyorPercentage = iris.cls(__name__).GenerateMOP(ver,CompSep,SubCompSep)

    return f"{PolicyType}{CompSep}{AmountClass}{CompSep}{MoneyorPercentageQuantity}{CompSep}{MoneyorPercentage}"
}

/// Generate QIP
ClassMethod GenerateQIP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # QIP Query Input Parameter List
    import iris, random
    # Get the Component separator
    CompSep = charSep[1:2]
    # Check if @ in list of encoding characters
    if "@" in charSep:
        index = str(charSep.index("@")) 
        match index:
            case "0":
                escapeseq="\\F\\"
            case "1":
                escapeseq="\\S\\"
            case "2":
                escapeseq="\\T\\"
            case "3":
                escapeseq="\\R\\"
            case "4":
                escapeseq="\\E\\"
    else:
        escapeseq = "@"


    # Segment Field Name
    separator = ","
    listoffields = iris.cls(__name__).GetAllFieldsPerVer(ver).split(separator)
    # random
    fieldname=random.choice(listoffields)
    SegmentFieldName = escapeseq + fieldname.replace("_",".")
    Values = iris.cls(__name__).GenerateST(ver,CompSep)
    return f"{SegmentFieldName}{CompSep}{Values}"
}

/// Generate QSC
ClassMethod GenerateQSC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # QSC Query Selection Criteria
    # Definition: This field indicates the conditions that qualify the rows to be returned in the query response.  Note that this field conveys the same information as the "WHERE" clause in the corresponding SQL expression of the query, but is formatted differently.
    import iris,random,importlib

    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]
    
    # Check if @ in list of encoding characters
    if "@" in charSep:
        index = str(charSep.index("@")) 
        match index:
            case "0":
                escapeseq="\\F\\"
            case "1":
                escapeseq="\\S\\"
            case "2":
                escapeseq="\\T\\"
            case "3":
                escapeseq="\\R\\"
            case "4":
                escapeseq="\\E\\"
    else:
        escapeseq = "@"


    # Segment Field Name
    separator = ","
    listoffields = iris.cls(__name__).GetAllFieldsPerVer(ver).split(separator)
    # random
    fieldname=random.choice(listoffields)
    SegmentFieldName = escapeseq + fieldname.replace("_",".")
    try:
        RelationalOperator = TABLES["HL70209"][1]
    except:
        RelationalOperator = "EQ","NE","LT","GT","LE","GE","CT","GN"
    RelationalOperator = random.choice(RelationalOperator)
    Value = iris.cls(__name__).GenerateST(ver,CompSep)
    try:
        RelationalConjunction = TABLES["HL70210"][1]
    except:
        RelationalConjunction = "OR","AND"
    RelationalConjunction = random.choice(RelationalConjunction)

    return f"{SegmentFieldName}{CompSep}{RelationalOperator}{CompSep}{Value}{CompSep}{RelationalConjunction}"
}

/// Generate RCD
ClassMethod GenerateRCD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # RCD Row Column Definition
    import iris,random,importlib

    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    

    # Get the Component separator
    CompSep = charSep[1:2]

    # Check if @ in list of encoding characters
    if "@" in charSep:
        index = str(charSep.index("@")) 
        match index:
            case "0":
                escapeseq="\\F\\"
            case "1":
                escapeseq="\\S\\"
            case "2":
                escapeseq="\\T\\"
            case "3":
                escapeseq="\\R\\"
            case "4":
                escapeseq="\\E\\"
    else:
        escapeseq = "@"


    # Segment Field Name
    separator = ","
    listoffields = iris.cls(__name__).GetAllFieldsPerVer(ver).split(separator)
    # random
    fieldname=random.choice(listoffields)
    SegmentFieldName = escapeseq + fieldname.replace("_",".")
    try:
        HL7DataType = TABLES["HL70330"][1]
    except:
        HL7DataType = "AD","AUI","CCD","CCP","CD","CE","CF","CK","CM","CN","CNE","CNS","CP","CQ","CSU","CWE","CX","DDI","DIN","DLD","DLN","DLT","DR","DT","DTM","DTN","ED","EI","EIP","ELD","ERL","FC","FN","FT","GTS","HD","ICD","ID","IS","JCC","LA1","LA2","MA","MO","MOC","MOP","MSG","NA","NDL","NM","NR","OCD","OSD","OSP","PIP","PL","PLN","PN","PPN","PRL","PT","PTA","QIP","QSC","RCD","RFR","RI","RMC","RP","RPT","SAD","SCV","SI","SN","SPD","SPS","SRT","ST","TM","TN","TQ","TS","TX","UVC","VH","VID","VR","WVI","WVS","XAD","XCN","XON","XPN","XTN"
    HL7DataType = random.choice(HL7DataType)
    MaximumColumnWidth = str(random.randint(1,200))

    return f"{SegmentFieldName}{CompSep}{HL7DataType}{CompSep}{MaximumColumnWidth}"
}

/// Generate RFR
ClassMethod GenerateRFR(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # RFR Reference Range
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]

    NumericRange = iris.cls(__name__).GenerateNR(ver,CompSep,SubCompSep)
    try:
        AdministrativeSex = TABLES["HL70001"][1]
    except:
        AdministrativeSex = "F","M","O","U","A","N"
    AdministrativeSex = random.choice(AdministrativeSex)
    AgeRange = iris.cls(__name__).GenerateNR(ver,CompSep,SubCompSep)
    GestationalAgeRange = iris.cls(__name__).GenerateNR(ver,CompSep,SubCompSep)
    Species = "Giant Panda","Giant Tortoise","Great White Shark","Greater One-Horned Rhino","Hippopotamus","Leatherback Turtle","Lion","Loggerhead Turtle","Marine Iguana","Olive Ridley Turtle","Polar Bear","Snow Leopard","Southern rockhopper penguin","Albacore Tuna","Beluga","Greater Sage-Grouse","Jaguar","Mountain Plover","Plains Bison","White Rhino","Yellowfin Tuna","Arctic Fox","Arctic Wolf","Beaver","Bowhead Whale","Brown Bear","Common Bottlenose Dolphin","Gray Whale","Macaw","Narwhal","Pronghorn","Skipjack Tuna","Swift Fox","Tree Kangaroo","African Elephant","Amazon River Dolphin","Continental Tiger","Dolphins and Porpoises","Elephant","Gorilla","Pacific Salmon","Pangolin","Penguin","Poison Dart Frog","Rhino","Seals","Shark","Sloth","Tuna","African forest elephant","Amur Leopard","Black Rhino","Bornean Orangutan","Cross River Gorilla","Eastern Lowland Gorilla","Hawksbill Turtle","Javan Rhino","Orangutan","Saola","Sumatran Elephant","Sumatran Orangutan","Sumatran Rhino","Sunda Tiger","Vaquita","Western Lowland Gorilla","Yangtze Finless Porpoise","African savanna elephant","African Wild Dog","Asian Elephant","Black-footed Ferret","Blue Whale","Bluefin Tuna","Bonobo","Bornean Elephant","Chimpanzee","Fin Whale","Galápagos Penguin","Ganges River Dolphin","Green Turtle","Hector's Dolphin","Humphead Wrasse","Indian Elephant","Indus River Dolphin","Irrawaddy Dolphin","Monarch Butterfly","Mountain Gorilla","North Atlantic Right Whale","Red Panda","Sea Lions","Sea Turtle","Sei Whale","Sri Lankan Elephant","Tiger","Whale","Whale Shark","Bigeye Tuna","Black Spider Monkey","Cheetah","Dugong","Human"
    Species = random.choice(Species)
    Racesubspecies = iris.cls(__name__).GenerateST(ver,CompSep)
    Conditions = iris.cls(__name__).GenerateTX(ver,CompSep)

    return f"{NumericRange}{CompSep}{AdministrativeSex}{CompSep}{AgeRange}{CompSep}{GestationalAgeRange}{CompSep}{Species}{CompSep}{Racesubspecies}{CompSep}{Conditions}"
}

/// Generate RI
ClassMethod GenerateRI(ver = "2.5", charSep = "|^~\&", SubCompSep = "None") [ Language = python ]
{
    # RI Repeat Interval
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    try:
        RepeatPattern = TABLES["HL0335"][1]
    except:
        RepeatPattern = "QnS","QnM","QnH","QnD","QnW","QnL","QnJd","BID","TID","QID","xID","QAM","QSHIFT","QOD","QHS","QPM","C","Uxxx","PRN","PRNxxx","Once","Meal Related Timings","A","P","I","M","D","V"
    RepeatPattern = random.choice(RepeatPattern)
    # if it is a pattern that has n or x random a value to put in there
    match RepeatPattern:
        case "QnS":
            replacNum = str(random.randint(1,9))
            RepeatPattern = "Q" + replacNum + "S"
        case "QnM":
            replacNum = str(random.randint(1,9))
            RepeatPattern = "Q" + replacNum + "M"
        case "QnH":
            replacNum = str(random.randint(1,9))
            RepeatPattern = "Q" + replacNum + "H"
        case "QnD":
            replacNum = str(random.randint(1,9))
            RepeatPattern = "Q" + replacNum + "D"
        case "QnW":
            replacNum = str(random.randint(1,9))
            RepeatPattern = "Q" + replacNum + "W"
        case "QnL":
            replacNum = str(random.randint(1,9))
            RepeatPattern = "Q" + replacNum + "L"
        case "QnJd":
            replacNum = str(random.randint(1,9))
            replacDay = str(random.randint(1,7))
            RepeatPattern = "Q" + replacNum + "J" + replacDay
        case "xID":
            replacNum = str(random.randint(1,9))
            RepeatPattern = replacNum + "ID"
    ExplicitTimeInterval = iris.cls(__name__).GenerateST(ver,CompSep)
        # If this is a subcomponent then use subcompsep else use component seperator
    if SubCompSep=="None":
        return f"{RepeatPattern}{CompSep}{ExplicitTimeInterval}"
    else:
        return f"{RepeatPattern}{SubCompSep}{ExplicitTimeInterval}"
}

/// Generate RMC
ClassMethod GenerateRMC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # RMC Room Coverage
    # Definition: This data type specifies insurance coverage detail for a room.
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    try:
        RoomType = TABLES["HL0145"][1]
    except:
        RoomType = "PRI","2PRI","SPR","2SPR","ICU","2ICU"
    RoomType = random.choice(RoomType)
    try:
        AmountType = TABLES["HL0145"][1]
    except:
        AmountType = "DF","LM","PC","RT","UL"
    AmountType = random.choice(AmountType)
    CoverageAmount = iris.cls(__name__).GenerateNM(ver,CompSep)
    MoneyorPercentage = iris.cls(__name__).GenerateMOP(ver,CompSep,SubCompSep)

    return f"{RoomType}{CompSep}{AmountType}{CompSep}{CoverageAmount}{CompSep}{MoneyorPercentage}"
}

/// Generate RP
ClassMethod GenerateRP(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # RP Referenece Pointer
    # Definition: This data type transmits information about data stored on another system. It contains a reference pointer that uniquely identifies the data on the other system, the identity of the other system, and the type of data.
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    Pointer = iris.cls(__name__).GenerateST(ver,CompSep)
    ApplicationID = iris.cls(__name__).GenerateHD(ver,CompSep)
    try:
        TypeofData = TABLES["HL0191"][1]
    except:
        TypeofData = "AP","AU","FT","IM","multipart","NS","SD","SI","TEXT","TX"
    TypeofData = random.choice(TypeofData)
    try:
        Subtype = TABLES["HL0291"][1]
    except:
        Subtype = "BASIC","DICOM","FAX","GIF","HTML","JOT","JPEG","Octet-stream","PICT","PostScript","RTF","SGML","TIFF","x-hl7-cda-level-one","XML"
    Subtype = random.choice(Subtype)

    return f"{Pointer}{CompSep}{ApplicationID}{CompSep}{TypeofData}{CompSep}{Subtype}"
}

/// Generate RPT
ClassMethod GenerateRPT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # RPT Repeat Pattern
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    try:
        RepeatPatternCode = TABLES["HL0335"][1]
    except:
        RepeatPatternCode = "QnS","QnM","QnH","QnD","QnW","QnL","QnJd","BID","TID","QID","xID","QAM","QSHIFT","QOD","QHS","QPM","C","Uxxx","PRN","PRNxxx","Once","Meal Related Timings","A","P","I","M","D","V"
    RepeatPatternCode = random.choice(RepeatPatternCode)
    try:
        CalendarAlignment = TABLES["HL0527"][1]
    except:
        CalendarAlignment = "MY","WY","DM","DY","DW","HD","NH","SN"
    CalendarAlignment = random.choice(CalendarAlignment)
    PhaseRangeBeginValue = iris.cls(__name__).GenerateNM(ver,CompSep)
    PhaseRangeEndValue = iris.cls(__name__).GenerateNM(ver,CompSep)
    PeriodQuantity = iris.cls(__name__).GenerateNM(ver,CompSep)
    if ver < "2.7":
        PeriodUnits = iris.cls(__name__).GenerateIS(ver,CompSep)
    else:
        PeriodUnits = iris.cls(__name__).GenerateCWE(ver,CompSep,SubCompSep)
    try:
        InstitutionSpecifiedTime = TABLES["HL0527"][1]
    except:
        InstitutionSpecifiedTime = "Y","N"
    InstitutionSpecifiedTime = random.choice(InstitutionSpecifiedTime)
    try:
        Event = TABLES["HL70528"][1]
    except:
        Event = "HS","AC","PC","IC","ACM","ACD","ACV","PCM","PCD","PCV","ICM","ICD","ICV"
    Event = random.choice(Event)
    EventOffsetQuantity = iris.cls(__name__).GenerateNM(ver,CompSep)
    if ver < "2.7":
        EventOffsetUnits = iris.cls(__name__).GenerateIS(ver,CompSep)
    else:
        EventOffsetUnits = iris.cls(__name__).GenerateCWE(ver,CompSep,SubCompSep)
    GeneralTimingSpecification = iris.cls(__name__).GenerateGTS(ver,CompSep)

    return f"{RepeatPatternCode}{CompSep}{CalendarAlignment}{CompSep}{PhaseRangeBeginValue}{CompSep}{PhaseRangeEndValue}{CompSep}{PeriodQuantity}{CompSep}{PeriodUnits}{CompSep}{InstitutionSpecifiedTime}{CompSep}{Event}{CompSep}{EventOffsetQuantity}{CompSep}{EventOffsetUnits}{CompSep}{GeneralTimingSpecification}"
}

/// Generate SAD
ClassMethod GenerateSAD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SAD Street Address
    import random,importlib,re
    from faker import Faker

    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    StreetorMailingAddress = fake.street_address()
    DwellingNumber = StreetorMailingAddress.split(" ",1)[0]
    StreetName = StreetorMailingAddress.split(" ",1)[1]

    return f"{StreetorMailingAddress}{CompSep}{StreetName}{CompSep}{DwellingNumber}"
}

/// Generate SCV
ClassMethod GenerateSCV(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SCV Scheduling Class Value Pair
    import iris,random
    from datetime import datetime, timedelta
    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    try:
        ParameterClass = TABLES["HL70294"][1]
    except:
        ParameterClass = "Prefstart","Prefend","Mon","Tues","Wed","Thu","Fri","Sat","Sun"
    ParameterClass = random.choice(ParameterClass)
    match ParameterClass:
        case "Prefstart":
            # Using current time
            ini_time_for_now = datetime.now()
            ParameterValue = ini_time_for_now.strftime("%H%M")
        case "Prefend":
            # Using current time
            ini_time_for_now = datetime.now()
            EndDateTime = ini_time_for_now + timedelta(hours = 2)
            ParameterValue = EndDateTime.strftime("%H%M")

        case "Mon":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)
        case "Tues":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)
        case "Wed":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)
        case "Thu":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)
        case "Fri":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)
        case "Sat":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)
        case "Sun":
            OKNO = "OK", "NO"
            ParameterValue = random.choice(OKNO)

    return f"{ParameterClass}{CompSep}{ParameterValue}"
}

/// Generate Sequence ID
ClassMethod GenerateSI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SI Sequence ID - An Elementary Data Type
    import random
    return random.randint(1,9999)
}

/// Generate SN
ClassMethod GenerateSN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SN Structured Numeric
    import iris,random
    # Get the Component separator
    CompSep = charSep[1:2]
    Comparator = ">", "<", ">=", "<=", "=", "<>"
    Comparator = random.choice(Comparator)
    Num1 = iris.cls(__name__).GenerateNM(ver,charSep)
    SeparatorSuffix = "-", "+", "/", ".", ":"
    SeparatorSuffix = random.choice(SeparatorSuffix)
    Num2 = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{Comparator}{CompSep}{Num1}{CompSep}{SeparatorSuffix}{CompSep}{Num2}"
}

/// Generate SNM
ClassMethod GenerateSNM(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SNM String of Telephone Number Digits - An Elementary Data Type
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    return fake.phone_number()
}

/// Generate SPD
ClassMethod GenerateSPD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SI Sequence ID - An Elementary Data Type
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    SpecialtyName = "Drama Therapist","Counselor","Addiction (Substance Use Disorder) Counselor","Mental Health Counselor","Pastoral Counselor","Professional Counselor","School Counselor","Psychoanalyst","Poetry Therapist","Clinical Neuropsychologist","Deactivated - Clinical Neuropsychologist","Behavioral Analyst","Psychologist","Addiction (Substance Use Disorder) Psychologist","Adult Development & Aging Psychologist","Cognitive & Behavioral Psychologist","Clinical Psychologist","Counseling Psychologist","Clinical Child & Adolescent Psychologist","Deactivated - Psychologist","Exercise & Sports Psychologist","Family Psychologist","Forensic Psychologist","Health Psychologist","Health Service Psychologist","Deactivated - Psychologist Men & Masculinity","Intellectual & Developmental Disabilities Psychologist","Prescribing (Medical) Psychologist","Psychoanalysis Psychologist","Deactivated - Psychologist Psychotherapy","Group Psychotherapy Psychologist","Rehabilitation Psychologist","School Psychologist","Deactivated - Psychotherapy Women","Social Worker","Clinical Social Worker","School Social Worker","Assistant Behavior Analyst","Marriage & Family Therapist","Behavior Technician","Chiropractor","Independent Medical Examiner Chiropractor","Internist Chiropractor","Neurology Chiropractor","Nutrition Chiropractor","Pediatric Chiropractor","Radiology Chiropractor","Rehabilitation Chiropractor","Sports Physician Chiropractor","Thermography Chiropractor","Occupational Health Chiropractor","Orthopedic Chiropractor","Dentist","Public Health Dentist","Dentist Anesthesiologist","Endodontist","General Practice Dentistry","Oral and Maxillofacial Pathology Dentist","Pediatric Dentist","Periodontist","Prosthodontist","Oral and Maxillofacial Surgery (Dentist)","Oral and Maxillofacial Radiology Dentist","Orthodontics and Dentofacial Orthopedic Dentist","Orofacial Pain Dentist","Denturist","Dental Hygienist","Dental Therapist","Advanced Practice Dental Therapist","Oral Medicinist","Dental Assistant","Dental Laboratory Technician","Dietary Manager","Nutritionist","Nutrition Education Nutritionist","Registered Dietitian","Pediatric Nutrition Registered Dietitian","Renal Nutrition Registered Dietitian","Metabolic Nutrition Registered Dietitian","Gerontological Nutrition Registered Dietitian","Obesity and Weight Management Nutrition Registered Dietitian","Oncology Nutrition Registered Dietitian","Pediatric Critical Care Nutrition Registered Dietitian","Sports Dietetics Nutrition Registered Dietitian","Registered Dietetic Technician","Personal Emergency Response Attendant","Paramedic","Intermediate Emergency Medical Technician","Basic Emergency Medical Technician","Optometrist","Corneal and Contact Management Optometrist","Low Vision Rehabilitation Optometrist","Pediatric Optometrist","Sports Vision Optometrist","Vision Therapy Optometrist","Occupational Vision Optometrist","Technician/Technologist","Contact Lens Technician/Technologist","Contact Lens Fitter","Ophthalmic Technician/Technologist","Ophthalmic Assistant","Optometric Assistant Technician","Optometric Technician","Ocularist","Optician","Orthoptist","Registered Nurse","Addiction (Substance Use Disorder) Registered Nurse","Administrator Registered Nurse","Critical Care Medicine Registered Nurse","Case Management Registered Nurse","College Health Registered Nurse","Community Health Registered Nurse","Continuing Education/Staff Development Registered Nurse","Continence Care Registered Nurse","Cardiac Rehabilitation Registered Nurse","Diabetes Educator Registered Nurse","Peritoneal Dialysis Registered Nurse","Emergency Registered Nurse","Enterostomal Therapy Registered Nurse","Flight Registered Nurse","General Practice Registered Nurse","Gastroenterology Registered Nurse","Gerontology Registered Nurse","Home Health Registered Nurse","Hemodialysis Registered Nurse","Hospice Registered Nurse","Infusion Therapy Registered Nurse","Infection Control Registered Nurse","Lactation Consultant (Registered Nurse)","Maternal Newborn Registered Nurse","Medical-Surgical Registered Nurse","Nurse Massage Therapist (NMT)","Neonatal Intensive Care Registered Nurse","Low-Risk Neonatal Registered Nurse","Nephrology Registered Nurse","Neuroscience Registered Nurse","Nutrition Support Registered Nurse","Pain Management Registered Nurse","Pediatric Registered Nurse","Pediatric Oncology Registered Nurse","Child & Adolescent Psychiatric/Mental Health Registered Nurse","Psychiatric/Mental Health Registered Nurse","Adult Psychiatric/Mental Health Registered Nurse","Perinatal Registered Nurse","Ambulatory Care Registered Nurse","Registered Nurse First Assistant","Rehabilitation Registered Nurse","Reproductive Endocrinology/Infertility Registered Nurse","Plastic Surgery Registered Nurse","School Registered Nurse","Urology Registered Nurse","Wound Care Registered Nurse","Ambulatory Women's Health Care Registered Nurse","High-Risk Obstetric Registered Nurse","Inpatient Obstetric Registered Nurse","Occupational Health Registered Nurse","Oncology Registered Nurse","Otorhinolaryngology & Head-Neck Registered Nurse","Orthopedic Registered Nurse","Ophthalmic Registered Nurse","Ostomy Care Registered Nurse","Licensed Practical Nurse","Licensed Vocational Nurse","Licensed Psychiatric Technician","Ph.D. Medical Genetics","Genetic Counselor (M.S.)","Military Health Care Provider","Independent Duty Corpsman","Independent Duty Medical Technicians","Acupuncturist","Health & Wellness Coach","Case Manager/Care Coordinator","Interpreter","Contractor","Home Modifications Contractor","Vehicle Modifications Contractor","Driver","Mechanotherapist","Naprapath","Community Health Worker","Legal Medicine","Reflexologist","Sleep Specialist (PhD)","Meals Provider","Specialist","Graphics Designer","Prosthetics Case Management","Research Study Specialist","Research Study Abstracter/Coder","Health Educator","Veterinarian","Medical Research Veterinarian","Lactation Consultant (Non-RN)","Clinical Ethicist","Naturopath","Homeopath","Lay Midwife","Peer Specialist","Midwife","Funeral Director","Lodging Provider","Pharmacist","Critical Care Pharmacist","Deactivated - Pharmacist","Geriatric Pharmacist","Nuclear Pharmacist","Nutrition Support Pharmacist","Pharmacist Clinician (PhC)/ Clinical Pharmacy Specialist","Pediatric Pharmacist","Pharmacotherapy Pharmacist","Psychiatric Pharmacist","Ambulatory Care Pharmacist","Oncology Pharmacist","Pharmacy Technician","Multi-Specialty Group","Single Specialty Group","Independent Medical Examiner Physician","Integrative Medicine","Phlebology Physician","Sports Medicine (Neuromusculoskeletal Medicine) Physician","Neuromusculoskeletal Medicine & OMM Physician","Oral & Maxillofacial Surgery (D.M.D.)","Transplant Surgery Physician","Electrodiagnostic Medicine Physician","Allergy & Immunology Physician","Allergy Physician","Clinical & Laboratory Immunology (Allergy & Immunology) Physician","Anesthesiology Physician","Addiction Medicine (Anesthesiology) Physician","Critical Care Medicine (Anesthesiology) Physician","Hospice and Palliative Medicine (Anesthesiology) Physician","Pain Medicine (Anesthesiology) Physician","Pediatric Anesthesiology Physician","Dermatology Physician","MOHS-Micrographic Surgery Physician","Dermatopathology Physician","Clinical & Laboratory Dermatological Immunology Physician","Pediatric Dermatology Physician","Procedural Dermatology Physician","Emergency Medicine Physician","Emergency Medical Services (Emergency Medicine) Physician","Undersea and Hyperbaric Medicine (Emergency Medicine) Physician","Hospice and Palliative Medicine (Emergency Medicine) Physician","Pediatric Emergency Medicine (Emergency Medicine) Physician","Sports Medicine (Emergency Medicine) Physician","Medical Toxicology (Emergency Medicine) Physician","Family Medicine Physician","Adolescent Medicine (Family Medicine) Physician","Addiction Medicine (Family Medicine) Physician","Adult Medicine Physician","Obesity Medicine (Family Medicine) Physician","Geriatric Medicine (Family Medicine) Physician","Hospice and Palliative Medicine (Family Medicine) Physician","Sports Medicine (Family Medicine) Physician","Sleep Medicine (Family Medicine) Physician","Internal Medicine Physician","Adolescent Medicine (Internal Medicine) Physician","Advanced Heart Failure and Transplant Cardiology Physician","Adult Congenital Heart Disease Physician","Allergy & Immunology (Internal Medicine) Physician","Addiction Medicine (Internal Medicine) Physician","Obesity Medicine (Internal Medicine) Physician","Cardiovascular Disease Physician","Clinical Cardiac Electrophysiology Physician","Critical Care Medicine (Internal Medicine) Physician","Endocrinology, Diabetes & Metabolism Physician","Gastroenterology Physician","Geriatric Medicine (Internal Medicine) Physician","Hematology (Internal Medicine) Physician","Hospice and Palliative Medicine (Internal Medicine) Physician","Hematology & Oncology Physician","Hypertension Specialist Physician","Clinical & Laboratory Immunology (Internal Medicine) Physician","Hepatology Physician","Interventional Cardiology Physician","Infectious Disease Physician","Magnetic Resonance Imaging (MRI) Internal Medicine Physician","Nephrology Physician","Pulmonary Disease Physician","Rheumatology Physician","Sports Medicine (Internal Medicine) Physician","Sleep Medicine (Internal Medicine) Physician","Transplant Hepatology Physician","Medical Oncology Physician","Clinical Cytogenetics Physician","Clinical Genetics (M.D.) Physician","Clinical Biochemical Genetics Physician","Clinical Molecular Genetics Physician","Ph.D. Medical Genetics Physician","Molecular Genetic Pathology (Medical Genetics) Physician","Neurological Surgery Physician","Nuclear Medicine Physician","Nuclear Cardiology Physician","Nuclear Imaging & Therapy Physician","In Vivo & In Vitro Nuclear Medicine Physician","Obstetrics & Gynecology Physician","Obesity Medicine (Obstetrics & Gynecology) Physician","Critical Care Medicine (Obstetrics & Gynecology) Physician","Complex Family Planning","Reproductive Endocrinology Physician","Female Pelvic Medicine and Reconstructive Surgery (Obstetrics & Gynecology) Physician","Gynecology Physician","Hospice and Palliative Medicine (Obstetrics & Gynecology) Physician","Maternal & Fetal Medicine Physician","Obstetrics Physician","Gynecologic Oncology Physician","Ophthalmology Physician","Glaucoma Specialist (Ophthalmology) Physician","Retina Specialist (Ophthalmology) Physician","Uveitis and Ocular Inflammatory Disease (Ophthalmology) Physician","Neuro-ophthalmology Physician","Pediatric Ophthalmology and Strabismus Specialist Physician Physician","Cornea and External Diseases Specialist Physician","Ophthalmic Plastic and Reconstructive Surgery Physician","Orthopaedic Surgery Physician","Pediatric Orthopaedic Surgery Physician","Orthopaedic Hand Surgery Physician","Adult Reconstructive Orthopaedic Surgery Physician","Orthopaedic Surgery of the Spine Physician","Orthopaedic Foot and Ankle Surgery Physician","Sports Medicine (Orthopaedic Surgery) Physician","Orthopaedic Trauma Physician","Otolaryngology Physician","Pediatric Otolaryngology Physician","Sleep Medicine (Otolaryngology) Physician","Facial Plastic Surgery Physician","Plastic Surgery within the Head & Neck (Otolaryngology) Physician","Otolaryngic Allergy Physician","Otology & Neurotology Physician","Otolaryngology/Facial Plastic Surgery Physician","Blood Banking & Transfusion Medicine Physician","Clinical Pathology Physician","Clinical Informatics (Pathology) Physician","Cytopathology Physician","Dermatopathology (Pathology) Physician","Forensic Pathology Physician","Hematology (Pathology) Physician","Immunopathology Physician","Medical Microbiology Physician","Neuropathology Physician","Molecular Genetic Pathology (Pathology) Physician","Anatomic Pathology Physician","Anatomic Pathology & Clinical Pathology Physician","Chemical Pathology Physician","Clinical Pathology/Laboratory Medicine Physician","Pediatric Pathology Physician","Pediatrics Physician","Pediatric Adolescent Medicine Physician","Pediatric Obesity Medicine Physician","Child Abuse Pediatrics Physician","Pediatric Hospice and Palliative Medicine Physician","Pediatric Clinical & Laboratory Immunology Physician","Neonatal-Perinatal Medicine Physician","Developmental - Behavioral Pediatrics Physician","Pediatric Neurodevelopmental Disabilities Physician","Pediatric Allergy/Immunology Physician","Pediatric Cardiology Physician","Pediatric Critical Care Medicine Physician","Pediatric Emergency Medicine (Pediatrics) Physician","Pediatric Endocrinology Physician","Pediatric Gastroenterology Physician","Pediatric Hematology & Oncology Physician","Pediatric Infectious Diseases Physician","Pediatric Nephrology Physician","Pediatric Pulmonology Physician","Pediatric Rheumatology Physician","Pediatric Sports Medicine Physician","Pediatric Sleep Medicine Physician","Pediatric Medical Toxicology Physician","Pediatric Transplant Hepatology Physician","Physical Medicine & Rehabilitation Physician","Hospice and Palliative Medicine (Physical Medicine & Rehabilitation) Physician","Neuromuscular Medicine (Physical Medicine & Rehabilitation) Physician","Spinal Cord Injury Medicine Physician","Pediatric Rehabilitation Medicine Physician","Brain Injury Medicine (Physical Medicine & Rehabilitation) Physician","Pain Medicine (Physical Medicine & Rehabilitation) Physician","Sports Medicine (Physical Medicine & Rehabilitation) Physician","Plastic Surgery Physician","Plastic Surgery Within the Head and Neck (Plastic Surgery) Physician","Surgery of the Hand (Plastic Surgery) Physician","Aerospace Medicine Physician","Addiction Medicine (Preventive Medicine) Physician","Obesity Medicine (Preventive Medicine) Physician","Clinical Informatics Physician","Undersea and Hyperbaric Medicine (Preventive Medicine) Physician","Preventive Medicine/Occupational Environmental Medicine Physician","Public Health & General Preventive Medicine Physician","Sports Medicine (Preventive Medicine) Physician","Medical Toxicology (Preventive Medicine) Physician","Occupational Medicine Physician","Addiction Medicine (Psychiatry & Neurology) Physician","Neurocritical Care Physician","Obesity Medicine (Psychiatry & Neurology) Physician","Behavioral Neurology & Neuropsychiatry Physician","Diagnostic Neuroimaging (Psychiatry & Neurology) Physician","Epilepsy Physician","Forensic Psychiatry Physician","Hospice and Palliative Medicine (Psychiatry & Neurology) Physician","Neuromuscular Medicine (Psychiatry & Neurology) Physician","Neurology Physician","Neurology with Special Qualifications in Child Neurology Physician","Clinical Neurophysiology Physician","Neurodevelopmental Disabilities Physician Physician","Psychosomatic Medicine Physician","Brain Injury Medicine (Psychiatry & Neurology) Physician","Psychiatry Physician","Addiction Psychiatry Physician","Child & Adolescent Psychiatry Physician","Geriatric Psychiatry Physician","Pain Medicine (Psychiatry & Neurology) Physician","Sports Medicine (Psychiatry & Neurology) Physician","Sleep Medicine (Psychiatry & Neurology) Physician","Vascular Neurology Physician","Body Imaging Physician","Diagnostic Neuroimaging (Radiology) Physician","Hospice and Palliative Medicine (Radiology) Physician","Neuroradiology Physician","Nuclear Radiology Physician","Pediatric Radiology Physician","Radiation Oncology Physician","Diagnostic Radiology Physician","Therapeutic Radiology Physician","Vascular & Interventional Radiology Physician","Radiological Physics Physician","Diagnostic Ultrasound Physician","Surgery Physician","Hospice and Palliative Medicine (Surgery) Physician","Surgical Critical Care Physician","Surgery of the Hand (Surgery) Physician","Pediatric Surgery Physician","Plastic and Reconstructive Surgery Physician","Trauma Surgery Physician","Vascular Surgery Physician","Surgical Oncology Physician","Urology Physician","Female Pelvic Medicine and Reconstructive Surgery (Urology) Physician","Pediatric Urology Physician","Colon & Rectal Surgery Physician","General Practice Physician","Thoracic Surgery (Cardiothoracic Vascular Surgery) Physician","Hospitalist Physician","Clinical Pharmacology Physician","Pain Medicine Physician","Interventional Pain Medicine Physician","Legal Medicine (M.D./D.O.) Physician","Podiatric Assistant","Podiatrist","Deactivated - Podiatrist","Public Medicine Podiatrist","Primary Podiatric Medicine Podiatrist","Radiology Podiatrist","Sports Medicine Podiatrist","Foot & Ankle Surgery Podiatrist","Foot Surgery Podiatrist","Art Therapist","Developmental Therapist","Orthotist","Mastectomy Fitter","Pedorthist","Prosthetist","Clinical Exercise Physiologist","Occupational Therapy Assistant","Environmental Modification Occupational Therapy Assistant","Feeding, Eating & Swallowing Occupational Therapy Assistant","Low Vision Occupational Therapy Assistant","Driving and Community Mobility Occupational Therapy Assistant","Orthotic Fitter","Physical Therapist","Cardiopulmonary Physical Therapist","Ergonomics Physical Therapist","Clinical Electrophysiology Physical Therapist","Geriatric Physical Therapist","Hand Physical Therapist","Human Factors Physical Therapist","Neurology Physical Therapist","Pediatric Physical Therapist","Sports Physical Therapist","Orthopedic Physical Therapist","Physical Therapy Assistant","Rehabilitation Practitioner","Respiratory/Developmental/Rehabilitative Specialist/Technologist","Athletic Trainer","Blind Rehabilitation Specialist/Technologist","Dance Therapist","Massage Therapist","Recreation Therapist","Music Therapist","Pulmonary Function Technologist","Rehabilitation Counselor","Assistive Technology Practitioner Rehabilitation Counselor","Assistive Technology Supplier Rehabilitation Counselor","Orientation and Mobility Training Rehabilitation Counselor","Occupational Therapist","Environmental Modification Occupational Therapist","Ergonomics Occupational Therapist","Feeding, Eating & Swallowing Occupational Therapist","Gerontology Occupational Therapist","Hand Occupational Therapist","Human Factors Occupational Therapist","Low Vision Occupational Therapist","Mental Health Occupational Therapist","Neurorehabilitation Occupational Therapist","Physical Rehabilitation Occupational Therapist","Pediatric Occupational Therapist","Driving and Community Mobility Occupational Therapist","Recreational Therapist Assistant","Kinesiotherapist","Certified Respiratory Therapist","Critical Care Certified Respiratory Therapist","Emergency Care Certified Respiratory Therapist","Educational Certified Respiratory Therapist","Geriatric Care Certified Respiratory Therapist","General Care Certified Respiratory Therapist","Home Health Certified Respiratory Therapist","Pulmonary Diagnostics Certified Respiratory Therapist","Pulmonary Rehabilitation Certified Respiratory Therapist","Pulmonary Function Technologist Certified Respiratory Therapist","Palliative/Hospice Certified Respiratory Therapist","Neonatal/Pediatric Certified Respiratory Therapist","Patient Transport Certified Respiratory Therapist","SNF/Subacute Care Certified Respiratory Therapist","Registered Respiratory Therapist","Critical Care Registered Respiratory Therapist","Emergency Care Registered Respiratory Therapist","Educational Registered Respiratory Therapist","Geriatric Care Registered Respiratory Therapist","General Care Registered Respiratory Therapist","Home Health Registered Respiratory Therapist","Pulmonary Diagnostics Registered Respiratory Therapist","Pulmonary Rehabilitation Registered Respiratory Therapist","Pulmonary Function Technologist Registered Respiratory Therapist","Palliative/Hospice Registered Respiratory Therapist","Neonatal/Pediatric Registered Respiratory Therapist","Patient Transport Registered Respiratory Therapist","SNF/Subacute Care Registered Respiratory Therapist","Anaplastologist","Audiologist","Assistive Technology Practitioner Audiologist","Assistive Technology Supplier Audiologist","Speech/Language/Hearing Specialist/Technologist","Audiology Assistant","Speech-Language Assistant","Speech-Language Pathologist","Audiologist-Hearing Aid Fitter","Hearing Instrument Specialist","Perfusionist","Radiology Practitioner Assistant","Pathology Specialist/Technologist","Blood Banking Specialist/Technologist","Chemistry Pathology Specialist/Technologist","Cytotechnology Specialist/Technologist","Hematology Specialist/Technologist","Hemapheresis Practitioner","Histology Specialist/Technologist","Immunology Pathology Specialist/Technologist","Laboratory Management Specialist/Technologist","Diplomate Laboratory Management Specialist/Technologist","Medical Technologist","Microbiology Specialist/Technologist","Pathology Technician","Histology Technician","Medical Laboratory Technician","Phlebotomy Technician","Cardiology Technician","Cardiovascular Specialist/Technologist","Cardiovascular Invasive Specialist/Technologist","Vascular Specialist/Technologist","Sonography Specialist/Technologist","Health Information Specialist/Technologist","Hospital Based Coding Specialist","Physician Office Based Coding Specialist","Registered Record Administrator","Other Specialist/Technologist","Medical Art Specialist/Technologist","Biomedical Engineer","Biomedical Photographer","Biochemist","Biostatiscian","Surgical Assistant","EEG Specialist/Technologist","Electroneurodiagnostic Specialist/Technologist","Graphics Methods Specialist/Technologist","Medical Geneticist (PhD) Specialist/Technologist","Medical Illustrator","Nephrology Specialist/Technologist","Surgical Technologist","Orthopedic Assistant","Health Information Technician","Assistant Health Information Record Technician","Radiologic Technologist","Bone Densitometry Radiologic Technologist","Cardiovascular-Interventional Technology Radiologic Technologist","Cardiac-Interventional Technology Radiologic Technologist","Computed Tomography Radiologic Technologist","Radiography Radiologic Technologist","Magnetic Resonance Imaging Radiologic Technologist","Mammography Radiologic Technologist","Nuclear Medicine Technology Radiologic Technologist","Quality Management Radiologic Technologist","Radiation Therapy Radiologic Technologist","Sonography Radiologic Technologist","Vascular Sonography Radiologic Technologist","Vascular-Interventional Technology Radiologic Technologist","Other Technician","Biomedical Engineering Technician","Darkroom Technician","EEG Technician","Renal Dialysis Technician","Veterinary Technician","Clinical Laboratory Director (Non-physician)","Local Education Agency (LEA)","Case Management Agency","Developmentally Disabled Services Day Training Agency","Home Health Agency","Home Infusion Agency","Community Based Hospice Care Agency","Nursing Care Agency","Public Health or Welfare Agency","Community/Behavioral Health Agency","PACE Provider Organization","Voluntary or Charitable Agency","Supports Brokerage Agency","Early Intervention Provider Agency","Foster Care Agency","In Home Supportive Care Agency","Clinic/Center","Ambulatory Family Planning Facility","Ambulatory Fertility Facility","Adult Day Care Clinic/Center","Amputee Clinic/Center","Ambulatory Surgical Clinic/Center","Augmentative Communication Clinic/Center","Birthing Clinic/Center","Critical Access Hospital Clinic/Center","Community Health Clinic/Center","Corporate Health Clinic/Center","Dental Clinic/Center","Developmental Disabilities Clinic/Center","Emergency Care Clinic/Center","End-Stage Renal Disease (ESRD) Treatment Clinic/Center","Endoscopy Clinic/Center","Non-Surgical Family Planning Clinic/Center","Federally Qualified Health Center (FQHC)","Genetics Clinic/Center","Health Service Clinic/Center","Hearing and Speech Clinic/Center","Infusion Therapy Clinic/Center","Lithotripsy Clinic/Center","Mental Health Clinic/Center (Including Community Mental Health Center)","Adult Mental Health Clinic/Center","Adolescent and Children Mental Health Clinic/Center","Migrant Health Clinic/Center","Military/U.S. Coast Guard Outpatient Clinic/Center","Military and U.S. Coast Guard Ambulatory Procedure Clinic/Center","Military Outpatient Operational (Transportable) Component Clinic/Center","Military Ambulatory Procedure Visits Operational (Transportable) Clinic/Center","Magnetic Resonance Imaging (MRI) Clinic/Center","Multi-Specialty Clinic/Center","Medical Specialty Clinic/Center","Methadone Clinic","Medically Fragile Infants and Children Day Care","Federal Public Health Clinic/Center","State or Local Public Health Clinic/Center","Podiatric Clinic/Center","Physical Therapy Clinic/Center","Primary Care Clinic/Center","Prison Health Clinic/Center","Pain Clinic/Center","Radiology Clinic/Center","Mammography Clinic/Center","Mobile Mammography Clinic/Center","Mobile Radiology Clinic/Center","Rehabilitation Clinic/Center","Comprehensive Outpatient Rehabilitation Facility (CORF)","Cardiac Rehabilitation Clinic/Center","Substance Use Disorder Rehabilitation Clinic/Center","Recovery Care Clinic/Center","Research Clinic/Center","Rural Health Clinic/Center","Oral and Maxillofacial Surgery Clinic/Center","Ophthalmologic Surgery Clinic/Center","Student Health Clinic/Center","Sleep Disorder Diagnostic Clinic/Center","Urgent Care Clinic/Center","VA Clinic/Center","Occupational Medicine Clinic/Center","Oncology Clinic/Center","Radiation Oncology Clinic/Center","Epilepsy Hospital Unit","Psychiatric Hospital Unit","Rehabilitation Hospital Unit","Medicare Defined Swing Bed Hospital Unit","Substance Use Disorder Rehabilitation Hospital Unit","Chronic Disease Hospital","Children' s Chronic Disease Hospital","Long Term Care Hospital","Religious Nonmedical Health Care Institution","General Acute Care Hospital","Critical Access Hospital","Children's Hospital","Rural Acute Care Hospital","Women's Hospital","Psychiatric Hospital","Rehabilitation Hospital","Children's Rehabilitation Hospital","Special Hospital","Military Hospital","Deactivated - Military Hospital","Military General Acute Care Hospital","Operational (Transportable) Military General Acute Care Hospital","Deactivated - Christian Science Sanitorium","Military Clinical Medical Laboratory","Clinical Medical Laboratory","Dental Laboratory","Physiological Laboratory","Exclusive Provider Organization","Health Maintenance Organization","Preferred Provider Organization","Point of Service","Assisted Living Facility","Assisted Living Facility (Mental Illness)","Assisted Living Facility (Behavioral Disturbances)","Mental Illness Intermediate Care Facility","Alzheimer Center (Dementia Center)","Custodial Care Facility","Adult Care Home Facility","Nursing Facility/Intermediate Care Facility","Skilled Nursing Facility","Pediatric Skilled Nursing Facility","Inpatient Hospice","Intellectual Disabilities Intermediate Care Facility","Deactivated - Christian Science Facility","Intellectual and/or Developmental Disabilities Residential Treatment Facility","Physical Disabilities Residential Treatment Facility","Mental Illness Community Based Residential Treatment Facility","Intellectual and/or Developmental Disabilities Community Based Residential Treatment Facility","Emotionally Disturbed Childrens' Residential Treatment Facility","Psychiatric Residential Treatment Facility","Substance Abuse Rehabilitation Facility","Children's Substance Abuse Rehabilitation Facility","Blood Bank","Military/U.S. Coast Guard Pharmacy","Department of Veterans Affairs (VA) Pharmacy","Indian Health Service/Tribal/Urban Indian Health (I/T/U) Pharmacy","Non-Pharmacy Dispensing Site","Durable Medical Equipment & Medical Supplies","Customized Equipment (DME)","Dialysis Equipment & Supplies (DME)","Nursing Facility Supplies (DME)","Parenteral & Enteral Nutrition Supplies (DME)","Oxygen Equipment & Supplies (DME)","Eye Bank","Eyewear Supplier","Hearing Aid Equipment","Home Delivered Meals","Emergency Response System Companies","Pharmacy","Clinic Pharmacy","Community/Retail Pharmacy","Compounding Pharmacy","Home Infusion Therapy Pharmacy","Institutional Pharmacy","Long Term Care Pharmacy","Mail Order Pharmacy","Managed Care Organization Pharmacy","Nuclear Pharmacy","Specialty Pharmacy","Prosthetic/Orthotic Supplier","Medical Foods Supplier","Organ Procurement Organization","Portable X-ray and/or Other Portable Diagnostic Imaging Supplier","Ambulance","Air Ambulance","Land Ambulance","Water Ambulance","Military/U.S. Coast Guard Transport,","Military or U.S. Coast Guard Ground Transport Ambulance","Military or U.S. Coast Guard Air Transport Ambulance","Military or U.S. Coast Guard Water Transport Ambulance","Transportation Network Company","Secured Medical Transport (VAN)","Non-emergency Medical Transport (VAN)","Taxi","Air Carrier","Bus","Private Vehicle","Train","Transportation Broker","Physician Assistant","Medical Physician Assistant","Surgical Physician Assistant","Nurse Practitioner","Acute Care Nurse Practitioner","Adult Health Nurse Practitioner","Critical Care Medicine Nurse Practitioner","Community Health Nurse Practitioner","Family Nurse Practitioner","Gerontology Nurse Practitioner","Neonatal Nurse Practitioner","Critical Care Neonatal Nurse Practitioner","Pediatric Nurse Practitioner","Critical Care Pediatric Nurse Practitioner","Psychiatric/Mental Health Nurse Practitioner","Perinatal Nurse Practitioner","Primary Care Nurse Practitioner","School Nurse Practitioner","Women's Health Nurse Practitioner","Obstetrics & Gynecology Nurse Practitioner","Occupational Health Nurse Practitioner","Clinical Nurse Specialist","Acute Care Clinical Nurse Specialist","Adult Health Clinical Nurse Specialist","Critical Care Medicine Clinical Nurse Specialist","Community Health/Public Health Clinical Nurse Specialist","Chronic Care Clinical Nurse Specialist","Emergency Clinical Nurse Specialist","Ethics Clinical Nurse Specialist","Family Health Clinical Nurse Specialist","Gerontology Clinical Nurse Specialist","Home Health Clinical Nurse Specialist","Holistic Clinical Nurse Specialist","Informatics Clinical Nurse Specialist","Long-Term Care Clinical Nurse Specialist","Medical-Surgical Clinical Nurse Specialist","Neonatal Clinical Nurse Specialist","Neuroscience Clinical Nurse Specialist","Pediatric Clinical Nurse Specialist","Child & Adolescent Psychiatric/Mental Health Clinical Nurse Specialist","Psychiatric/Mental Health Clinical Nurse Specialist","Adult Psychiatric/Mental Health Clinical Nurse Specialist","Child & Family Psychiatric/Mental Health Clinical Nurse Specialist","Chronically Ill Psychiatric/Mental Health Clinical Nurse Specialist","Community Psychiatric/Mental Health Clinical Nurse Specialist","Geropsychiatric Psychiatric/Mental Health Clinical Nurse Specialist","Perinatal Clinical Nurse Specialist","Perioperative Clinical Nurse Specialist","Rehabilitation Clinical Nurse Specialist","School Clinical Nurse Specialist","Transplantation Clinical Nurse Specialist","Women's Health Clinical Nurse Specialist","Occupational Health Clinical Nurse Specialist","Oncology Clinical Nurse Specialist","Pediatric Oncology Clinical Nurse Specialist","Certified Registered Nurse Anesthetist","Advanced Practice Midwife","Anesthesiologist Assistant","Chore Provider","Adult Companion","Day Training/Habilitation Specialist","Technician","Attendant Care Provider","Personal Care Attendant","Doula","Religious Nonmedical Practitioner","Religious Nonmedical Nursing Personnel","Home Health Aide","Nursing Home Administrator","Homemaker","Nurse's Aide","Respite Care","Respite Care Camp","Child Mental Illness Respite Care","Child Intellectual and/or Developmental Disabilities Respite Care","Child Physical Disabilities Respite Care","Student in an Organized Health Care Education/Training Program","Prevention Professional"
    SpecialtyName = random.choice(SpecialtyName)
    GoverningBoard = iris.cls(__name__).GenerateST(ver,charSep)
    try:
        EligibleorCertified = TABLES["HL70337"][1]
    except:
        EligibleorCertified = "C","E"
    EligibleorCertified = random.choice(EligibleorCertified)
    DateofCertification = iris.cls(__name__).GenerateDT(ver,charSep)

    return f"{SpecialtyName}{CompSep}{GoverningBoard}{CompSep}{EligibleorCertified}{CompSep}{DateofCertification}"
}

/// Generate SPS
ClassMethod GenerateSPS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SPS Specimen Source
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    
    SpecimenSourceNameorCode = iris.cls(__name__).GenerateCWE(ver,charSep,SubCompSep)
    try:
        Additives = TABLES["HL70371"][1]
    except:
        Additives = "F10","C32","C38","HCL6","ACDA","ACDB","ACET","AMIES","HEPA","BACTM","BOR","BOUIN","BF10","WEST","BSKM","CARS","CARY","CHLTM","CTAD","ENT","ENT+","JKM","KARN","LIA","HEPL","M4","M4RT","M5","MICHTM","MMDTM","HNO3","NONE","PAGE","PHENOL","KOX","EDTK","EDTK15","EDTK75","PVA","RLM","SST","SILICA","NAF","FL100","FL10","NAPS","HEPN","EDTN","SPS","STUTM","THROM","FDP","THYMOL","THYO","TOLU","URETM","VIRTM"
    Additives = random.choice(Additives)
    SpecimenCollectionMethod = iris.cls(__name__).GenerateTX(ver,charSep)
    try:
        BodySite = TABLES["HL70163"][1]
    except:
        BodySite = "BE","OU","BN","BU","CT","LA","LAC","LACF","LD","LE","LEJ","OS","LF","LG","LH","LIJ","LLAQ","LLFA","LMFA","LN","LPC","LSC","LT","LUA","LUAQ","LUFA","LVG","LVL","NB","PA","PERIN","RA","RAC","RACF","RD","RE","REJ","OD","RF","RG","RH","RIJ","RLAQ","RLFA","RMFA","RN","RPC","RSC","RT","RUA","RUAQ","RUFA","RVL","RVG"
    BodySite = random.choice(BodySite)
    try:
        SiteModifier = TABLES["HL70495"][1]
    except:
        SiteModifier = "ANT","BIL","DIS","EXT","LAT","L","LOW","MED","POS","PRO","LLQ","LUQ","RLQ","RUQ","R","UPP"
    SiteModifier = random.choice(SiteModifier)
    CollectionMethodModifierCode = iris.cls(__name__).GenerateCWE(ver,charSep,SubCompSep)
    try:
        SpecimenRole = TABLES["HL70369"][1]
    except:
        SpecimenRole = "P","Q","C","E","B","F","G","R","L","O","V"
    SpecimenRole = random.choice(SpecimenRole)

    return f"{SpecimenSourceNameorCode}{CompSep}{Additives}{CompSep}{SpecimenCollectionMethod}{CompSep}{BodySite}{CompSep}{SiteModifier}{CompSep}{CollectionMethodModifierCode}{CompSep}{SpecimenRole}"
}

/// Generate SRT
ClassMethod GenerateSRT(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # SRT Sort Order
    # Example: In a tabular response query, where the return data is known by column name, the SRT might look like
    #    |LastName^A~FirstName^A|
    # Example: In a segment response query, where the return data is known by segment and offset, the SRT field would use segment field name notation,
    #   |PID.3.1^A~PID.3.2|
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}

    # Get the Component separator
    CompSep = charSep[1:2]
    SortbyField = "LastName","FirstName","DOB","PID.3.1","PID.3.2"
    SortbyField = random.choice(SortbyField)
    try:
        Sequencing = TABLES["HL70397"][1]
    except:
        Sequencing = "A","AN","D","DN","N"
    Sequencing = random.choice(Sequencing)

    return f"{SortbyField}{CompSep}{Sequencing}"
}

/// Generate String
ClassMethod GenerateST(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # ST string data - An Elementary Data Type
    import random,string
    return ''.join(random.choices(string.ascii_uppercase + string.digits, k=8))  # Random alphanumeric string of length 8
}

/// Generate Time
ClassMethod GenerateTM(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # TM - Time, in the format HHMMSS.sss
    from datetime import datetime
    return datetime.now().strftime("%H%M%S")  # Current time in HHMMSS
}

/// Generate Telphone Number
ClassMethod GenerateTN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # TN telephone number - An Elementary Data Type
    from faker import Faker
    # Initialize Faker instance
    fake = Faker()
    return fake.phone_number()
}

/// Generate TQ
ClassMethod GenerateTQ(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # TQ Timing Quantity
    import iris,importlib, random
    from datetime import datetime, timedelta
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    Quantity = iris.cls(__name__).GenerateCQ(ver,charSep,SubCompSep)
    Interval = iris.cls(__name__).GenerateRI(ver,charSep,SubCompSep)
    Duration = iris.cls(__name__).GenerateST(ver,charSep)

    # Using current time
    ini_time_for_now = datetime.now()
    
    if ver < "2.6":
        StartDateTime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        EndDateTime = ini_time_for_now + timedelta(days = 30)
        EndDateTime = EndDateTime.strftime("%Y%m%d%H%M%S")
    else:
        StartDateTime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        EndDateTime = ini_time_for_now + timedelta(days = 30)
        EndDateTime = EndDateTime.strftime("%Y%m%d%H%M%S")

    Priority = iris.cls(__name__).GenerateST(ver,charSep)
    Condition = iris.cls(__name__).GenerateST(ver,charSep)
    Text = iris.cls(__name__).GenerateTX(ver,charSep)
    try:
        Conjunction = TABLES["HL0472"][1]
    except:
        Conjunction = "S","A","C"
    Conjunction = random.choice(Conjunction)
    OrderSequencing = iris.cls(__name__).GenerateOSD(ver,charSep,SubCompSep)
    if ver < "2.6":
        OccurrenceDuration = iris.cls(__name__).GenerateCE(ver,charSep,SubCompSep)
    else:
        OccurrenceDuration = iris.cls(__name__).GenerateCWE(ver,charSep,SubCompSep)
    TotalOccurrences = iris.cls(__name__).GenerateNM(ver,charSep)

    return f"{Quantity}{CompSep}{Interval}{CompSep}{Duration}{CompSep}{StartDateTime}{CompSep}{EndDateTime}{CompSep}{Priority}{CompSep}{Condition}{CompSep}{Text}{CompSep}{Conjunction}{CompSep}{OrderSequencing}{CompSep}{OccurrenceDuration}{TotalOccurrences}"
}

/// Generate Time Stamp
ClassMethod GenerateTS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # TS Time Stamp
    # YYYYMMDD[HHMM[SS[.SSSS]]][+/-ZZZZ]^<degree of precision>  
    from datetime import datetime
    return datetime.now().strftime('%Y%m%d%H%M%S')
}

/// Generate Text Data
ClassMethod GenerateTX(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # TX text data - An Elementary Data Type
    from faker import Faker
    from faker.providers import lorem
    # Initialize Faker instance
    fake = Faker()
    return fake.paragraph(nb_sentences=1)
}

/// Generate TX_CHALLENGE
ClassMethod GenerateTXCHALLENGE(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # TX text data - An Elementary Data Type
    from faker import Faker
    from faker.providers import lorem
    # Initialize Faker instance
    fake = Faker()
    return fake.paragraph(nb_sentences=1)
}

/// Generate UVC
ClassMethod GenerateUVC(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # UVC UB Value Code and Amount
    # Definition: A code structure to relate amounts or values to identified data elements necessary to process this claim as qualified by the payer organization.
    # Example:
    # |01&most common semi private rate&NUBC^750&USD|
    import iris,importlib, random
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    if ver < "2.5":
        ValueCode = iris.cls(__name__).GenerateIS(ver,charSep)
    elif ver < "2.7":
        ValueCode = iris.cls(__name__).GenerateCNE(ver,charSep,SubCompSep)
    else:
        ValueCode = iris.cls(__name__).GenerateCWE(ver,charSep,SubCompSep)
    if ver < "2.5":
        ValueAmount = iris.cls(__name__).GenerateNM(ver,charSep)
    else:
        ValueAmount = iris.cls(__name__).GenerateMO(ver,charSep)
    if ver < "2.7":
        return f"{ValueCode}{CompSep}{ValueAmount}"
    else:
        NonMonetaryValueAmountQuanti = iris.cls(__name__).GenerateNM(ver,charSep)
        NonMonetaryValueAmountUnits = iris.cls(__name__).GenerateCWE(ver,charSep)
        return f"{ValueCode}{CompSep}{ValueAmount}{CompSep}{NonMonetaryValueAmountQuanti}{CompSep}{NonMonetaryValueAmountUnits}"
}

/// Generate VH
ClassMethod GenerateVH(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # VH Visiting Hours
    import iris,importlib, random
    import hl7apy as cr

    # Get the Component separator
    CompSep = charSep[1:2]
    StartDayRange = "SAT","SUN","MON","TUE","WED","THU","FRI"
    StartDayRange = random.choice(StartDayRange)
    EndDayRange = "SAT","SUN","MON","TUE","WED","THU","FRI"

    index = EndDayRange.index(StartDayRange)
    if index <= 4:
        index = index + 2
    EndDayRange = EndDayRange[index]
    StartHourRange = iris.cls(__name__).GenerateTM(ver,charSep)
    EndHourRange = iris.cls(__name__).GenerateTM(ver,charSep)
    return f"{StartDayRange}{CompSep}{EndDayRange}{CompSep}{StartHourRange}{CompSep}{EndHourRange}"
}

/// Generate VID
ClassMethod GenerateVID(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # VID Version Identifier
    import iris
    from faker import Faker
 
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    VersionID = ver
    InternationalizationCode = fake.country_code('alpha-3')
    InternationalVersionID = iris.cls(__name__).GenerateCNE(ver,charSep)
    return f"{VersionID}{CompSep}{InternationalizationCode}{CompSep}{InternationalVersionID}"
}

/// Generate VR
ClassMethod GenerateVR(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    from faker import Faker
    from faker.providers import lorem
    # Get the Component separator
    CompSep = charSep[1:2] 
    # Initialize Faker instance
    fake = Faker()
    FirstDataCodeValue = fake.word()
    LastDataCodeValue = fake.word()

    return f"{FirstDataCodeValue}{CompSep}{LastDataCodeValue}"
}

/// Generate WVI datatype
ClassMethod GenerateWVI(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # WVI Channel Identifier
    import iris
    from faker import Faker
    from faker.providers import lorem
    # Get the Component separator
    CompSep = charSep[1:2] 
    # Initialize Faker instance
    fake = Faker()
    ChannelNumber = iris.cls(__name__).GenerateNM(ver = "2.5", charSep = "|^~\&")
    ChannelName = fake.word()
    return f"{ChannelNumber}{CompSep}{ChannelName}"
}

/// Generate Waveform Source datatype
ClassMethod GenerateWVS(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # WVS Waveform Source
    from faker import Faker
    from faker.providers import lorem
    # Get the Component separator
    CompSep = charSep[1:2] 
    # Initialize Faker instance
    fake = Faker()
    SourceOneName = fake.word()
    SourceTwoName = fake.word()
    return f"{SourceOneName}{CompSep}{SourceTwoName}"
}

/// Generate XAD
ClassMethod GenerateXAD(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # XAD Extended Address
    import iris,random
    from datetime import datetime, timedelta
    from faker import Faker
    from faker.providers import lorem
    # Initialize Faker instance
    fake = Faker('en_us')
    # Get the Component separator
    CompSep = charSep[1:2] 
    SubCompSep = charSep[4:5]
    # Build the example Datatype
    # address = fake.address()
    fstreetaddress = fake.street_address()
    fcity = fake.city()
    fstate = fake.state() 
    fpostcode = fake.postcode()

    ############################
    StreetAddress = fstreetaddress
    OtherDesignation = "A1"
    City = fcity
    StateorProvince = fstate
    ZiporPostalCode = fpostcode
    Country = fake.country_code('alpha-3')
    #
    try:
        AT = TABLES["HL70190"][1]
    except:
        AT = "BA","BI","N","BDL","F","C","B","H","L","M","O","P","RH","BR","S","SH","TM","V"
    AddressType = random.choice(AT)
    OtherGeographicDesignation = fake.current_country()
    CountyParishCode = Country
    # Census Tract number(.number) https://www.census.gov/geographies/reference-maps/2020/geo/2020pl-maps/2020-census-tract.html
    CensusTract = iris.cls(__name__).GenerateIS(ver,charSep)
    # AddressRepresentationCode logic
    try:
        AddressRepresentationCode = TABLES["HL70465"][1]
    except:
        AddressRepresentationCode = "I","A","P"
    AddressRepresentationCode = random.choice(AddressRepresentationCode)

    AddressValidityRange = iris.cls(__name__).GenerateDR(ver,charSep,SubCompSep)
    EffectiveDate = iris.cls(__name__).GenerateIS(ver,charSep)
    ExpirationDate = iris.cls(__name__).GenerateIS(ver,charSep)


    # Using current time
    ini_time_for_now = datetime.now()
    
    if ver < "2.6":
        EffectiveDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        ExpirationDate = ini_time_for_now + timedelta(days = 30)
        ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")
    else:
        EffectiveDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        ExpirationDate = ini_time_for_now + timedelta(days = 30)
        ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")

    if ver < "2.6":
        return f"{StreetAddress}{CompSep}{OtherDesignation}{CompSep}{City}{CompSep}{StateorProvince}{CompSep}{ZiporPostalCode}{CompSep}{Country}{CompSep}{AddressType}{CompSep}{OtherGeographicDesignation}{CompSep}{CountyParishCode}{CompSep}{CensusTract}{CompSep}{AddressRepresentationCode}{CompSep}{AddressValidityRange}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}"
    else:
        try:
            ExpirationReason = TABLES["HL70616"][1]
        except:
            ExpirationReason = "Y","N"
        ExpirationReason = random.choice(ExpirationReason)
        try:
            TemporaryIndicator = TABLES["HL70136"][1]
        except:
            TemporaryIndicator = "Y","N"
        TemporaryIndicator = random.choice(TemporaryIndicator)
        try:
            BadAddressIndicator = TABLES["HL70136"][1]
        except:
            BadAddressIndicator = "Y","N"
        BadAddressIndicator = random.choice(BadAddressIndicator)
        try:
            AddressUsage = TABLES["HL70617"][1]
        except:
            AddressUsage = "M","V","C"
        AddressUsage = random.choice(AddressUsage)
        Addressee = iris.cls(__name__).GenerateST(ver,charSep)
        Comment = iris.cls(__name__).GenerateST(ver,charSep)
        PreferenceOrder = iris.cls(__name__).GenerateNM(ver,charSep)
        try:
            ProtectionCode = TABLES["HL70618"][1]
        except:
            ProtectionCode = "LI","UL","UP"
        ProtectionCode = random.choice(ProtectionCode)
        AddressIdentifier = iris.cls(__name__).GenerateEI(ver,charSep)

        return f"{StreetAddress}{CompSep}{OtherDesignation}{CompSep}{City}{CompSep}{StateorProvince}{CompSep}{ZiporPostalCode}{CompSep}{Country}{CompSep}{AddressType}{CompSep}{OtherGeographicDesignation}{CompSep}{CountyParishCode}{CompSep}{CensusTract}{CompSep}{AddressRepresentationCode}{CompSep}{AddressValidityRange}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ExpirationReason}{CompSep}{TemporaryIndicator}{CompSep}{BadAddressIndicator}{CompSep}{AddressUsage}{CompSep}{Addressee}{CompSep}{Comment}{CompSep}{PreferenceOrder}{CompSep}{ProtectionCode}{CompSep}{AddressIdentifier}"
}

/// Generate XCN
ClassMethod GenerateXCN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # XCN Extended Composite ID Number and Name for Persons
    import iris,textwrap,random,importlib,string
    from faker import Faker
    from faker.providers import internet,misc,geo
    from datetime import datetime
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    PersonIdentifier = random.randint(100000000000000, 999999999999999)
    FamilyName = fake.last_name()
    GivenName = fake.first_name()
    SecondandFurtherGivenNamesor =  fake.first_name()
    Suffix = fake.suffix()
    Prefix = fake.prefix()
    try:
        Degree = TABLES["HL70360"][1]
    except:    
        Degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    Degree = random.choice(Degree)
    SourceTable = fake.pystr()[:4]
    try:
        AssigningAuthority = TABLES["HL70363"][1]
        if AssigningAuthority == ():
            AssigningAuthority = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    except:
        AssigningAuthority = "AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"
    AssigningAuthority = random.choice(AssigningAuthority)
    # NameTypeCode logic
    try:
        NameTypeCode = TABLES["HL70200"][1]
    except:
        NameTypeCode = "A","B","C","D","I","L","M","N","P","R","S","T","U"
    NameTypeCode = random.choice(NameTypeCode)
    IdentifierCheckDigit = iris.cls(__name__).GenerateST(ver,CompSep)
    # Check Digit Scheme logic
    try:
        CheckDigitScheme = TABLES["HL70061"][1]
    except:
        CheckDigitScheme = "NPI","ISO","M10","M11"
    CheckDigitScheme = random.choice(CheckDigitScheme)
    # IdentifierTypeCode logic
    try:
        IdentifierTypeCode = TABLES["HL70203"][1]
    except:
        IdentifierTypeCode = "AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"
    IdentifierTypeCode = random.choice(IdentifierTypeCode)
    AssigningFacility  = iris.cls(__name__).GenerateHD(ver,CompSep)
    # NameRepresentationCode logic
    try:
        NameRepresentationCode = TABLES["HL70465"][1]
    except:
        NameRepresentationCode = "I","A","P"
    NameRepresentationCode = random.choice(NameRepresentationCode)
    NameContext = iris.cls(__name__).GenerateCE(ver,CompSep)
    NameValidityRange = iris.cls(__name__).GenerateDR(ver,CompSep,SubCompSep)
    # NameAssemblyOrder logic
    try:
        NameAssemblyOrder = TABLES["HL70444"][1]
    except:
        NameAssemblyOrder = "G","F"
    NameAssemblyOrder = random.choice(NameAssemblyOrder)
    EffectiveDate = iris.cls(__name__).GenerateTS(ver,CompSep)
    ExpirationDate = iris.cls(__name__).GenerateTS(ver,CompSep)
    ProfessionalSuffix = iris.cls(__name__).GenerateST(ver,CompSep)
    AssigningJurisdiction = iris.cls(__name__).GenerateCWE(ver,CompSep)
    AssigningAgencyorDepartment = iris.cls(__name__).GenerateCWE(ver,CompSep)
    if ver > "2.6":
        SecurityCheck = iris.cls(__name__).GenerateST(ver,CompSep)
        # SecurityCheckScheme Logic
        try:
            SecurityCheckScheme = TABLES["HL70904"][1]
        except:
            SecurityCheckScheme = "BCV","CCS","VID"
        SecurityCheckScheme = random.choice(SecurityCheckScheme)
    if ver < "2.5":
        return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}"
    elif ver < "2.7":
        return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}"
    else:
        return f"{PersonIdentifier}{CompSep}{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{SourceTable}{CompSep}{AssigningAuthority}{CompSep}{NameTypeCode}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{AssigningJurisdiction}{CompSep}{AssigningAgencyorDepartment}{CompSep}{SecurityCheck}{CompSep}{SecurityCheckScheme}"
}

/// Generate XON
ClassMethod GenerateXON(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # XON Extended Composite Name and Identification Number for Organizations
    import iris,importlib, random
    from faker import Faker
    fake = Faker()
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:  
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    # Get the Component separator
    CompSep = charSep[1:2]
    OrganizationName = fake.company()
    try:
        OrganizationNameTypeCode = TABLES["HL70204"][1]
    except:
        OrganizationNameTypeCode = "A","L","D","SL"
    OrganizationNameTypeCode = random.choice(OrganizationNameTypeCode)
    IDNumber = iris.cls(__name__).GenerateNM(ver,CompSep)
    IdentifierCheckDigit = iris.cls(__name__).GenerateNM(ver,CompSep)
    try:
        CheckDigitScheme = TABLES["HL70061"][1]
    except:
        CheckDigitScheme = "NPI","ISO","M10","M11"
    CheckDigitScheme = random.choice(CheckDigitScheme)
    AssigningAuthority = iris.cls(__name__).GenerateHD(ver,CompSep)
    # IdentifierTypeCode logic
    try:
        IdentifierTypeCode = TABLES["HL70203"][1]
    except:
        IdentifierTypeCode = "AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"
    IdentifierTypeCode = random.choice(IdentifierTypeCode)
    
    AssigningFacility = iris.cls(__name__).GenerateHD(ver,CompSep)
    # NameRepresentationCode logic
    try:
        NameRepresentationCode = TABLES["HL70465"][1]
    except:
        NameRepresentationCode = "I","A","P"
    NameRepresentationCode = random.choice(NameRepresentationCode)
    OrganizationIdentifier = iris.cls(__name__).GenerateST(ver,CompSep)

    if ver < "2.3":
        return f"{OrganizationName}{CompSep}{OrganizationNameTypeCode}{CompSep}{IDNumber}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}"
    elif ver < "2.5":
        return f"{OrganizationName}{CompSep}{OrganizationNameTypeCode}{CompSep}{IDNumber}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{NameRepresentationCode}"
    else:
        return f"{OrganizationName}{CompSep}{OrganizationNameTypeCode}{CompSep}{IDNumber}{CompSep}{IdentifierCheckDigit}{CompSep}{CheckDigitScheme}{CompSep}{AssigningAuthority}{CompSep}{IdentifierTypeCode}{CompSep}{AssigningFacility}{CompSep}{NameRepresentationCode}{CompSep}{OrganizationIdentifier}"
}

/// Generate XPN
ClassMethod GenerateXPN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # XPN Extended Person Name
    import iris,random,importlib,string
    from faker import Faker
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}    
    # Initialize Faker instance
    fake = Faker()
    # Get the Component separator
    CompSep = charSep[1:2]
    SubCompSep = charSep[4:5]
    FamilyName = fake.first_name()
    GivenName = fake.first_name()
    SecondandFurtherGivenNamesor =  fake.last_name()
    Suffix = fake.suffix()
    Prefix = fake.prefix()
    try:
        Degree = TABLES["HL70360"][1]
    except:    
        Degree = "AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"
    Degree = random.choice(Degree)
    # NameTypeCode logic
    try:
        NameTypeCode = TABLES["HL70200"][1]
    except:
        NameTypeCode = "A","B","C","D","I","L","M","N","P","R","S","T","U"
    NameTypeCode = random.choice(NameTypeCode)
    # NameRepresentationCode logic
    try:
        NameRepresentationCode = TABLES["HL70465"][1]
    except:
        NameRepresentationCode = "I","A","P"
    NameRepresentationCode = random.choice(NameRepresentationCode)
    NameContext = iris.cls(__name__).GenerateCE(ver,CompSep)
    NameValidityRange = iris.cls(__name__).GenerateDR(ver,charSep,SubCompSep)
    # NameAssemblyOrder logic
    try:
        NameAssemblyOrder = TABLES["HL70444"][1]
    except:
        NameAssemblyOrder = "G","F"
    NameAssemblyOrder = random.choice(NameAssemblyOrder)
    EffectiveDate = iris.cls(__name__).GenerateTS(ver,CompSep)
    ExpirationDate = iris.cls(__name__).GenerateTS(ver,CompSep)
    ProfessionalSuffix = iris.cls(__name__).GenerateST(ver,CompSep)
    CalledBy = iris.cls(__name__).GenerateST(ver,CompSep)
    if ver < "2.7":
        return f"{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{NameTypeCode}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}"
    else:
        return f"{FamilyName}{CompSep}{GivenName}{CompSep}{SecondandFurtherGivenNamesor}{CompSep}{Suffix}{CompSep}{Prefix}{CompSep}{Degree}{CompSep}{NameTypeCode}{CompSep}{NameRepresentationCode}{CompSep}{NameContext}{CompSep}{NameValidityRange}{CompSep}{NameAssemblyOrder}{CompSep}{EffectiveDate}{CompSep}{ExpirationDate}{CompSep}{ProfessionalSuffix}{CompSep}{CalledBy}"
}

/// Generate XTN
ClassMethod GenerateXTN(ver = "2.5", charSep = "|^~\&") [ Language = python ]
{
    # XTN Extended Telecommunication Number
    # Get the Component separator
    CompSep = charSep[1:2] 
    import iris,textwrap,random,importlib
    from faker import Faker
    from faker.providers import internet,misc,phone_number
    from datetime import datetime, timedelta
    import string
    import hl7apy as cr
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get tables reference
        try:
            TABLES = lib.tables.TABLES
        except:
            TABLES = {}
    ## use locale = en_US for code to work else rework code to support all forms
    fake = Faker('en_US')
    ## use basic_phone_number imported from faker.providers.phone_number for ease of coding else rework code to support all forms
    TelephoneNumber = fake.basic_phone_number()
    ##print(TelephoneNumber)
    try:
        TelecommunicationUseCode = TABLES["HL70201"][1]
    except:
        TelecommunicationUseCode = "PRN","ORN","WPN","VHN","ASN","EMR","NET","BPN","PRS"
    TelecommunicationUseCode = random.choice(TelecommunicationUseCode)
    try:
        TelecommunicationEquipmentTy = TABLES["HL70202"][1]
    except:
        TelecommunicationEquipmentTy = "PH","FX","MD","CP","SAT","BP","Internet","X.400","TDD","TTY"
    TelecommunicationEquipmentTy = random.choice(TelecommunicationEquipmentTy)

    CommunicationAddress = fake.ascii_safe_email()
    CountryCode = fake.country_calling_code()
    if TelephoneNumber.find(")") > 0:
        AreaCityCodeP1 = TelephoneNumber.split(")",2)[0]
        AreaCityCode = AreaCityCodeP1.replace("(","")
    elif TelephoneNumber.find("-") > 0:
        AreaCityCode = TelephoneNumber.split("-",2)[0]
    elif TelephoneNumber.find(".") > 0:
        AreaCityCode = TelephoneNumber.split(".",2)[0]
    else:
        AreaCityCode = TelephoneNumber[:3]
    ##print(AreaCityCode)
    if TelephoneNumber.find(")") > 0:
        LocalNumber = TelephoneNumber.split(")",2)[1]
    elif TelephoneNumber.find("-") > 2:
        LocalNumber = TelephoneNumber.split("-",1)[1]
    elif TelephoneNumber.find(".") > 0:
        LocalNumber = TelephoneNumber.split(".",2)[2]
    else:
        len_TelephoneNumber = len(TelephoneNumber)
        LocalNumber = ""
        for i in range(3,len_TelephoneNumber):
            LocalNumber += TelephoneNumber[i]
    ##print(LocalNumber)
    ## need to handle when included in Telephone
    Extension = iris.cls(__name__).GenerateNM(ver,charSep)
    AnyText = iris.cls(__name__).GenerateST(ver,charSep)
    ExtensionPrefix = iris.cls(__name__).GenerateNM(ver,charSep)
    SpeedDialCode = iris.cls(__name__).GenerateNM(ver,charSep)
    UnformattedTelephonenumber = TelephoneNumber

    
    # Using current time
    ini_time_for_now = datetime.now()

    EffectiveStartDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
    ExpirationDate = ini_time_for_now + timedelta(days = 30)
    try:
        ExpirationReason = TABLES["HL70868"][1]
    except:
        ExpirationReason = "M","E","R","C","N"
    ExpirationReason = random.choice(ExpirationReason)
    try:
        ProtectionCode = TABLES["HL70618"][1]
    except:
        ProtectionCode = "LI","UL","UP"
    ProtectionCode = random.choice(ProtectionCode)
    SharedTelecommunicationIdent  = iris.cls(__name__).GenerateEI(ver,CompSep)
    PreferenceOrder  = iris.cls(__name__).GenerateNM(ver,CompSep)
    if ver < "2.5":
        return f"{TelephoneNumber}{CompSep}{TelecommunicationUseCode}{CompSep}{TelecommunicationEquipmentTy}{CompSep}{CommunicationAddress}{CompSep}{CountryCode}{CompSep}{AreaCityCode}{CompSep}{LocalNumber}{CompSep}{Extension}{CompSep}{AnyText}"
    elif ver < "2.6":
        return f"{TelephoneNumber}{CompSep}{TelecommunicationUseCode}{CompSep}{TelecommunicationEquipmentTy}{CompSep}{CommunicationAddress}{CompSep}{CountryCode}{CompSep}{AreaCityCode}{CompSep}{LocalNumber}{CompSep}{Extension}{CompSep}{AnyText}{CompSep}{ExtensionPrefix}{CompSep}{SpeedDialCode}{CompSep}{UnformattedTelephonenumber}"
    else:
        return f"{TelephoneNumber}{CompSep}{TelecommunicationUseCode}{CompSep}{TelecommunicationEquipmentTy}{CompSep}{CommunicationAddress}{CompSep}{CountryCode}{CompSep}{AreaCityCode}{CompSep}{LocalNumber}{CompSep}{Extension}{CompSep}{AnyText}{CompSep}{ExtensionPrefix}{CompSep}{SpeedDialCode}{CompSep}{UnformattedTelephonenumber}{CompSep}{EffectiveStartDate}{CompSep}{ExpirationDate}{CompSep}{ExpirationReason}{CompSep}{ProtectionCode}{CompSep}{SharedTelecommunicationIdent}{CompSep}{PreferenceOrder}"
}

/// Get list of tables for version
ClassMethod GetListofTables(ver = "2.5") [ Language = python ]
{
import importlib, random
import hl7apy as cr
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
    if TABLES !=0:
        for x in TABLES:
            if int==0:
                thislist = x
                itera = itera + 1
            else:
                thislist = thislist +","+x
        list_string = thislist.split(",")
        unique_list = list(set(list_string))
        return unique_list
else:
    ##print("Version Not supported")
    return 0
}

/// Get list of tables for version
ClassMethod GetListandValuesofTables(ver = "2.5") [ Language = python ]
{
import importlib, random
import hl7apy as cr
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

/// Get list of datatypes for version
ClassMethod GetListofDataTypes(ver = "2.5") [ Language = python ]
{
import importlib, random
import hl7apy as cr
#Get HL7 version related library

if ver in cr.SUPPORTED_LIBRARIES:      
    message_with_descriptions = []
    module_name = cr.SUPPORTED_LIBRARIES[ver]
    lib = importlib.import_module(module_name)
    #get datatype reference
    try:
        Dtypes = lib.datatypes.DATATYPES_STRUCTS
    except:
        print ("Dtypes Errors")
        Dtypes = {}
    ##print(Dtypes)
    ##sorted_dict = dict(sorted(Dtypes.items(),key=lambda item: item[0], reverse=False))
    ##print(sorted_dict)
    itera = 0
    for x in Dtypes:
        if itera==0:
            thislist = x
            itera = itera + 1
        else:
            thislist = thislist +","+x

    list_string = thislist.split(",")
    unique_list = list(set(list_string))
    unique_list.sort(reverse=False)
    return unique_list
else:
    ##print("Version Not supported")
    return 0
}

/// Test One specific data type per version a number of times
ClassMethod TestOneDTPerVersionXtimes(ver = "2.5", datatype = "TS", numTimes = "1") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## Get List of Data Types in this version to check if entered Data type exists
    DTlist = iris.cls(__name__).GetListofDataTypes(ver)
    ## Check
    if datatype in DTlist:
        print("Data type is correct")
        for _ in range(int(numTimes)):
            sampleDT = iris.cls(__name__).GetTestVal(datatype,'',ver)
            print(f"datatype: {datatype} sampleDT: {sampleDT}")
    else:
        print(f"Data type is incorrect.  Try again using {DTlist}")
}

/// Test all Datatypes per version a number of times to make sure this code works in greater solution
ClassMethod TestAllDTsPerVersionXtimes(ver = "2.5", numTimes = "1") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## Get List of Data Types in this version to check if entered Data type exists
    DTlist = iris.cls(__name__).GetListofDataTypes(ver)
    print(DTlist)
    with open('DatatypesTest.txt','w') as file:
        file.write(str(DTlist))
        file.write("\n")

    for datatype in DTlist:
        print(datatype)
        with open('DatatypesTest.txt','a') as file:
            file.write(str(datatype))
            file.write("\n")
        for _ in range(int(numTimes)):
            sampleDT = iris.cls(__name__).GetTestVal(datatype,'',ver)
            print(f"datatype: {datatype} sampleDT: {sampleDT}")
            with open('DatatypesTest.txt','a') as file:
                file.write(str(sampleDT))
                file.write("\n")
}

/// Get all fields per ver
ClassMethod GetAllFieldsPerVer(ver = "2.5") [ Language = python ]
{
    import iris,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get segment reference
        try:
            FIELDS = lib.fields.FIELDS
        except:
            FIELDS = {}
        ##print(FIELDS)
        itera = 0
        for x in FIELDS:
            if itera==0:
                FIELDSlist = x
                itera = itera + 1
            else:
                FIELDSlist = FIELDSlist +","+x
        ##print(FIELDSlist)
        return FIELDSlist
}

/// Generate a field for a version
ClassMethod GenerateFieldPerVersion(ver = "2.5", field = "MSH_9") [ Language = python ]
{
    import iris
    import hl7apy as cr
    ##print(field)
    dictionary = cr.load_reference(field, "Field", ver)
    if dictionary[0] == "leaf":

        if (dictionary[2] != "varies") and (dictionary[2] !=None) and (dictionary[2] != "wd") and (dictionary[2] != "WD"):
            sample = iris.cls(__name__).GetTestVal(dictionary[2])
            ##print(sample)
            return sample

    elif dictionary[0] == "sequence":
        ##print(dictionary[2])
        sample = iris.cls(__name__).GetTestVal(dictionary[2])
        ##print(sample)
        return sample
}

/// Get all fields per ver
ClassMethod TestAllFieldsPerVer(ver = "2.5") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listoffields = iris.cls(__name__).GetAllFieldsPerVer(ver).split(separator)
    print(listoffields)
    with open('FieldTest.txt','w') as file:
        file.write(str(listoffields))
        file.write("\n")

    for field in listoffields:
        print(field)
        with open('FieldTest.txt','a') as file:
            file.write(str(field))
            file.write("\n")
        sample = iris.cls(__name__).GenerateFieldPerVersion(ver,field)
        print(f"field: {field} sample: {sample}")
        with open('FieldTest.txt','a') as file:
            file.write(str(sample))
            file.write("\n")
}

/// Get all fields per ver
ClassMethod TestOneFieldPerVersionXtimes(ver = "2.5", fieldname = "ABS_4", numTimes = "5") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## Get List of fields in this version to check if entered Field Name exists
    listoffields = iris.cls(__name__).GetAllFieldsPerVer(ver).split(separator)
    ## Check
    if fieldname in listoffields:
        print("Field name is correct")
        for _ in range(int(numTimes)):
            sampleField = iris.cls(__name__).GenerateFieldPerVersion(ver, fieldname)
            print(f"Field: {fieldname} sampleField: {sampleField}")

    else:
        print(f"Field name is incorrect.  Try again using {listoffields}")
}

/// Test all Fields per version a number of times to make sure this code works in greater solution
ClassMethod TestAllFieldsPerVersionXtimes(ver = "2.5", numTimes = "1") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listoffields = iris.cls(__name__).GetAllFieldsPerVer(ver).split(separator)
    print(listoffields)
    with open('FieldTest.txt','w') as file:
        file.write(str(listoffields))
        file.write("\n")

    for field in listoffields:
        print(field)
        with open('FieldTest.txt','a') as file:
            file.write(str(field))
            file.write("\n")
        for _ in range(int(numTimes)):
            sample = iris.cls(__name__).GenerateFieldPerVersion(ver,field)
            print(f"field: {field} sample: {sample}")
            with open('FieldTest.txt','a') as file:
                file.write(str(sample))
                file.write("\n")
}

/// Get a list of All Segments Per Version
ClassMethod GetAllSegmentsPerVersion(ver = "2.5") As %Status [ Language = python ]
{
    import iris,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get segment reference
        try:
            SEGMENTS = lib.segments.SEGMENTS
        except:
            SEGMENTS = {}
        #loop through SEGMENTS from hl7apy
        itera = 0
        for keys, values in SEGMENTS.items():
            ##print(keys)
            if itera == 0:
                SegmentList = keys
                itera = itera +1
            else:
                SegmentList = SegmentList + "," + keys
    return SegmentList
}

/// Generate Segment Sample Per Version
ClassMethod GenerateSegmentSamplePerVersion(ver = "2.5", segment = "ABS", charSep = "|^~\&", required = 1, repeat = 1, MSH9 = "") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    ## testing for integer
    if isinstance(required, str):
        try:
            required = int(required)
        except ValueError:
            print("failed")
    if isinstance(repeat, str):
        try:
            repeat = int(repeat)
        except ValueError:
            print("failed")
    # Get the field separator
    FieldSeparator = charSep[0:1]
    # Get the encoding characters
    EncodingCharacters = charSep[1:5]
    # Get the Component separator
    CompSep = charSep[1:2]
    if segment == "ANYHL7SEGMENT":
        segment = "NTE"
    dictionary = cr.load_reference(segment, "Segment", ver)

    segmentSample = segment
    if dictionary[0] == "sequence":
        for index, item in enumerate(dictionary):
            if item != "sequence":
                for index2, value2 in enumerate(item):
                    if value2[0] == "MSH_1":
                        segmentSample = segmentSample + FieldSeparator
                    elif value2[0] == "MSH_2":
                        segmentSample = segmentSample + EncodingCharacters
                    elif value2[0] == "MSH_9":
                        if MSH9=="ACK":
                            segmentSample = segmentSample + FieldSeparator + MSH9
                        else:
                            if ver<"2.3.1":
                                ## MSH9 is only two fields and uses the component separator
                                MSH9One = MSH9.split("_")[0]
                                MSH9Two = MSH9.split("_")[1]
                                segmentSample = segmentSample + FieldSeparator + MSH9One + CompSep + MSH9Two
                            else:
                                ## MSH9 is three fields and uses the component separator on first two
                                MSH9One = MSH9.split("_")[0]
                                MSH9Two = MSH9.split("_")[1]
                                segmentSample = segmentSample + FieldSeparator + MSH9One + CompSep + MSH9Two + CompSep + MSH9
                    elif value2[0] == "MSH_12":
                        segmentSample = segmentSample + FieldSeparator + ver
                    ## MSH handling above
                    else:
                        ##print(f"Index2: {index2},    Value2: {value2}")
                        ##print(value2[0])
                        ##print(f"Cardinality: {value2[2]}")
                        srequired = value2[2][0]
                        srepeat = value2[2][1]
                        ##Required flowchart
                        ## don't process if standard is optional and I want required
                        if srequired==0 and required==1:
                            segmentSample = segmentSample + FieldSeparator
                        ## process when required by standard or optional and I want optional
                        else:
                            ## for those being processed check for repeatability
                            ## if standard says segment is repeatable and I don't care then send 1 repeat of the segment
                            ## if standard says segment is not repeatable and I don't care or want 1 or more then only send 1 repeat of the segment
                            if (srepeat==-1 and repeat>=1):
                                ##print(f"repeat ")
                                repeatcounter=repeat
                                while repeatcounter >0:
                                    ##print("here")
                                    try:
                                        segmentfieldSample = iris.cls(__name__).GenerateFieldPerVersion(ver,value2[0])
                                    except:
                                        segmentfieldSample = ""
                                        ##print("failed")
                                    ##print(segmentfieldSample)

                                    segmentSample = segmentSample + FieldSeparator + str(segmentfieldSample)
                                    repeatcounter -=1
                            else:
                                ##print(f"1 repeat")
                                try:
                                    segmentfieldSample = iris.cls(__name__).GenerateFieldPerVersion(ver,value2[0])
                                except:
                                    segmentfieldSample = ""
                                ##print(segmentfieldSample)

                                segmentSample = segmentSample + FieldSeparator + str(segmentfieldSample)
                        
        segmentSample = segmentSample + "\r\n"
        return segmentSample
}

/// Test All Segments Per Version
ClassMethod TestAllSegmentsPerVersion(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listofsegments = iris.cls(__name__).GetAllSegmentsPerVersion(ver).split(separator)
    print(listofsegments)
    with open('SegmentTest.txt','w') as file:
        file.write(str(listofsegments))
        file.write("\n")

    for segment in listofsegments:
        print(segment)
        with open('SegmentTest.txt','a') as file:
            file.write(str(segment))
            file.write("\n")
        if segment=="MSH":
            sample = iris.cls(__name__).GenerateSegmentSamplePerVersion(ver,segment,charSep,required,repeat,"ADT_A19")
        else:
            sample = iris.cls(__name__).GenerateSegmentSamplePerVersion(ver,segment,charSep,required,repeat,"")
        print(f"segment: {segment} sample: {sample}")
        with open('SegmentTest.txt','a') as file:
            file.write(str(sample))
            file.write("\n")
}

/// Test One Segments Per Version x times
ClassMethod TestOneSegmentsPerVersionXtimes(ver = "2.5", segment = "EVN", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listofsegments = iris.cls(__name__).GetAllSegmentsPerVersion(ver).split(separator)
    if segment in listofsegments:
        print("Segment is correct")
        for _ in range(int(numTimes)):
            ## if MSH then need to send what is going in MSH:9
            if segment=="MSH":
                sample = iris.cls(__name__).GenerateSegmentSamplePerVersion(ver,segment,charSep,required,repeat,"ADT_A19")
            else:
                sample = iris.cls(__name__).GenerateSegmentSamplePerVersion(ver,segment,charSep,required,repeat,"")
            print(sample)
    else:
        print(f"Segment not found in this {ver}.  Try again using {listofsegments}")
}

/// Test All Segments Per Version x times
ClassMethod TestAllSegmentsPerVersionXtimes(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listofsegments = iris.cls(__name__).GetAllSegmentsPerVersion(ver).split(separator)
    print(listofsegments)
    filename = "SegmentTest_" + str(required) + "_" + str(repeat) + "_" + str(numTimes) + ".txt"
    print(filename)
    with open(filename,'w') as file:
        file.write(str(listofsegments))
        file.write("\n")

    for segment in listofsegments:
        with open(filename,'a') as file:
            file.write(str(segment))
            file.write("\n")
        for _ in range(int(numTimes)):
            ## if MSH then need to send what is going in MSH:9
            if segment=="MSH":
                sample = iris.cls(__name__).GenerateSegmentSamplePerVersion(ver,segment,charSep,required,repeat,"ADT_A19")
            else:
                sample = iris.cls(__name__).GenerateSegmentSamplePerVersion(ver,segment,charSep,required,repeat,"")
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n")
}

/// Get a list of All Groups Per Version
ClassMethod GetAllGroupsPerVersion(ver = "2.5") As %Status [ Language = python ]
{
    import iris,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get segment reference
        try:
            GROUPS = lib.groups.GROUPS
        except:
            GROUPS = {}
        #loop through Groups from hl7apy
        itera = 0
        for keys, values in GROUPS.items():
            ##print(keys)
            if itera == 0:
                GroupList = keys
                itera = itera +1
            else:
                GroupList = GroupList + "," + keys
    return GroupList
}

/// Generate Group Sample Per Version
ClassMethod GenerateGroupSamplePerVersion(ver = "2.5", Group = "ADT_A01_INSURANCE", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr

    ## testing for integer
    if isinstance(required, str):
        try:
            required = int(required)
        except ValueError:
            print("failed")
    if isinstance(repeat, str):
        try:
            repeat = int(repeat)
        except ValueError:
            print("failed")
    ## setup variable for iterating first time through
    itera = 0
    ## pull the library from the API
    dictionary = cr.load_reference(Group, "Group", ver)
    ## set groupSample to blank for the skip
    groupSample = ""
    ## loop through the items to get the cardinality and the type
    for index, item in enumerate(dictionary[1]):
        ## if it is a segment
        if item[3]=="SEG":
            ## if segment is MSH then send the group for MSH:9
            if item[0]=="MSH":
                MSH9 = Group
            else:
                MSH9 = ""
            
            ## Get the standards required or optional 1 is required 0 is optional
            srequired = item[2][0]
            ## Get the standards repeatable or not repeatable 1 is single -1 is 1 or more
            srepeat = item[2][1]
            ## if optional and I want only required then skip
            if srequired==0 and required==1:
                ##no segments required to return
                groupSample = groupSample
            ## if optional and I want optional then check repeat
            elif srequired==0 and required==0:
                ## if standard says 1 or more repeats and I want more than 1
                if srepeat==-1 and repeat>1:
                    ## set repeatcounter to what was sent to method
                    repeatcounter=repeat
                    ## loop through 
                    while repeatcounter >0:
                        ## get sample Segment
                        sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,MSH9))
                        ## if first time through then set groupSample to sample else append sample to groupSample
                        if itera == 0:
                            groupSample = sample
                            itera = itera + 1
                        else:
                            groupSample = groupSample + sample
                        repeatcounter -=1
                ## repeat one time
                else:
                    ## get sample Segment
                    sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,MSH9))
                    ## if first time through then set groupSample to sample else append sample to groupSample
                    if itera == 0:
                        groupSample = sample
                        itera = itera + 1
                    else:
                        groupSample = groupSample + sample
            ## if standard requires then handle it
            elif srequired==1:
                ## if standard says 1 or more repeats and I want more than 1
                if srepeat==-1 and repeat>1:
                    ## set repeatcounter to what was sent to method
                    repeatcounter=repeat
                    ## loop through 
                    while repeatcounter >0:
                        ## if first time through then set groupSample to sample else append sample to groupSample
                        sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,MSH9))
                        ## if first time through then set groupSample to sample else append sample to groupSample
                        if itera == 0:
                            groupSample = sample
                            itera = itera + 1
                        else:
                            groupSample = groupSample + sample
                        repeatcounter -=1
                else:
                    ## if first time through then set groupSample to sample else append sample to groupSample
                    sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,MSH9))
                    ## if first time through then set groupSample to sample else append sample to groupSample
                    if itera == 0:
                        groupSample = sample
                        itera = itera + 1
                    else:
                        groupSample = groupSample + sample
        ## if this is a group
        elif item[3]=="GRP":
            ## Get the standards required or optional 1 is required 0 is optional
            srequired = item[2][0]
            ## Get the standards repeatable or not repeatable 1 is single -1 is 1 or more
            srepeat = item[2][1]
            if srequired==0 and required==1:
                ## no groups required
                groupSample = groupSample
            ## if optional and I want only required then skip
            elif srequired==0 and required==0:
                ## is standard is multiple repeats and I want more than 1 then loop through all that I want.
                if srepeat==-1 and repeat>1:
                    ## set repeatcounter to what is passed to Method
                    repeatcounter=repeat
                    ## loop through
                    while repeatcounter >0:
                        ## get group sample
                        sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                        ## if first time through then set groupSample to sample else append sample to groupSample
                        if itera == 0:
                            groupSample = sample
                            itera = itera + 1
                        else:
                            groupSample = groupSample + sample
                        repeatcounter -=1
                ## else repeat only one time
                else:
                    ## get group sample
                    sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                    ## if first time through then set groupSample to sample else append sample to groupSample
                    if itera == 0:
                        groupSample = sample
                        itera = itera + 1
                    else:
                        groupSample = groupSample + sample
            ## if standard requires group then handle it
            elif srequired==1:
                ## is standard is multiple repeats and I want more than 1 then loop through all that I want.
                if srepeat==-1 and repeat>1:
                    ## set repeatcounter to what is passed to Method
                    repeatcounter=repeat
                    ## loop through
                    while repeatcounter >0:
                        ## get group sample
                        sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                        ## if first time through then set groupSample to sample else append sample to groupSample
                        if itera == 0:
                            groupSample = sample
                            itera = itera + 1
                        else:
                            groupSample = groupSample + sample
                        ## decrease repeatcounter
                        repeatcounter -=1
                ## repeat only 1 time
                else:
                    ## get group sample
                    sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                    ##print(f"Segment: {item[0]} Sample: {sample}")
                    if itera == 0:
                        groupSample = sample
                        itera = itera + 1
                    else:
                        groupSample = groupSample + sample
    return groupSample
}

/// Test All Groups Per Version
ClassMethod TestAllGroupsPerVersion(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## get a list of groups for the version
    listofgroups = iris.cls(__name__).GetAllGroupsPerVersion(ver).split(separator)
    print(listofgroups)

    for group in listofgroups:
        print(f"Group Name: {group}")
        sample = iris.cls(__name__).GenerateGroupSamplePerVersion(ver,group,charSep,required,repeat)
        print(f"group: {group} sample: {sample}")
}

/// Test One Group Per Version X times
ClassMethod TestOneGroupsPerVersionXtimes(ver = "2.5", Group = "ADT_A01_INSURANCE", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## get a list of groups for the version
    listofgroups = iris.cls(__name__).GetAllGroupsPerVersion(ver).split(separator)
    if Group in listofgroups:
        print("Group is correct")
        for _ in range(int(numTimes)):
            sample = iris.cls(__name__).GenerateGroupSamplePerVersion(ver,Group,charSep,required,repeat)
            print(f"Group: {Group} sample: {sample}")
    else:
        print(f"Group isn't in version.  Try again using {listofgroups}")
}

/// Test All Groups Per Version x times
ClassMethod TestAllGroupsPerVersionXtimes(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## get a list of groups for the version
    listofgroups = iris.cls(__name__).GetAllGroupsPerVersion(ver).split(separator)
    print(listofgroups)
    filename = "GroupTest_" + str(required) + "_" + str(repeat) + "_" + str(numTimes) + ".txt"
    print(filename)
    with open(filename,'w') as file:
        file.write(str(listofgroups))
        file.write("\n")

    for group in listofgroups:
        with open(filename,'a') as file:
            file.write(str(group))
            file.write("\n")
        for _ in range(int(numTimes)):
            sample = iris.cls(__name__).GenerateGroupSamplePerVersion(ver,group,charSep,required,repeat)
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n")
}

/// Get a list of All Messages Per Version
ClassMethod GetAllMessagessPerVersion(ver = "2.5") As %Status [ Language = python ]
{
    import iris,importlib
    import hl7apy as cr
    #Get HL7 version related library
    if ver in cr.SUPPORTED_LIBRARIES:      
        message_with_descriptions = []
        module_name = cr.SUPPORTED_LIBRARIES[ver]
        lib = importlib.import_module(module_name)
        #get segment reference
        try:
            MESSAGES = lib.MESSAGES
            message_types = list(MESSAGES.keys()) 
        except:
            MESSAGES = {}
        #loop through MESSAGES from hl7apy
        itera = 0
        for keys, values in MESSAGES.items():
            ##print(keys)
            if itera == 0:
                MESSAGESList = keys
                itera = itera +1
            else:
                MESSAGESList = MESSAGESList + "," + keys
    return MESSAGESList
}

/// Generate Message Sample Per Version
ClassMethod GenerateMessageSamplePerVersion(ver = "2.5", Message = "ADT_A01", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris, socket
    import hl7apy as cr
    from hl7apy.parser import parse_message

    ## testing for integer
    if isinstance(required, str):
        try:
            required = int(required)
        except ValueError:
            print("failed")
    if isinstance(repeat, str):
        try:
            repeat = int(repeat)
        except ValueError:
            print("failed")
    ## set variable for the first time through building the sample message
    itera = 0
    ## get the dictionary reference for the Message set for this version
    dictionary = cr.load_reference(Message, "Message", ver)
    ##print(f"dictionary {dictionary}")
    ##print(dictionary[0])
    ##print(dictionary[1][0][0])
    ##print(len(dictionary))
    ##with open('Message.txt', 'w') as file:
    ##    file.write(str(dictionary))
    for index, item in enumerate(dictionary[1]):
        ##print(f"Index: {index}, Item: {item}")
        ##print(item[0])
        ##print("here")
        ##print(item[3])
        if item[3]=="SEG":
            ##print(f"item[2]: {item[2]}")
            ##print(item[2][0])
            srequired = item[2][0]
            ##print(item[2][1])
            srepeat = item[2][1]
            if srequired==0 and required==0:
                ##print(f"all segments")
                if srepeat==-1 and repeat>1:
                    ##print(f"repeat ")
                    repeatcounter=repeat
                    while repeatcounter >0:
                        ##print("here")
                        sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,Message))                        
                        ##print(f"Segment: {item[0]} Sample: {sample}")
                        if itera == 0:
                            ##print(f"firsttime {item[0]}")
                            messageSample = sample
                            itera = itera + 1
                        else:
                            ##print(f"Secondtime {item[0]}")
                            messageSample = messageSample + sample
                        repeatcounter -=1
                else:
                    ##print(f"1 repeat")
                    sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,Message))
                    ##print(f"Segment: {item[0]} Sample: {sample}")
                    if itera == 0:
                        ##print(f"firsttime {item[0]}")
                        messageSample = sample
                        itera = itera + 1
                    else:
                        ##print(f"Secondtime {item[0]}")
                        messageSample = messageSample + sample
            elif srequired==1:
                ##print(f"only required by standard")
                if srepeat==-1 and repeat>1:
                    ##print(f"repeat ")
                    repeatcounter=repeat
                    while repeatcounter >0:
                        ##print("here")
                        sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,Message))
                        ##print(f"Segment: {item[0]} Sample: {sample}")
                        if itera == 0:
                            ##print(f"firsttime {item[0]}")
                            messageSample = sample
                            itera = itera + 1
                        else:
                            ##print(f"Secondtime {item[0]}")
                            messageSample = messageSample + sample
                        repeatcounter -=1
                else:
                    ##print(f"1 repeat")
                    sample = str(iris.cls(__name__).GenerateSegmentSamplePerVersion(ver, item[0], charSep,required,repeat,Message))
                    ##print(f"Segment: {item[0]} Sample: {sample}")
                    if itera == 0:
                        ##print(f"firsttime {item[0]}")
                        messageSample = sample
                        itera = itera + 1
                    else:
                        ##print(f"Secondtime {item[0]}")
                        messageSample = messageSample + sample

        elif item[3]=="GRP":
            ##print(item[2][0])
            srequired = item[2][0]
            ##print(item[2][1])
            srepeat = item[2][1]
            ##print(f"group group {item[0]}")
            if srequired==0 and required==0:
                ##print(f"all segments")
                if srepeat==-1 and repeat>1:
                    ##print(f"repeat ")
                    repeatcounter=repeat
                    while repeatcounter >0:
                        ##print("here")
                        sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                        ##print(f"Segment: {item[0]} Sample: {sample}")
                        if itera == 0:
                            ##print(f"firsttime {item[0]}")
                            messageSample = sample
                            itera = itera + 1
                        else:
                            ##print(f"Secondtime {item[0]}")
                            messageSample = messageSample + sample
                        repeatcounter -=1
                else:
                    ##print(f"1 repeat")
                    sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                    ##print(f"Segment: {item[0]} Sample: {sample}")
                    if itera == 0:
                        ##print(f"firsttime {item[0]}")
                        messageSample = sample
                        itera = itera + 1
                    else:
                        ##print(f"Secondtime {item[0]}")
                        messageSample = messageSample + sample
            elif srequired==1:
                ##print(f"only required by standard")
                if srepeat==-1 and repeat>1:
                    ##print(f"repeat ")
                    repeatcounter=repeat
                    while repeatcounter >0:
                        ##print("here")
                        sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                        ##print(f"Segment: {item[0]} Sample: {sample}")
                        if itera == 0:
                            ##print(f"firsttime {item[0]}")
                            messageSample = sample
                            itera = itera + 1
                        else:
                            ##print(f"Secondtime {item[0]}")
                            messageSample = messageSample + sample
                        repeatcounter -=1
                else:
                    ##print(f"1 repeat")
                    sample = str(iris.cls(__name__).GenerateGroupSamplePerVersion(ver, item[0], charSep, required, repeat))
                    ##print(f"Segment: {item[0]} Sample: {sample}")
                    if itera == 0:
                        ##print(f"firsttime {item[0]}")
                        messageSample = sample
                        itera = itera + 1
                    else:
                        ##print(f"Secondtime {item[0]}")
                        messageSample = messageSample + sample
        ##else:
            ##print("screwed")
    ##print(messageSample)
    new_string = messageSample.replace("\n","")
    ##print(new_string)
    message = parse_message(new_string)
    ##print(f"finalMessage: {messageSample}")
    ##print(f"message: {message}")
    er7message=message.to_er7()
    ##print(f"er7message: {er7message}")

    return messageSample
}

/// TestAllMessagesPerVersion
ClassMethod TestAllMessagesPerVersion(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    sc = "1"
    MessagesPerVersion = iris.cls(__name__).GetMessageTypes(ver)
    separator1 = "|"
    ReformattedMessages = MessagesPerVersion.split(separator1)
    print(ReformattedMessages)
    filename = "MessagesTest_" + str(required) + "_" + str(repeat) + ".txt"
    with open(filename,'w') as file:
        file.write(str(ReformattedMessages))
        file.write("\n")
    for x in ReformattedMessages:
        print(x)
        separator2 = "-"
        y = x.split(separator2)
        messageType = y[0]
        print(f"message subscript to look for: {messageType}")
        with open(filename,'a') as file:
            file.write(str(messageType))
            file.write("\n")
        sample = iris.cls(__name__).GenerateMessageSamplePerVersion(ver,messageType,charSep,required,repeat)
        print(sample)
        with open(filename,'a') as file:
            file.write(str(sample))
            file.write("\n\n")
    return sc
}

/// TestAllMessagesPerVersion X times
ClassMethod TestAllMessagesPerVersionXtimes(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    sc = "1"
    MessagesPerVersion = iris.cls(__name__).GetMessageTypes(ver)
    separator1 = "|"
    ReformattedMessages = MessagesPerVersion.split(separator1)
    print(ReformattedMessages)
    filename = "MessagesTest_" + str(required) + "_" + str(repeat) + ".txt"
    with open(filename,'w') as file:
        file.write(str(ReformattedMessages))
        file.write("\n")
    for x in ReformattedMessages:
        print(x)
        separator2 = "-"
        y = x.split(separator2)
        messageType = y[0]
        with open(filename,'a') as file:
            file.write(str(messageType))
            file.write("\n")
        for _ in range(int(numTimes)):
            sample = iris.cls(__name__).GenerateMessageSamplePerVersion(ver,messageType,charSep,required,repeat)
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n\n")
    print(filename)
    return sc
}

/// Test all messages for all versions
ClassMethod TestAllMessagesAllVersions() As %Status
{
    Set sc = $$$OK
    // do something
    set list = "2.1,2.2,2.3,2.3.1,2.4,2.5,2.5.1,2.6,2.7,2.8,2.8.1,2.8.2"
    set delimiter = ","
    set i = 1
    While $PIECE(list, delimiter, i)'="" {
        Set item = $PIECE(list, delimiter, i)
        Write item, !
        do ..TestAllMessagesPerVersion(item)
        Set i = i + 1
    }
        
    Return sc
}

/// Test Gen and Send
ClassMethod TestGenSend() As %Status [ Language = python ]
{
    import iris
    hl7message=iris.cls(__name__).GenerateMessageSamplePerVersion("2.5","ADT_A01","|^~\&",1,1)
    print(f"hl7message: {hl7message}")
    results=iris.cls(__name__).SendMessage(hl7message,"localhost","7878")
    print(f"result: {results}")
}

/// SendAllMessagesPerVersion X times
ClassMethod SendAllMessagesPerVersionXtimes(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1", host = "127.0.0.1", port = "7878") As %Status [ Language = python ]
{
    import iris
    sc = "1"
    MessagesPerVersion = iris.cls(__name__).GetMessageTypes(ver)
    separator1 = "|"
    ReformattedMessages = MessagesPerVersion.split(separator1)
    print(ReformattedMessages)
    filename = "MessagesTest_" + str(ver) +"_"+ str(required) + "_" + str(repeat) + ".txt"
    with open(filename,'w') as file:
        file.write(str(ReformattedMessages))
        file.write("\n")
    for x in ReformattedMessages:
        print(x)
        separator2 = "-"
        y = x.split(separator2)
        messageType = y[0]
        with open(filename,'a') as file:
            file.write(str(messageType))
            file.write("\n")
        for _ in range(int(numTimes)):
            sample = iris.cls(__name__).GenerateMessageSamplePerVersion(ver,messageType,charSep,required,repeat)
            print(f"sample: {sample}")
            results=iris.cls(__name__).SendMessage(sample,host,port)
            print(f"result: {results}")
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n\n")
    print(filename)
    return sc
}

}

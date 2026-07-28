Include Ensemble

Class dc.HL7v2Gen Extends %SwizzleObject
{

ClassMethod GetTestVal(dataType = "", table = "", ver = "2.5") [ Language = python ]
{
    """
    Method to generate HL7 data type based on data type used
    
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
    try:
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
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateAD(ver,charSep)
            case "AUI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateAUI(ver,charSep)
            case "BLG":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateBLG(ver,charSep)
            case "CCD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCCD(ver,charSep)
            case "CCP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCCP(ver,charSep)
            case "CD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCD(ver,charSep)
            case "CE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCE(ver,charSep)
            case "CF":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCF(ver,charSep)
            case "CK":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCK(ver,charSep)
            case "CK_ACCOUNT_NO":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCKACCOUNTNO(ver,charSep)
            case "CK_PAT_ID":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCKPATID(ver,charSep)
            case "CM":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCM(ver,charSep)
            case "CM_ABS_RANGE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMABSRANGE(ver,charSep)
            case "CM_AUI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMAUI(ver,charSep)
            case "CM_BATCH_TOTAL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMBATCHTOTAL(ver,charSep)
            case "CM_CCD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMCCD(ver,charSep)
            case "CM_CP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMCP(ver,charSep)
            case "CM_CSU":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMCSU(ver,charSep)
            case "CM_DDI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDDI(ver,charSep)
            case "CM_DIN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDIN(ver,charSep)
            case "CM_DLD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDLD(ver,charSep)
            case "CM_DLT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDLT(ver,charSep)
            case "CM_DTN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDTN(ver,charSep)
            case "CM_EIP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMEIP(ver,charSep)
            case "CM_ELD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMELD(ver,charSep)
            case "CM_ELECTRODE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMELECTRODE(ver,charSep)
            case "CM_FILLER":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMFILLER(ver,charSep)
            case "CM_FINANCE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMFINANCE(ver,charSep)
            case "CM_GROUP_ID":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMGROUPID(ver,charSep)
            case "CM_INTERNAL_LOCATION":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMINTERNALLOCATION(ver,charSep)
            case "CM_JOB_CODE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMJOBCODE(ver,charSep)
            case "CM_LA1":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMLA1(ver,charSep)
            case "CM_LICENSE_NO":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMLICENSENO(ver,charSep)
            case "CM_MDV":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMMDV(ver,charSep)
            case "CM_MOC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMMOC(ver,charSep)
            case "CM_MSG":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMMSG(ver,charSep)
            case "CM_NDL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMNDL(ver,charSep)
            case "CM_OCD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMOCD(ver,charSep)
            case "CM_OS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMOS(ver,charSep)
            case "CM_OSP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMOSP(ver,charSep)
            case "CM_PARENT_RESULT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPARENTRESULT(ver,charSep)
            case "CM_PAT_ID":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPATID(ver,charSep)
            case "CM_PAT_ID_0192":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPATID0192(ver,charSep)
            case "CM_PCF":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPCF(ver,charSep)
            case "CM_PEN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPEN(ver,charSep)
            case "CM_PI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPI(ver,charSep)
            case "CM_PIP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPIP(ver,charSep)
            case "CM_PLACER":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPLACER(ver,charSep)
            case "CM_PLN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPLN(ver,charSep)
            case "CM_POSITION":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPOSITION(ver,charSep)
            case "CM_PRACTITIONER":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPRACTITIONER(ver,charSep)
            case "CM_PRL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPRL(ver,charSep)
            case "CM_PTA":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPTA(ver,charSep)
            case "CM_RANGE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRANGE(ver,charSep)
            case "CM_RANGE_SIMPLE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRANGESIMPLE(ver,charSep)
            case "CM_RFR":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRFR(ver,charSep)
            case "CM_RI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRI(ver,charSep)
            case "CM_RMC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRMC(ver,charSep)
            case "CM_SPD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMSPD(ver,charSep)
            case "CM_SPS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMSPS(ver,charSep)
            case "CM_UVC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMUVC(ver,charSep)
            case "CM_VR":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMVR(ver,charSep)
            case "CM_WVI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMWVI(ver,charSep)
            case "CN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCN(ver,charSep)
            case "CN_PERSON":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNPERSON(ver,charSep)
            case "CN_PHYSICIAN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNPHYSICIAN(ver,charSep)
            case "CN_SIMPLE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNSIMPLE(ver,charSep)
            case "CNS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNS(ver,charSep)
            case "CNE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNE(ver,charSep)
            case "CNN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNN(ver,charSep)
            case "CP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCP(ver,charSep)
            case "CQ":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCQ(ver,charSep)
            case "CQ_QUANTITY":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCQQUANTITY(ver,charSep)
            case "CQ_SIMPLE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCQSIMPLE(ver,charSep)
            case "CSU":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCSU(ver,charSep)
            case "CWE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCWE(ver,charSep)
            case "CX":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCX(ver,charSep)
            case "DDI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDDI(ver,charSep)
            case "DIN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDIN(ver,charSep)
            case "DLD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDLD(ver,charSep)
            case "DLN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDLN(ver,charSep)
            case "DLT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDLT(ver,charSep)
            case "DR":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDR(ver,charSep)
            case "DR_SIMPLE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDRSIMPLE(ver,charSep)
            case "DT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDT(ver,charSep)
            case "DTM":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDTM(ver,charSep)
            case "DTN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDTN(ver,charSep)
            case "ED":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateED(ver,charSep)
            case "EI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateEI(ver,charSep)
            case "EIP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateEIP(ver,charSep)
            case "ELD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateELD(ver,charSep)
            case "ERL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateERL(ver,charSep)
            case "FC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateFC(ver,charSep)
            case "FN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateFN(ver,charSep)
            case "FT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateFT(ver,charSep)
            case "GTS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateGTS(ver,charSep)
            case "HD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateHD(ver,charSep)
            case "ICD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateICD(ver,charSep)
            case "ID":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateID(ver,charSep)
            case "IS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateIS(ver,charSep)
            case "JCC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateJCC(ver,charSep)
            case "LA1":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateLA1(ver,charSep)
            case "LA2":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateLA2(ver,charSep)
            case "MA":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMA(ver,charSep)
            case "MFI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMFI(ver,charSep)
            case "MO":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMO(ver,charSep)
            case "MOC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMOC(ver,charSep)
            case "MOP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMOP(ver,charSep)
            case "MSG":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMSG(ver,charSep)
            case "NA":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNA(ver,charSep)
            case "NDL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNDL(ver,charSep)
            case "NM":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNM(ver,charSep)
            case "NR":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNR(ver,charSep)
            case "OCD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOCD(ver,charSep)
            case "OG":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOG(ver,charSep)
            case "OSD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOSD(ver,charSep)
            case "OSP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOSP(ver,charSep)
            case "PCF":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePCF(ver,charSep)
            case "PI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePI(ver,charSep)
            case "PIP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePIP(ver,charSep)
            case "PL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePL(ver,charSep)
            case "PLN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePLN(ver,charSep)
            case "PN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePN(ver,charSep)
            case "PPN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePPN(ver,charSep)
            case "PRL":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePRL(ver,charSep)
            case "PT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePT(ver,charSep)
            case "PTA":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePTA(ver,charSep)
            case "QIP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateQIP(ver,charSep)
            case "QSC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateQSC(ver,charSep)
            case "RCD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRCD(ver,charSep)
            case "RFR":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRFR(ver,charSep)
            case "RI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRI(ver,charSep)
            case "RMC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRMC(ver,charSep)
            case "RP":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRP(ver,charSep)
            case "RPT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRPT(ver,charSep)
            case "SAD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSAD(ver,charSep)
            case "SCV":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSCV(ver,charSep)
            case "SI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSI(ver,charSep)
            case "SN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSN(ver,charSep)
            case "SNM":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSNM(ver,charSep)
            case "SPD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSPD(ver,charSep)
            case "SPS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSPS(ver,charSep)
            case "SRT":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSRT(ver,charSep)
            case "ST":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateST(ver,charSep)
            case "TM":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTM(ver,charSep)
            case "TN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTN(ver,charSep)
            case "TQ":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTQ(ver,charSep)
            case "TS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTS(ver,charSep)
            case "TX":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTX(ver,charSep)
            case "TX_CHALLENGE":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTXCHALLENGE(ver,charSep)
            case "UVC":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateUVC(ver,charSep)
            case "VH":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateVH(ver,charSep)
            case "VID":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateVID(ver,charSep)
            case "VR":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateVR(ver,charSep)        
            case "WVI":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateWVI(ver,charSep)
            case "WVS":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateWVS(ver,charSep)
            case "XAD":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXAD(ver,charSep)
            case "XCN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXCN(ver,charSep)
            case "XON":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXON(ver,charSep)
            case "XPN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXPN(ver,charSep)
            case "XTN":
                GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXTN(ver,charSep)
            case "_":
                ##print("No matching datatypes")
                GeneratedDataType = "A"
            
        return GeneratedDataType
    except RuntimeError as e:
        # Catches ObjectScript errors thrown by the IRIS engine
        print(f"Caught an InterSystems IRIS error: {e}")
        return None
    except Exception as e:
        print(f"Caught general exception: {e}")
        return None
}

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

// Funtion to return all the message types against the HL7 Version

ClassMethod GetMessageTypes(ver) [ Language = python ]
{
"""
    Function to return all the Message Types against HL7 version

    Parms
    ver: HL7 version in quotation marks
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
from datetime import datetime
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
         
    hl7_message = hl7_message + "   RETVAL"+ f"{datetime.now()} HL7 message sent successfully!"
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


/// Get list of tables for version
ClassMethod GetListofTables(ver = "2.5") [ Language = python ]
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

/// Get list of datatypes for version
ClassMethod GetListofDataTypes(ver = "2.5") [ Language = python ]
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

}

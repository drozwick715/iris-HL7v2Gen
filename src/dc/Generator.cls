///
/// Class of Methods to generate HL7 Data Types
/// 
Class dc.Generator Extends %SwizzleObject
{
    /// Method to Generate sample data from HL7 Tables
    ClassMethod GenerateASampleTableValue(hl7version = "2.5", tablenumber = "HL70001") [ Language = python ]
    {
        import iris, importlib, random
        import hl7apy as cr
        
        ## try to find the list of message types from the libraries
        if hl7version in cr.SUPPORTED_LIBRARIES:
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
        else:
            return
        lib = importlib.import_module(module_name)
    #    print(f"lib: {lib}")
        try:
            tables = lib.TABLES
        except Exception as e:
        #    print(e)
            return
    #    print(f"tables: {tables}")
        table_types = list(tables.keys())
    #    print(tables[tablenumber][1])
        if tablenumber in tables:
        #    print("here")
            tables_dataset=tables[tablenumber][1]
        #    print(tables_dataset)
        #    print(type(tables_dataset))
        #    print(random.choice(tables_dataset))
            if tables_dataset != ():
                sample_data=random.choice(tables_dataset)
            else:
                return
        else:
            return

        return sample_data



    }
    ClassMethod GenerateSampleDataType(hl7version = "2.5", dataType = "", fieldname = "", message = "") [ Language = python ]
    {
        """
        Method to Pick the function for generating the sample data type
        
        Parms
        dataType: Data Type
        fieldname: if needed for creating the field
        hl7version: HL7 Version
        
        """
        ###temporary####
        characterSeparators ="|^~\&"
        import iris
        import textwrap,random,importlib
        from faker import Faker
        import datetime,string    
        import hl7apy as cr
        #Get HL7 version related library
        #print(cr.SUPPORTED_LIBRARIES)
        #{'2.4': 'hl7apy.v2_4', '2.6': 'hl7apy.v2_6', '2.7': 'hl7apy.v2_7', '2.1': 'hl7apy.v2_1', '2.5': 'hl7apy.v2_5', '2.3.1': 'hl7apy.v2_3_1', '2.8.2': 'hl7apy.v2_8_2', '2.3': 'hl7apy.v2_3', '2.2': 'hl7apy.v2_2', '2.8': 'hl7apy.v2_8', '2.8.1': 'hl7apy.v2_8_1', '2.5.1': 'hl7apy.v2_5_1'}
        # Initialize Faker instance
        fake = Faker()
        try:
            match dataType:
                case "AD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateAD(hl7version,characterSeparators)
                case "AUI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateAUI(hl7version,characterSeparators)
                case "BLG":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateBLG(hl7version,characterSeparators)
                case "CCD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCCD(hl7version,characterSeparators)
                case "CCP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCCP(hl7version,characterSeparators)
                case "CD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCD(hl7version,characterSeparators)
                case "CE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCE(hl7version,characterSeparators)
                case "CF":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCF(hl7version,characterSeparators)
                case "CK":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCK(hl7version,characterSeparators)
                case "CK_ACCOUNT_NO":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCKACCOUNTNO(hl7version,characterSeparators)
                case "CK_PAT_ID":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCKPATID(hl7version,characterSeparators)
                case "CM":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCM(hl7version,characterSeparators)
                case "CM_ABS_RANGE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMABSRANGE(hl7version,characterSeparators)
                case "CM_AUI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMAUI(hl7version,characterSeparators)
                case "CM_BATCH_TOTAL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMBATCHTOTAL(hl7version,characterSeparators)
                case "CM_CCD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMCCD(hl7version,characterSeparators)
                case "CM_CP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMCP(hl7version,characterSeparators)
                case "CM_CSU":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMCSU(hl7version,characterSeparators)
                case "CM_DDI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDDI(hl7version,characterSeparators)
                case "CM_DIN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDIN(hl7version,characterSeparators)
                case "CM_DLD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDLD(hl7version,characterSeparators)
                case "CM_DLT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDLT(hl7version,characterSeparators)
                case "CM_DTN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMDTN(hl7version,characterSeparators)
                case "CM_EIP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMEIP(hl7version,characterSeparators)
                case "CM_ELD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMELD(hl7version,characterSeparators)
                case "CM_ELECTRODE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMELECTRODE(hl7version,characterSeparators)
                case "CM_FILLER":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMFILLER(hl7version,characterSeparators)
                case "CM_FINANCE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMFINANCE(hl7version,characterSeparators)
                case "CM_GROUP_ID":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMGROUPID(hl7version,characterSeparators)
                case "CM_INTERNAL_LOCATION":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMINTERNALLOCATION(hl7version,characterSeparators)
                case "CM_JOB_CODE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMJOBCODE(hl7version,characterSeparators)
                case "CM_LA1":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMLA1(hl7version,characterSeparators)
                case "CM_LICENSE_NO":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMLICENSENO(hl7version,characterSeparators)
                case "CM_MDV":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMMDV(hl7version,characterSeparators)
                case "CM_MOC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMMOC(hl7version,characterSeparators)
                case "CM_MSG":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMMSG(hl7version,characterSeparators,message)
                case "CM_NDL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMNDL(hl7version,characterSeparators)
                case "CM_OCD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMOCD(hl7version,characterSeparators)
                case "CM_OS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMOS(hl7version,characterSeparators)
                case "CM_OSP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMOSP(hl7version,characterSeparators)
                case "CM_PARENT_RESULT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPARENTRESULT(hl7version,characterSeparators)
                case "CM_PAT_ID":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPATID(hl7version,characterSeparators)
                case "CM_PAT_ID_0192":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPATID0192(hl7version,characterSeparators)
                case "CM_PCF":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPCF(hl7version,characterSeparators)
                case "CM_PEN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPEN(hl7version,characterSeparators)
                case "CM_PI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPI(hl7version,characterSeparators)
                case "CM_PIP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPIP(hl7version,characterSeparators)
                case "CM_PLACER":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPLACER(hl7version,characterSeparators)
                case "CM_PLN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPLN(hl7version,characterSeparators)
                case "CM_POSITION":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPOSITION(hl7version,characterSeparators)
                case "CM_PRACTITIONER":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPRACTITIONER(hl7version,characterSeparators)
                case "CM_PRL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPRL(hl7version,characterSeparators)
                case "CM_PTA":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMPTA(hl7version,characterSeparators)
                case "CM_RANGE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRANGE(hl7version,characterSeparators)
                case "CM_RANGE_SIMPLE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRANGESIMPLE(hl7version,characterSeparators)
                case "CM_RFR":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRFR(hl7version,characterSeparators)
                case "CM_RI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRI(hl7version,characterSeparators)
                case "CM_RMC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMRMC(hl7version,characterSeparators)
                case "CM_SPD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMSPD(hl7version,characterSeparators)
                case "CM_SPS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMSPS(hl7version,characterSeparators)
                case "CM_UVC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMUVC(hl7version,characterSeparators)
                case "CM_VR":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMVR(hl7version,characterSeparators)
                case "CM_WVI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCMWVI(hl7version,characterSeparators)
                case "CN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCN(hl7version,characterSeparators)
                case "CN_PERSON":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNPERSON(hl7version,characterSeparators)
                case "CN_PHYSICIAN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNPHYSICIAN(hl7version,characterSeparators)
                case "CN_SIMPLE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNSIMPLE(hl7version,characterSeparators)
                case "CNS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNS(hl7version,characterSeparators)
                case "CNE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNE(hl7version,characterSeparators)
                case "CNN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCNN(hl7version,characterSeparators)
                case "CP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCP(hl7version,characterSeparators)
                case "CQ":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCQ(hl7version,characterSeparators)
                case "CQ_QUANTITY":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCQQUANTITY(hl7version,characterSeparators)
                case "CQ_SIMPLE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCQSIMPLE(hl7version,characterSeparators)
                case "CSU":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCSU(hl7version,characterSeparators)
                case "CWE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCWE(hl7version,characterSeparators)
                case "CX":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateCX(hl7version,characterSeparators)
                case "DDI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDDI(hl7version,characterSeparators)
                case "DIN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDIN(hl7version,characterSeparators)
                case "DLD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDLD(hl7version,characterSeparators)
                case "DLN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDLN(hl7version,characterSeparators)
                case "DLT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDLT(hl7version,characterSeparators)
                case "DR":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDR(hl7version,characterSeparators)
                case "DR_SIMPLE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDRSIMPLE(hl7version,characterSeparators)
                case "DT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDT(hl7version,characterSeparators)
                case "DTM":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDTM(hl7version,characterSeparators)
                case "DTN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateDTN(hl7version,characterSeparators)
                case "ED":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateED(hl7version,characterSeparators)
                case "EI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateEI(hl7version,characterSeparators)
                case "EIP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateEIP(hl7version,characterSeparators)
                case "ELD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateELD(hl7version,characterSeparators)
                case "ERL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateERL(hl7version,characterSeparators)
                case "FC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateFC(hl7version,characterSeparators)
                case "FN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateFN(hl7version,characterSeparators)
                case "FT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateFT(hl7version,characterSeparators)
                case "GTS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateGTS(hl7version,characterSeparators)
                case "HD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateHD(hl7version,characterSeparators,fieldname)
                case "ICD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateICD(hl7version,characterSeparators)
                case "ID":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateID(hl7version,characterSeparators)
                case "IS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateIS(hl7version,characterSeparators)
                case "JCC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateJCC(hl7version,characterSeparators)
                case "LA1":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateLA1(hl7version,characterSeparators)
                case "LA2":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateLA2(hl7version,characterSeparators)
                case "MA":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMA(hl7version,characterSeparators)
                case "MFI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMFI(hl7version,characterSeparators)
                case "MO":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMO(hl7version,characterSeparators)
                case "MOC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMOC(hl7version,characterSeparators)
                case "MOP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMOP(hl7version,characterSeparators)
                case "MSG":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateMSG(hl7version,characterSeparators,message)
                case "NA":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNA(hl7version,characterSeparators)
                case "NDL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNDL(hl7version,characterSeparators)
                case "NM":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNM(hl7version,characterSeparators)
                case "NR":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateNR(hl7version,characterSeparators)
                case "OCD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOCD(hl7version,characterSeparators)
                case "OG":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOG(hl7version,characterSeparators)
                case "OSD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOSD(hl7version,characterSeparators)
                case "OSP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateOSP(hl7version,characterSeparators)
                case "PCF":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePCF(hl7version,characterSeparators)
                case "PI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePI(hl7version,characterSeparators)
                case "PIP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePIP(hl7version,characterSeparators)
                case "PL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePL(hl7version,characterSeparators)
                case "PLN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePLN(hl7version,characterSeparators)
                case "PN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePN(hl7version,characterSeparators)
                case "PPN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePPN(hl7version,characterSeparators)
                case "PRL":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePRL(hl7version,characterSeparators)
                case "PT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePT(hl7version,characterSeparators)
                case "PTA":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GeneratePTA(hl7version,characterSeparators)
                case "QIP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateQIP(hl7version,characterSeparators)
                case "QSC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateQSC(hl7version,characterSeparators)
                case "RCD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRCD(hl7version,characterSeparators)
                case "RFR":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRFR(hl7version,characterSeparators)
                case "RI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRI(hl7version,characterSeparators)
                case "RMC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRMC(hl7version,characterSeparators)
                case "RP":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRP(hl7version,characterSeparators)
                case "RPT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateRPT(hl7version,characterSeparators)
                case "SAD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSAD(hl7version,characterSeparators)
                case "SCV":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSCV(hl7version,characterSeparators)
                case "SI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSI(hl7version,characterSeparators)
                case "SN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSN(hl7version,characterSeparators)
                case "SNM":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSNM(hl7version,characterSeparators)
                case "SPD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSPD(hl7version,characterSeparators)
                case "SPS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSPS(hl7version,characterSeparators)
                case "SRT":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateSRT(hl7version,characterSeparators)
                case "ST":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateST(hl7version,characterSeparators)
                case "TM":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTM(hl7version,characterSeparators)
                case "TN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTN(hl7version,characterSeparators)
                case "TQ":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTQ(hl7version,characterSeparators)
                case "TS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTS(hl7version,characterSeparators)
                case "TX":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTX(hl7version,characterSeparators)
                case "TX_CHALLENGE":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateTXCHALLENGE(hl7version,characterSeparators)
                case "UVC":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateUVC(hl7version,characterSeparators)
                case "VH":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateVH(hl7version,characterSeparators)
                case "VID":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateVID(hl7version,characterSeparators)
                case "VR":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateVR(hl7version,characterSeparators)        
                case "WVI":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateWVI(hl7version,characterSeparators)
                case "WVS":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateWVS(hl7version,characterSeparators)
                case "XAD":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXAD(hl7version,characterSeparators)
                case "XCN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXCN(hl7version,characterSeparators)
                case "XON":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXON(hl7version,characterSeparators)
                case "XPN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXPN(hl7version,characterSeparators)
                case "XTN":
                    GeneratedDataType = iris.cls("dc.GenerateDataType").GenerateXTN(hl7version,characterSeparators)
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
    /// Generate Message Sample Per Version
    ClassMethod GenerateAMessageSampleForVersion(hl7version = "2.5", message = "ADT_A01", characterSeparators ="|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
    {
        import iris, socket
        import hl7apy as cr
        import importlib
        from hl7apy.parser import parse_message

        ## testing for integer
        if isinstance(required, str):
            try:
                required = int(required)
            except ValueError:
                print("failed to set to Integer value type")
        if isinstance(repeat, str):
            try:
                repeat = int(repeat)
            except ValueError:
                print("failed to set to Integer value type")

        ## try to find the list of message types from the libraries
        if hl7version in cr.SUPPORTED_LIBRARIES:
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            messages = lib.MESSAGES
        #    print(f"messages: {messages}")
            message_types = list(messages.keys())
        #    print(message_types)
            sample_message = ""

            if message in message_types:
            #    print("YES")

                message_structure = cr.load_reference(message, "Message", hl7version)
            #    print(f"message_structure: {message_structure}")
                with open("message_structure.txt", 'w', encoding='utf-8') as file:
                    file.write(str(message_structure))
            #    print(type(message_structure))
            #    segment=message_structure[1][0]
                for segment in message_structure[1]:
                    segment_name=segment[0]
                #    print(f"segment_name: {segment_name}")
                #    print(segment[3])

                #    segment_required_repeatability = segment[2]
                #    print(f"segment_required_repeatability: {segment_required_repeatability}")
                    segment_required = segment[2][0]
                    segment_repeatability = segment[2][1]

                #    print(segment_required,segment_repeatability)   
                                                
                    ## don't process if standard is optional and I want required
                    if segment_required==0 and required==1:
                    #    print("Optional only")
                        sample_message = sample_message
                    else:
                    #    print("required and optional")
                        ## for those being processed check for repeatability
                        ## if standard says segment is repeatable and I don't care then send 1 repeat of the segment
                        ## if standard says segment is not repeatable and I don't care or want 1 or more then only send 1 repeat of the segment
                        if (segment_repeatability==-1 and repeat>=1):
                        #    print(f"repeat: {repeat} ")
                            repeatcounter=repeat
                            while repeatcounter >0:
                            #    print("while here")

                                if segment_name == "MSH":
                        #            print("MSH HERE")
                                    try:
                                        sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat, message)
                                    except Exception as e:
                                            print(f"seg failed: {e}")
                                    sample_message = sample_segment
                                else:
                                #    print("MSH NOT HERE")
                                #    print(segment[3])
                                    if segment[3] == "SEG":
                                        try:
                                            sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat, message)
                                        except Exception as e:
                                            print(f"seg failed: {e}")
                                    elif segment[3] == "GRP":
                                    #    print("Here group 1")
                                    #    print(f"group requirement: {segment_required}")
                                        try:
                                            sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, segment_required, repeat, message)
                                        except Exception as e:
                                            print(f"grp failed: {e}")
                                    sample_message = sample_message + "\r"+ sample_segment
                            

                                #    print(f"failed within the while: {e}")
                            #    print(sample_segment)
                                repeatcounter -=1
                                
                        else:
                        #    print(f"1 repeat")
                            
                            if segment_name == "MSH":
                            #    print("MSH HERE")

                                try:
                                    sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version,"MSH",characterSeparators,required,repeat,message)
                                except Exception as e:
                                    print(f"failed for repeating: {e}")
                                sample_message = sample_segment
                            else:
                            #    print("not MSH HERE")
                                if segment[3] == "SEG":
                                    try:
                                        sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                                    except Exception as e:
                                        print(f"failed for repeating: {e}")
                                elif segment[3] == "GRP":
                                #    print("Here group 2")
                                #    print(f"group required: {segment_required}")
                                    try:
                                        sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, segment_required, repeat,message)
                                    except Exception as e:
                                        print(f"failed for repeating: {e}")
                                sample_message = sample_message + "\r"+ sample_segment

                           


                    #    print(f"sample_message: {sample_message}")
                    #    print(repr(sample_message))
                return(sample_message)                                

            else:
                print("NO")

      

    }

    /// Generate a field for a version
    ClassMethod GenerateAFieldForVersion(hl7version = "2.5", field = "MSH_12", characterSeparators ="|^~\&", required = 1, repeat = 1, message = "") [ Language = python ]
    {
        import iris, random
        import hl7apy as cr

        # Get the Field separator from the list sent in
        field_separator = characterSeparators[0:1]
    #    print(field_separator, MSH_1)
        # Get the Component separator from the list sent in
        component_separator = characterSeparators[1:2]
    #    print(component_separator)
        # Get the Repetition separator from the list sent in
        repetition_separator = characterSeparators[2:3]
    #    print(repetition_separator)
        # Get the Escape separator from the list sent in
        escape_separator = characterSeparators[3:4]
    #    print(escape_separator)
        # Get the sub-component separator from the list sent in
        subcomponentseparator = characterSeparators[4:5]
        # Get the encoding characters from the list sent in
        EncodingCharacters = characterSeparators[1:5]
        # set field_tuple to the fields for the HL7 version listed
        field_tuple = cr.load_reference(field, "Field", hl7version)
    #    print(field_tuple)
        # the type of field from the HL7apy fields.py
        field_type = field_tuple[0]
    #    print(field_type)

        # the data type for the field
        field_datatype = field_tuple[2]
    #    print(f"field_datatype: {field_datatype}")
        
        # the name of the field
        field_name = field_tuple[3]
    #    print(field_name)
        # if there is an associated table to use
        field_table = field_tuple[4]
    #    print(field_table)


        # pre-checks for fields that will be pulled from the entered data
        match field:
            case "MSH_1":
                return field_separator
            case "MSH_2":
                return component_separator
            case "MSH_9":
            #    print("MSH_9 HERE")
            #    print(field)
            #    print(field_datatype)
            #    print(field_name)
            #    print(message)
                try:
                    sample_data_type=iris.cls(__name__).GenerateSampleDataType(hl7version,field_datatype,field_name,message)
                except Exception as e:
                    print(f"{e}")
            
            case _: #default case
            #    print("in default case")
                # list of tables in this version
                tables=iris.cls("dc.GetStuff").GetAllTablesForVersion(hl7version)
                # Check if the field is a table entry
                if field_table in tables:
                #    print("here")
                    try:
                        codes_from_table = tables[field_table][1]
                    #    print(f"codes_from_table: {codes_from_table}")
                    except Exception as e:
                        print({e}) 
                    if codes_from_table != ():
                        code_from_table = random.choice(codes_from_table)
                    #    print(f"code_from_table: {code_from_table}")
                        sample_data_type = code_from_table
                    else:
                        sample_data_type = "Table is empty"

                else:
                #    print("elif here")
                    if field_datatype == "WD":
                        sample_data_type="Withdrawn"
                    #    print("this field is withdrawn from HL7 Standard")
                        #print(f"{field_tuple[2]} sample_data_type: {sample_data_type}")
                    elif field_datatype == "varies":
                        sample_data_type="Varies"
                    #    print(f"{field_tuple[2]} sample_data_type: {sample_data_type}")
                    else:
                        # Get the data type for the field
                    #    print("else HERE")
                    #    print(field)
                    #    print(field_datatype)
                    #    print(field_name)
                    #    print(message)
                        try:
                            sample_data_type=iris.cls(__name__).GenerateSampleDataType(hl7version,field_datatype,field_name,message)
                        except Exception as e:
                            print(f"{e}")
                        #print(f"{field_tuple[2]} sample_data_type: {sample_data_type}")



        return(sample_data_type)

    }

    /// Generate Segment Sample Per Version
    ClassMethod GenerateASegmentSampleForVersion(hl7version = "2.5", segment = "ABS", characterSeparators ="|^~\&", required = 1, repeat = 1, message="") As %Status [ Language = python ]
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
        FieldSeparator = characterSeparators[0:1]
        # Get the encoding characters
        EncodingCharacters = characterSeparators[1:5]
        # Get the Component separator
        component_separator = characterSeparators[1:2]

    #    print(hl7version)
        if segment == "ANYHL7SEGMENT":
            segment = "NTE"
        # set segment_tuple to the segment for the HL7 version listed
        segment_tuple = cr.load_reference(segment, "Segment", hl7version)
    #    print(segment_tuple)
    #    print(type(segment_tuple))
    #    print(isinstance(segment_tuple,tuple))
    #    print(segment_tuple[0])
    #    print(segment_tuple[1])
    #    print(len(segment_tuple))
    #    print(isinstance(segment_tuple[1],str))

    #    print(type(segment_tuple[2]))
    #    print(isinstance(segment_tuple[2],str))
    #    print(segment_tuple[2])
        # if the segment tuple from HL7apy has more than 1 piece then do something.  This is the "Withdrawn" case.
        if len(segment_tuple) > 1:
            
            sample_segment = segment

            for item in segment_tuple[1]:
            #    print(item)
                field = item[0]
            #    requirerepeatable = item[2]
                hl7required = item[2][0]
                hl7repeatable = item[2][1]
            #    print(f"field: {field}")
            #    print(requirerepeatable)
            #    print(hl7required)
            #    print(hl7repeatable)

                if field == "MSH_1":
                    sample_segment = sample_segment + FieldSeparator
                elif field == "MSH_2":
                    sample_segment = sample_segment + EncodingCharacters
                elif field == "MSH_9":
                    if message.split("^")[0] =="ACK":
                        sample_segment = sample_segment + FieldSeparator + "ACK"
                    else:
                    #    print(f"message: {message}")
                    #    print(f"field: {field}")
                        try:
                            MSH9 = iris.cls(__name__).GenerateAFieldForVersion(hl7version, field, characterSeparators,"","",message)
                    #        print(f"MSH9: {MSH9}")
                        except Exception as e:
                            print(e)
                        sample_segment = sample_segment + FieldSeparator + MSH9
                        
                elif field == "MSH_12":
                    sample_segment = sample_segment + FieldSeparator + hl7version
                #    print(sample_segment)
                else:
                    ## don't process if standard is optional and I want required
                    if hl7required==0 and required==1:
                    #    print("Optional only")
                        sample_segment = sample_segment + FieldSeparator
                    else:
                    #    print("required and optional")
                        ## for those being processed check for repeatability
                        ## if standard says segment is repeatable and I don't care then send 1 repeat of the segment
                        ## if standard says segment is not repeatable and I don't care or want 1 or more then only send 1 repeat of the segment
                        if (hl7repeatable==-1 and repeat>=1):
                            ##print(f"repeat ")
                            repeatcounter=repeat
                            while repeatcounter >0:
                                ##print("here")
                                try:
                                    segmentfieldSample = iris.cls(__name__).GenerateAFieldForVersion(hl7version, field, characterSeparators,"","",message)
                                except Exception as e:
                                    print(e)
                                    segmentfieldSample = ""

                                ##print(segmentfieldSample)

                                sample_segment = sample_segment + FieldSeparator + str(segmentfieldSample)
                                repeatcounter -=1
                        else:
                            ##print(f"1 repeat")
                            try:
                                segmentfieldSample = iris.cls(__name__).GenerateAFieldForVersion(hl7version, field, characterSeparators,"","",message)
                            except Exception as e:
                                print(e)
                                segmentfieldSample = ""
                            ##print(segmentfieldSample)

                            sample_segment = sample_segment + FieldSeparator + str(segmentfieldSample)

                    #    print(sample_field)
                    #    sample_segment = sample_segment + FieldSeparator + str(sample_field)
                    #    print(sample_segment)
            return(sample_segment)
        else:
            print("empty segment")
            return

    }

    /// Generate Group Sample Per Version
    ClassMethod GenerateAGroupSampleForVersion(hl7version = "2.5", Group = "ADT_A01_INSURANCE", characterSeparators ="|^~\&", required = 1, repeat = 1, message="") As %Status [ Language = python ]
    {
        import iris
        import hl7apy as cr

        ## if this is a string then try to change to integer
        if isinstance(required, str):
            try:
                required = int(required)
            except ValueError:
                print("value type change failed")
        ## if this is a string then try to change to integer
        if isinstance(repeat, str):
            try:
                repeat = int(repeat)
            except ValueError:
                print("value type change failed")
        # Get the Field separator from the list sent in
        field_separator = characterSeparators[0:1]
    #    print(field_separator, MSH_1)
        # Get the Component separator from the list sent in
        component_separator = characterSeparators[1:2]
    #    print(component_separator)
        # Get the Repetition separator from the list sent in
        repetition_separator = characterSeparators[2:3]
    #    print(repetition_separator)
        # Get the Escape separator from the list sent in
        escape_separator = characterSeparators[3:4]
    #    print(escape_separator)
        # Get the sub-component separator from the list sent in
        subcomponentseparator = characterSeparators[4:5]
        # Get the encoding characters from the list sent in
        EncodingCharacters = characterSeparators[1:5]
        
        ## pull the library from the API
        group_tuple = cr.load_reference(Group, "Group", hl7version)

        ## set groupSample to blank for the skip
        sample_group = ""
        first_time = 0

    #    print(group_tuple)
    #    print(type(group_tuple))
    #    print(isinstance(group_tuple,tuple))

    #    print(type(group_tuple[1]))
    #    print(group_tuple[1])
    #    print(isinstance(group_tuple[1],str))

        for item in group_tuple[1]:
        #    print(item)
            segment_name = item[0]

            hl7required = item[2][0]
            hl7repeatable = item[2][1]
            field_type = item[3]
        #    print(f"segment_name: {segment_name} , type: {field_type}")


        #    print(f"hl7required: {hl7required}")
        #    print(f"hl7repeatable: {hl7repeatable}")
            ## required: 1 is required or 0 is optional
            ## repeatable: 1 is only 1 allowed or -1 many allowed
            ## don't process if standard is optional and I want required
            if hl7required==0 and required==1:
            #    print("Optional only")
                sample_group = sample_group
            else:
            #    print("required and optional")
                ## for those being processed check for repeatability
                ## if standard says segment is repeatable and I don't care then send 1 repeat of the segment
                ## if standard says segment is not repeatable and I don't care or want 1 or more then only send 1 repeat of the segment
                if (hl7repeatable==-1 and repeat>=1):
                #    print(f"repeat only 1 ")
                    repeatcounter=repeat
                    while repeatcounter >0:
                    #    print("here")
                        if item[3] == "SEG":
                            try:
                                sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                            except Exception as e:
                                print({e})
                        elif item[3] == "GRP":
                            try:
                                sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                            except Exception as e:
                                print({e})
                    #    print(f"sample repeat group before: {sample_group}")
                        if first_time == 0:
                            sample_group = sample_segment
                        else:
                            sample_group = sample_group + "\r"+ sample_segment
                    #    print(sample_segment)
                        first_time=1
                        repeatcounter -=1
                else:
                #    print(f"repeat how many I want")
                #    print(f"else {hl7version}")
                    try:
                        if item[3] == "SEG":
                            sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                        elif item[3] == "GRP":
                            sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                    #    print(f"sample 1 repeat group before: {sample_group}")

                        if first_time == 0:
                            sample_group = sample_segment
                        else:
                            sample_group = sample_group + "\r"+ sample_segment
                    except Exception as e:
                        sample_segment = ""
                        print(f"failed: {item[3]} {segment_name} {e}")
                    first_time=1
                #    print(sample_segment)



        #    print(f"sample_group: {sample_group}")
        return(sample_group)
    }

    ClassMethod LoopingOnTheDataTree() As %Status [ Language = python ]
    {
        alist=['leaf', None, 'ID', 'VERSION_ID', None, -1]
        atuple=('leaf', None, 'ST', 'MESSAGE_CONTROL_ID', None, -1)
        doubletuple=('MSH_10', ('leaf', None, 'ST', 'MESSAGE_CONTROL_ID', None, -1), (1, 1), 'FIE')
        mixedone=('MSH_12', ('sequence',
								(('VID_1', ['leaf', None, 'ID', 'VERSION_ID', None, -1], (1, 1), 'CMP'),
								('VID_2', ['sequence',
									(('CWE_1', ['leaf', None, 'ST', 'IDENTIFIER', None, -1], (0, 1), 'CMP'),
									('CWE_2', ['leaf', None, 'ST', 'TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_3', ['leaf', None, 'ID', 'NAME_OF_CODING_SYSTEM', None, -1], (0, 1), 'CMP'),
									('CWE_4', ['leaf', None, 'ST', 'ALTERNATE_IDENTIFIER', None, -1], (0, 1), 'CMP'),
									('CWE_5', ['leaf', None, 'ST', 'ALTERNATE_TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_6', ['leaf', None, 'ID', 'NAME_OF_ALTERNATE_CODING_SYSTEM', None, -1], (0, 1), 'CMP'),
									('CWE_7', ['leaf', None, 'ST', 'CODING_SYSTEM_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_8', ['leaf', None, 'ST', 'ALTERNATE_CODING_SYSTEM_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_9', ['leaf', None, 'ST', 'ORIGINAL_TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_10', ['leaf', None, 'ST', 'SECOND_ALTERNATE_IDENTIFIER', None, -1], (0, 1), 'CMP'),
									('CWE_11', ['leaf', None, 'ST', 'SECOND_ALTERNATE_TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_12', ['leaf', None, 'ID', 'NAME_OF_SECOND_ALTERNATE_CODING_SYSTEM', None, -1], (0, 1), 'CMP'),
									('CWE_13', ['leaf', None, 'ST', 'SECOND_ALTERNATE_CODING_SYSTEM_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_14', ['leaf', None, 'ST', 'CODING_SYSTEM_OID', None, -1], (0, 1), 'CMP'),
									('CWE_15', ['leaf', None, 'ST', 'VALUE_SET_OID', None, -1], (0, 1), 'CMP'),
									('CWE_16', ['leaf', None, 'DTM', 'VALUE_SET_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_17', ['leaf', None, 'ST', 'ALTERNATE_CODING_SYSTEM_OID', None, -1], (0, 1), 'CMP'),
									('CWE_18', ['leaf', None, 'ST', 'ALTERNATE_VALUE_SET_OID', None, -1], (0, 1), 'CMP'),
									('CWE_19', ['leaf', None, 'DTM', 'ALTERNATE_VALUE_SET_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_20', ['leaf', None, 'ST', 'SECOND_ALTERNATE_CODING_SYSTEM_OID', None, -1], (0, 1), 'CMP'),
									('CWE_21', ['leaf', None, 'ST', 'SECOND_ALTERNATE_VALUE_SET_OID', None, -1], (0, 1), 'CMP'),
									('CWE_22', ['leaf', None, 'DTM', 'SECOND_ALTERNATE_VALUE_SET_VERSION_ID', None, -1], (0, 1), 'CMP')),
									'CWE', 'INTERNATIONALIZATION_CODE', None, -1], (0, 1), 'CMP'),
								('VID_3', ['sequence',
									(('CWE_1', ['leaf', None, 'ST', 'IDENTIFIER', None, -1], (0, 1), 'CMP'),
									('CWE_2', ['leaf', None, 'ST', 'TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_3', ['leaf', None, 'ID', 'NAME_OF_CODING_SYSTEM', None, -1], (0, 1), 'CMP'),
									('CWE_4', ['leaf', None, 'ST', 'ALTERNATE_IDENTIFIER', None, -1], (0, 1), 'CMP'),
									('CWE_5', ['leaf', None, 'ST', 'ALTERNATE_TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_6', ['leaf', None, 'ID', 'NAME_OF_ALTERNATE_CODING_SYSTEM', None, -1], (0, 1), 'CMP'),
									('CWE_7', ['leaf', None, 'ST', 'CODING_SYSTEM_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_8', ['leaf', None, 'ST', 'ALTERNATE_CODING_SYSTEM_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_9', ['leaf', None, 'ST', 'ORIGINAL_TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_10', ['leaf', None, 'ST', 'SECOND_ALTERNATE_IDENTIFIER', None, -1], (0, 1), 'CMP'),
									('CWE_11', ['leaf', None, 'ST', 'SECOND_ALTERNATE_TEXT', None, -1], (0, 1), 'CMP'),
									('CWE_12', ['leaf', None, 'ID', 'NAME_OF_SECOND_ALTERNATE_CODING_SYSTEM', None, -1], (0, 1), 'CMP'),
									('CWE_13', ['leaf', None, 'ST', 'SECOND_ALTERNATE_CODING_SYSTEM_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_14', ['leaf', None, 'ST', 'CODING_SYSTEM_OID', None, -1], (0, 1), 'CMP'),
									('CWE_15', ['leaf', None, 'ST', 'VALUE_SET_OID', None, -1], (0, 1), 'CMP'),
									('CWE_16', ['leaf', None, 'DTM', 'VALUE_SET_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_17', ['leaf', None, 'ST', 'ALTERNATE_CODING_SYSTEM_OID', None, -1], (0, 1), 'CMP'),
									('CWE_18', ['leaf', None, 'ST', 'ALTERNATE_VALUE_SET_OID', None, -1], (0, 1), 'CMP'),
									('CWE_19', ['leaf', None, 'DTM', 'ALTERNATE_VALUE_SET_VERSION_ID', None, -1], (0, 1), 'CMP'),
									('CWE_20', ['leaf', None, 'ST', 'SECOND_ALTERNATE_CODING_SYSTEM_OID', None, -1], (0, 1), 'CMP'),
									('CWE_21', ['leaf', None, 'ST', 'SECOND_ALTERNATE_VALUE_SET_OID', None, -1], (0, 1), 'CMP'),
									('CWE_22', ['leaf', None, 'DTM', 'SECOND_ALTERNATE_VALUE_SET_VERSION_ID', None, -1], (0, 1), 'CMP')),
									'CWE', 'INTERNATIONAL_VERSION_ID', None, -1], (0, 1), 'CMP')),
								'VID', 'VERSION_ID', None, -1), (1, 1), 'FIE')
        def loop_trees(data):
            print(data)
            howdeep=0
            for index, child in enumerate(data):
                #print(f"Index {howdeep} {index}: {child}")
                if isinstance(child,tuple) or isinstance(child,list):
                    loop_trees(child)
                    howdeep+=1
                else:
                    print(f"Index {howdeep} {index}: {child}")
                    if index == 2:
                        print(f"possibly datatype: {child}")
                    elif index == 0:
                        print(f"field type: {child}")
        #loop_trees(alist)
        #loop_trees(atuple)
        #loop_trees(doubletuple)
        loop_trees(mixedone)
    }
        /// Get all fields per ver
    ClassMethod printwhatever(hl7version = "2.7") [ Language = python ]
    {
        import iris,importlib
        import hl7apy as cr
        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get segment reference
            try:
                FIELDS = lib.fields.FIELDS
            except:
                FIELDS = {}
            print(FIELDS)
    }
}

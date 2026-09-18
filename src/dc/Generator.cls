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
    ClassMethod GenerateSampleDataType(dataType = "", table = "", hl7version = "2.5",message = "") [ Language = python ]
    {
        """
        Method to Pick the function for generating the sample data type
        
        Parms
        dataType: Data Type
        table: If field is linked to the table
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
                    GeneratedDataType = iris.cls(__name__).GenerateAD(hl7version,characterSeparators)
                case "AUI":
                    GeneratedDataType = iris.cls(__name__).GenerateAUI(hl7version,characterSeparators)
                case "BLG":
                    GeneratedDataType = iris.cls(__name__).GenerateBLG(hl7version,characterSeparators)
                case "CCD":
                    GeneratedDataType = iris.cls(__name__).GenerateCCD(hl7version,characterSeparators)
                case "CCP":
                    GeneratedDataType = iris.cls(__name__).GenerateCCP(hl7version,characterSeparators)
                case "CD":
                    GeneratedDataType = iris.cls(__name__).GenerateCD(hl7version,characterSeparators)
                case "CE":
                    GeneratedDataType = iris.cls(__name__).GenerateCE(hl7version,characterSeparators)
                case "CF":
                    GeneratedDataType = iris.cls(__name__).GenerateCF(hl7version,characterSeparators)
                case "CK":
                    GeneratedDataType = iris.cls(__name__).GenerateCK(hl7version,characterSeparators)
                case "CK_ACCOUNT_NO":
                    GeneratedDataType = iris.cls(__name__).GenerateCKACCOUNTNO(hl7version,characterSeparators)
                case "CK_PAT_ID":
                    GeneratedDataType = iris.cls(__name__).GenerateCKPATID(hl7version,characterSeparators)
                case "CM":
                    GeneratedDataType = iris.cls(__name__).GenerateCM(hl7version,characterSeparators)
                case "CM_ABS_RANGE":
                    GeneratedDataType = iris.cls(__name__).GenerateCMABSRANGE(hl7version,characterSeparators)
                case "CM_AUI":
                    GeneratedDataType = iris.cls(__name__).GenerateCMAUI(hl7version,characterSeparators)
                case "CM_BATCH_TOTAL":
                    GeneratedDataType = iris.cls(__name__).GenerateCMBATCHTOTAL(hl7version,characterSeparators)
                case "CM_CCD":
                    GeneratedDataType = iris.cls(__name__).GenerateCMCCD(hl7version,characterSeparators)
                case "CM_CP":
                    GeneratedDataType = iris.cls(__name__).GenerateCMCP(hl7version,characterSeparators)
                case "CM_CSU":
                    GeneratedDataType = iris.cls(__name__).GenerateCMCSU(hl7version,characterSeparators)
                case "CM_DDI":
                    GeneratedDataType = iris.cls(__name__).GenerateCMDDI(hl7version,characterSeparators)
                case "CM_DIN":
                    GeneratedDataType = iris.cls(__name__).GenerateCMDIN(hl7version,characterSeparators)
                case "CM_DLD":
                    GeneratedDataType = iris.cls(__name__).GenerateCMDLD(hl7version,characterSeparators)
                case "CM_DLT":
                    GeneratedDataType = iris.cls(__name__).GenerateCMDLT(hl7version,characterSeparators)
                case "CM_DTN":
                    GeneratedDataType = iris.cls(__name__).GenerateCMDTN(hl7version,characterSeparators)
                case "CM_EIP":
                    GeneratedDataType = iris.cls(__name__).GenerateCMEIP(hl7version,characterSeparators)
                case "CM_ELD":
                    GeneratedDataType = iris.cls(__name__).GenerateCMELD(hl7version,characterSeparators)
                case "CM_ELECTRODE":
                    GeneratedDataType = iris.cls(__name__).GenerateCMELECTRODE(hl7version,characterSeparators)
                case "CM_FILLER":
                    GeneratedDataType = iris.cls(__name__).GenerateCMFILLER(hl7version,characterSeparators)
                case "CM_FINANCE":
                    GeneratedDataType = iris.cls(__name__).GenerateCMFINANCE(hl7version,characterSeparators)
                case "CM_GROUP_ID":
                    GeneratedDataType = iris.cls(__name__).GenerateCMGROUPID(hl7version,characterSeparators)
                case "CM_INTERNAL_LOCATION":
                    GeneratedDataType = iris.cls(__name__).GenerateCMINTERNALLOCATION(hl7version,characterSeparators)
                case "CM_JOB_CODE":
                    GeneratedDataType = iris.cls(__name__).GenerateCMJOBCODE(hl7version,characterSeparators)
                case "CM_LA1":
                    GeneratedDataType = iris.cls(__name__).GenerateCMLA1(hl7version,characterSeparators)
                case "CM_LICENSE_NO":
                    GeneratedDataType = iris.cls(__name__).GenerateCMLICENSENO(hl7version,characterSeparators)
                case "CM_MDV":
                    GeneratedDataType = iris.cls(__name__).GenerateCMMDV(hl7version,characterSeparators)
                case "CM_MOC":
                    GeneratedDataType = iris.cls(__name__).GenerateCMMOC(hl7version,characterSeparators)
                case "CM_MSG":
                    GeneratedDataType = iris.cls(__name__).GenerateCMMSG(hl7version,characterSeparators)
                case "CM_NDL":
                    GeneratedDataType = iris.cls(__name__).GenerateCMNDL(hl7version,characterSeparators)
                case "CM_OCD":
                    GeneratedDataType = iris.cls(__name__).GenerateCMOCD(hl7version,characterSeparators)
                case "CM_OS":
                    GeneratedDataType = iris.cls(__name__).GenerateCMOS(hl7version,characterSeparators)
                case "CM_OSP":
                    GeneratedDataType = iris.cls(__name__).GenerateCMOSP(hl7version,characterSeparators)
                case "CM_PARENT_RESULT":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPARENTRESULT(hl7version,characterSeparators)
                case "CM_PAT_ID":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPATID(hl7version,characterSeparators)
                case "CM_PAT_ID_0192":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPATID0192(hl7version,characterSeparators)
                case "CM_PCF":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPCF(hl7version,characterSeparators)
                case "CM_PEN":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPEN(hl7version,characterSeparators)
                case "CM_PI":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPI(hl7version,characterSeparators)
                case "CM_PIP":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPIP(hl7version,characterSeparators)
                case "CM_PLACER":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPLACER(hl7version,characterSeparators)
                case "CM_PLN":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPLN(hl7version,characterSeparators)
                case "CM_POSITION":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPOSITION(hl7version,characterSeparators)
                case "CM_PRACTITIONER":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPRACTITIONER(hl7version,characterSeparators)
                case "CM_PRL":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPRL(hl7version,characterSeparators)
                case "CM_PTA":
                    GeneratedDataType = iris.cls(__name__).GenerateCMPTA(hl7version,characterSeparators)
                case "CM_RANGE":
                    GeneratedDataType = iris.cls(__name__).GenerateCMRANGE(hl7version,characterSeparators)
                case "CM_RANGE_SIMPLE":
                    GeneratedDataType = iris.cls(__name__).GenerateCMRANGESIMPLE(hl7version,characterSeparators)
                case "CM_RFR":
                    GeneratedDataType = iris.cls(__name__).GenerateCMRFR(hl7version,characterSeparators)
                case "CM_RI":
                    GeneratedDataType = iris.cls(__name__).GenerateCMRI(hl7version,characterSeparators)
                case "CM_RMC":
                    GeneratedDataType = iris.cls(__name__).GenerateCMRMC(hl7version,characterSeparators)
                case "CM_SPD":
                    GeneratedDataType = iris.cls(__name__).GenerateCMSPD(hl7version,characterSeparators)
                case "CM_SPS":
                    GeneratedDataType = iris.cls(__name__).GenerateCMSPS(hl7version,characterSeparators)
                case "CM_UVC":
                    GeneratedDataType = iris.cls(__name__).GenerateCMUVC(hl7version,characterSeparators)
                case "CM_VR":
                    GeneratedDataType = iris.cls(__name__).GenerateCMVR(hl7version,characterSeparators)
                case "CM_WVI":
                    GeneratedDataType = iris.cls(__name__).GenerateCMWVI(hl7version,characterSeparators)
                case "CN":
                    GeneratedDataType = iris.cls(__name__).GenerateCN(hl7version,characterSeparators)
                case "CN_PERSON":
                    GeneratedDataType = iris.cls(__name__).GenerateCNPERSON(hl7version,characterSeparators)
                case "CN_PHYSICIAN":
                    GeneratedDataType = iris.cls(__name__).GenerateCNPHYSICIAN(hl7version,characterSeparators)
                case "CN_SIMPLE":
                    GeneratedDataType = iris.cls(__name__).GenerateCNSIMPLE(hl7version,characterSeparators)
                case "CNS":
                    GeneratedDataType = iris.cls(__name__).GenerateCNS(hl7version,characterSeparators)
                case "CNE":
                    GeneratedDataType = iris.cls(__name__).GenerateCNE(hl7version,characterSeparators)
                case "CNN":
                    GeneratedDataType = iris.cls(__name__).GenerateCNN(hl7version,characterSeparators)
                case "CP":
                    GeneratedDataType = iris.cls(__name__).GenerateCP(hl7version,characterSeparators)
                case "CQ":
                    GeneratedDataType = iris.cls(__name__).GenerateCQ(hl7version,characterSeparators)
                case "CQ_QUANTITY":
                    GeneratedDataType = iris.cls(__name__).GenerateCQQUANTITY(hl7version,characterSeparators)
                case "CQ_SIMPLE":
                    GeneratedDataType = iris.cls(__name__).GenerateCQSIMPLE(hl7version,characterSeparators)
                case "CSU":
                    GeneratedDataType = iris.cls(__name__).GenerateCSU(hl7version,characterSeparators)
                case "CWE":
                    GeneratedDataType = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators)
                case "CX":
                    GeneratedDataType = iris.cls(__name__).GenerateCX(hl7version,characterSeparators)
                case "DDI":
                    GeneratedDataType = iris.cls(__name__).GenerateDDI(hl7version,characterSeparators)
                case "DIN":
                    GeneratedDataType = iris.cls(__name__).GenerateDIN(hl7version,characterSeparators)
                case "DLD":
                    GeneratedDataType = iris.cls(__name__).GenerateDLD(hl7version,characterSeparators)
                case "DLN":
                    GeneratedDataType = iris.cls(__name__).GenerateDLN(hl7version,characterSeparators)
                case "DLT":
                    GeneratedDataType = iris.cls(__name__).GenerateDLT(hl7version,characterSeparators)
                case "DR":
                    GeneratedDataType = iris.cls(__name__).GenerateDR(hl7version,characterSeparators)
                case "DR_SIMPLE":
                    GeneratedDataType = iris.cls(__name__).GenerateDRSIMPLE(hl7version,characterSeparators)
                case "DT":
                    GeneratedDataType = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
                case "DTM":
                    GeneratedDataType = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
                case "DTN":
                    GeneratedDataType = iris.cls(__name__).GenerateDTN(hl7version,characterSeparators)
                case "ED":
                    GeneratedDataType = iris.cls(__name__).GenerateED(hl7version,characterSeparators)
                case "EI":
                    GeneratedDataType = iris.cls(__name__).GenerateEI(hl7version,characterSeparators)
                case "EIP":
                    GeneratedDataType = iris.cls(__name__).GenerateEIP(hl7version,characterSeparators)
                case "ELD":
                    GeneratedDataType = iris.cls(__name__).GenerateELD(hl7version,characterSeparators)
                case "ERL":
                    GeneratedDataType = iris.cls(__name__).GenerateERL(hl7version,characterSeparators)
                case "FC":
                    GeneratedDataType = iris.cls(__name__).GenerateFC(hl7version,characterSeparators)
                case "FN":
                    GeneratedDataType = iris.cls(__name__).GenerateFN(hl7version,characterSeparators)
                case "FT":
                    GeneratedDataType = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)
                case "GTS":
                    GeneratedDataType = iris.cls(__name__).GenerateGTS(hl7version,characterSeparators)
                case "HD":
                    GeneratedDataType = iris.cls(__name__).GenerateHD(hl7version,characterSeparators)
                case "ICD":
                    GeneratedDataType = iris.cls(__name__).GenerateICD(hl7version,characterSeparators)
                case "ID":
                    GeneratedDataType = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
                case "IS":
                    GeneratedDataType = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
                case "JCC":
                    GeneratedDataType = iris.cls(__name__).GenerateJCC(hl7version,characterSeparators)
                case "LA1":
                    GeneratedDataType = iris.cls(__name__).GenerateLA1(hl7version,characterSeparators)
                case "LA2":
                    GeneratedDataType = iris.cls(__name__).GenerateLA2(hl7version,characterSeparators)
                case "MA":
                    GeneratedDataType = iris.cls(__name__).GenerateMA(hl7version,characterSeparators)
                case "MFI":
                    GeneratedDataType = iris.cls(__name__).GenerateMFI(hl7version,characterSeparators)
                case "MO":
                    GeneratedDataType = iris.cls(__name__).GenerateMO(hl7version,characterSeparators)
                case "MOC":
                    GeneratedDataType = iris.cls(__name__).GenerateMOC(hl7version,characterSeparators)
                case "MOP":
                    GeneratedDataType = iris.cls(__name__).GenerateMOP(hl7version,characterSeparators)
                case "MSG":
                    GeneratedDataType = iris.cls(__name__).GenerateMSG(hl7version,characterSeparators,message)
                case "NA":
                    GeneratedDataType = iris.cls(__name__).GenerateNA(hl7version,characterSeparators)
                case "NDL":
                    GeneratedDataType = iris.cls(__name__).GenerateNDL(hl7version,characterSeparators)
                case "NM":
                    GeneratedDataType = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
                case "NR":
                    GeneratedDataType = iris.cls(__name__).GenerateNR(hl7version,characterSeparators)
                case "OCD":
                    GeneratedDataType = iris.cls(__name__).GenerateOCD(hl7version,characterSeparators)
                case "OG":
                    GeneratedDataType = iris.cls(__name__).GenerateOG(hl7version,characterSeparators)
                case "OSD":
                    GeneratedDataType = iris.cls(__name__).GenerateOSD(hl7version,characterSeparators)
                case "OSP":
                    GeneratedDataType = iris.cls(__name__).GenerateOSP(hl7version,characterSeparators)
                case "PCF":
                    GeneratedDataType = iris.cls(__name__).GeneratePCF(hl7version,characterSeparators)
                case "PI":
                    GeneratedDataType = iris.cls(__name__).GeneratePI(hl7version,characterSeparators)
                case "PIP":
                    GeneratedDataType = iris.cls(__name__).GeneratePIP(hl7version,characterSeparators)
                case "PL":
                    GeneratedDataType = iris.cls(__name__).GeneratePL(hl7version,characterSeparators)
                case "PLN":
                    GeneratedDataType = iris.cls(__name__).GeneratePLN(hl7version,characterSeparators)
                case "PN":
                    GeneratedDataType = iris.cls(__name__).GeneratePN(hl7version,characterSeparators)
                case "PPN":
                    GeneratedDataType = iris.cls(__name__).GeneratePPN(hl7version,characterSeparators)
                case "PRL":
                    GeneratedDataType = iris.cls(__name__).GeneratePRL(hl7version,characterSeparators)
                case "PT":
                    GeneratedDataType = iris.cls(__name__).GeneratePT(hl7version,characterSeparators)
                case "PTA":
                    GeneratedDataType = iris.cls(__name__).GeneratePTA(hl7version,characterSeparators)
                case "QIP":
                    GeneratedDataType = iris.cls(__name__).GenerateQIP(hl7version,characterSeparators)
                case "QSC":
                    GeneratedDataType = iris.cls(__name__).GenerateQSC(hl7version,characterSeparators)
                case "RCD":
                    GeneratedDataType = iris.cls(__name__).GenerateRCD(hl7version,characterSeparators)
                case "RFR":
                    GeneratedDataType = iris.cls(__name__).GenerateRFR(hl7version,characterSeparators)
                case "RI":
                    GeneratedDataType = iris.cls(__name__).GenerateRI(hl7version,characterSeparators)
                case "RMC":
                    GeneratedDataType = iris.cls(__name__).GenerateRMC(hl7version,characterSeparators)
                case "RP":
                    GeneratedDataType = iris.cls(__name__).GenerateRP(hl7version,characterSeparators)
                case "RPT":
                    GeneratedDataType = iris.cls(__name__).GenerateRPT(hl7version,characterSeparators)
                case "SAD":
                    GeneratedDataType = iris.cls(__name__).GenerateSAD(hl7version,characterSeparators)
                case "SCV":
                    GeneratedDataType = iris.cls(__name__).GenerateSCV(hl7version,characterSeparators)
                case "SI":
                    GeneratedDataType = iris.cls(__name__).GenerateSI(hl7version,characterSeparators)
                case "SN":
                    GeneratedDataType = iris.cls(__name__).GenerateSN(hl7version,characterSeparators)
                case "SNM":
                    GeneratedDataType = iris.cls(__name__).GenerateSNM(hl7version,characterSeparators)
                case "SPD":
                    GeneratedDataType = iris.cls(__name__).GenerateSPD(hl7version,characterSeparators)
                case "SPS":
                    GeneratedDataType = iris.cls(__name__).GenerateSPS(hl7version,characterSeparators)
                case "SRT":
                    GeneratedDataType = iris.cls(__name__).GenerateSRT(hl7version,characterSeparators)
                case "ST":
                    GeneratedDataType = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
                case "TM":
                    GeneratedDataType = iris.cls(__name__).GenerateTM(hl7version,characterSeparators)
                case "TN":
                    GeneratedDataType = iris.cls(__name__).GenerateTN(hl7version,characterSeparators)
                case "TQ":
                    GeneratedDataType = iris.cls(__name__).GenerateTQ(hl7version,characterSeparators)
                case "TS":
                    GeneratedDataType = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
                case "TX":
                    GeneratedDataType = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)
                case "TX_CHALLENGE":
                    GeneratedDataType = iris.cls(__name__).GenerateTXCHALLENGE(hl7version,characterSeparators)
                case "UVC":
                    GeneratedDataType = iris.cls(__name__).GenerateUVC(hl7version,characterSeparators)
                case "VH":
                    GeneratedDataType = iris.cls(__name__).GenerateVH(hl7version,characterSeparators)
                case "VID":
                    GeneratedDataType = iris.cls(__name__).GenerateVID(hl7version,characterSeparators)
                case "VR":
                    GeneratedDataType = iris.cls(__name__).GenerateVR(hl7version,characterSeparators)        
                case "WVI":
                    GeneratedDataType = iris.cls(__name__).GenerateWVI(hl7version,characterSeparators)
                case "WVS":
                    GeneratedDataType = iris.cls(__name__).GenerateWVS(hl7version,characterSeparators)
                case "XAD":
                    GeneratedDataType = iris.cls(__name__).GenerateXAD(hl7version,characterSeparators)
                case "XCN":
                    GeneratedDataType = iris.cls(__name__).GenerateXCN(hl7version,characterSeparators)
                case "XON":
                    GeneratedDataType = iris.cls(__name__).GenerateXON(hl7version,characterSeparators)
                case "XPN":
                    GeneratedDataType = iris.cls(__name__).GenerateXPN(hl7version,characterSeparators)
                case "XTN":
                    GeneratedDataType = iris.cls(__name__).GenerateXTN(hl7version,characterSeparators)
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
        try:
            if hl7version in cr.SUPPORTED_LIBRARIES:
                module_name = cr.SUPPORTED_LIBRARIES[hl7version]
                lib = importlib.import_module(module_name)
                messages = lib.MESSAGES
            #    print(f"messages: {messages}")
                message_types = list(messages.keys())
            #    print(message_types)
                sample_message = ""
                try:
                    if message in message_types:
                    #    print("YES")
                        try:
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
                                            try:
                                                if segment_name == "MSH":
                                        #            print("MSH HERE")
                                                    sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat, segment_name,message)
                                                    sample_message = sample_segment
                                                else:
                                                #    print("MSH NOT HERE")
                                                #    print(segment[3])
                                                    if segment[3] == "SEG":
                                                        sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,"",message)
                                                    elif segment[3] == "GRP":
                                                    #    print("Here group 1")
                                                    #    print(f"group requirement: {segment_required}")
                                                        sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, segment_required, repeat, message)
                                                    sample_message = sample_message + "\r"+ sample_segment
                                            
                                            except Exception as e:
                                                sample_segment = ""
                                            #    print(f"failed within the while: {e}")
                                        #    print(sample_segment)
                                            repeatcounter -=1
                                            
                                    else:
                                    #    print(f"1 repeat")
                                        try:
                                            if segment_name == "MSH":
                                            #    print("MSH HERE")
                                                sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version,"MSH",characterSeparators,required,repeat,"",message)
                                            #    print(f"sample_segment: {sample_segment}")
                                                sample_message = sample_segment
                                            else:
                                            #    print("not MSH HERE")
                                                if segment[3] == "SEG":
                                                    sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,"",message)
                                                elif segment[3] == "GRP":
                                                #    print("Here group 2")
                                                #    print(f"group required: {segment_required}")
                                                    sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, segment_required, repeat,message)
                                                sample_message = sample_message + "\r"+ sample_segment
                                        except Exception as e:
                                            sample_segment = ""
                                        #    print(f"failed for repeating: {e}")
                                    #    print(sample_segment)

                                            


                                #    print(f"sample_message: {sample_message}")
                                #    print(repr(sample_message))
                            return(sample_message)                                
                        except Exception as e:
                            print(f"failed: {e}")
                    else:
                        print("NO")
                except Exception as e:
                    print(f"failed: {e}")
        except Exception as e:
            print(f"failed: {e}")
      

    }

    /// Build AD datatype
    ClassMethod GenerateAD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        import random,importlib,iris
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import string    
        import hl7apy as cr


        # Initialize Faker instance
        fake = Faker()

        # Build the example Datatype
        StreetAddress = fake.street_address()
        OtherDesignation = "APT1"
        City = fake.city()
        StateorProvince = fake.state()
        ZiporPostalCode = fake.zipcode()

        Country = fake.country_code()
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Country := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70399")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Country = fake.country_code()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AddressType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70190")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AddressType = random.choice(["BA","BI","N","BDL","F","C","B","H","L","M","O","P","RH","BR","S","SH","TM","V"])


        OtherGeographicDesignation = fake.current_country()
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{StreetAddress}{separator}{OtherDesignation}{separator}{City}{separator}{StateorProvince}{separator}{ZiporPostalCode}{separator}{Country}{separator}{AddressType}{separator}{OtherGeographicDesignation}"
    }

    /// Build AUI datatype
    ClassMethod GenerateAUI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        import iris,random
        from faker import Faker
        from datetime import datetime
        # Initialize Faker instance
        fake = Faker()

        # Build the example Datatype
        AuthorizationNumber = random.randint(10000000000, 999999999999)
        # Using current time
        ini_time_for_now = datetime.now()
        # Current date and time in YYYYMMDDHHMMSS
        Date = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        Source = iris.cls(__name__).GenerateST(hl7version, characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{AuthorizationNumber}{separator}{Date}{separator}{Source}"    }



    /// Generate Charge Code and Date
    ClassMethod GenerateCCD(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # CCD Charge Code and Date
        import iris,importlib,random
        import hl7apy as cr
        # Get the Component separator
        component_separator = characterSeparators[1:2]

        # Check Digit Scheme logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (InvocationEvent := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            InvocationEvent = random.choice(["D","O","R","S","T"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (InvocationEvent  := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70100")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            InvocationEvent = random.choice(["D","O","R","S","T"])
        # pick one of the values

        if hl7version >= "2.6":
            Datetime = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        else:
            Datetime = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        return f"{InvocationEvent}{separator}{Datetime}"
    }

    /// Build CCP Datatype
    ClassMethod GenerateCCP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CCP Channel Calibration Parameters
        import iris
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        ChannelCalibrationSensitivit = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        ChannelCalibrationBaseline = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        ChannelCalibrationTimeSkew = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        return f"{ChannelCalibrationSensitivit}{separator}{ChannelCalibrationBaseline}{separator}{ChannelCalibrationTimeSkew}"
    }

    /// Build CD Datatype
    ClassMethod GenerateCD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CD Channel Definition
        import iris

        ChannelIdentifier = iris.cls(__name__).GenerateWVI(hl7version,characterSeparators,subcomponent=1)
        WaveformSource = iris.cls(__name__).GenerateWVS(hl7version,characterSeparators,subcomponent=1)
        ChannelSensitivityUnits = iris.cls(__name__).GenerateCSU(hl7version,characterSeparators,subcomponent=1)
        ChannelCalibrationParameters = iris.cls(__name__).GenerateCCP(hl7version,characterSeparators,subcomponent=1)
        ChannelSamplingFrequency = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        MinimumMaximumDataValues = iris.cls(__name__).GenerateNR(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{ChannelIdentifier}{separator}{WaveformSource}{separator}{ChannelSensitivityUnits}{separator}{ChannelCalibrationParameters}{separator}{ChannelSamplingFrequency}{separator}{MinimumMaximumDataValues}"
    }

    /// Build CE datatype
    ClassMethod GenerateCE(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        import textwrap,random,importlib,string,iris
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr

        # Initialize Faker instance
        fake = Faker()

        # Build the example Datatype
        identifierST = str(random.randint(100, 999))  # Random 3-digit code

        text = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (nameofcodingsystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            nameofcodingsystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])

        alternateidentifierST = str(random.randint(100, 999))  # Random 3-digit code

        alternatetext = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (nameofalternatecodingsystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            nameofalternatecodingsystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{identifierST}{separator}{text}{separator}{nameofcodingsystem}{separator}{alternateidentifierST}{separator}{alternatetext}{separator}{nameofalternatecodingsystem}"
    }

    /// Build CF datatype
    ClassMethod GenerateCF(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
         
        # Initialize Faker instance
        fake = Faker()


        # Build the example Datatype
        Identifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        FormattedText = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)

        # name of coding system version logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            NameofCodingSystem = random.choice(["99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"])

        AlternateIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateFormattedText = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)
        # name of coding system version logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofAlternateCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            NameofAlternateCodingSystem = random.choice(["99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"])


        if hl7version > "2.6":
            CodingSystemVersionID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            AlternateCodingSystemVersion = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            OriginalText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltFormattedText = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)

            # name of coding system version logic
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (NameofSecAltCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")
                NameofSecAltCodingSystem = random.choice(["99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"])
            
            SecAltCodingSystemVersionID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            CodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            ValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            ValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
            AlternateCodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            AlternateValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            AlternateValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
            SecAltCodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        # return case
        match hl7version:
            case "2.3":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}"
            case "2.3.1":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}"
            case "2.4":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}"
            case "2.5":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}"
            case "2.5.1":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}"
            case "2.6":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}"
            case "2.7":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{separator}{SecAltFormattedText}{separator}{NameofSecAltCodingSystem}{separator}{SecAltCodingSystemVersionID}{separator}{CodingSystemOID}{separator}{ValueSetOID}{separator}{ValueSetVersionID}{separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
            case "2.7.1":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{separator}{SecAltFormattedText}{separator}{NameofSecAltCodingSystem}{separator}{SecAltCodingSystemVersionID}{separator}{CodingSystemOID}{separator}{ValueSetOID}{separator}{ValueSetVersionID}{separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
            case "2.8":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{separator}{SecAltFormattedText}{separator}{NameofSecAltCodingSystem}{separator}{SecAltCodingSystemVersionID}{separator}{CodingSystemOID}{separator}{ValueSetOID}{separator}{ValueSetVersionID}{separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
            case "2.8.1":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{separator}{SecAltFormattedText}{separator}{NameofSecAltCodingSystem}{separator}{SecAltCodingSystemVersionID}{separator}{CodingSystemOID}{separator}{ValueSetOID}{separator}{ValueSetVersionID}{separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
            case "2.8.2":
                return f"{Identifier}{separator}{FormattedText}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateFormattedText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{separator}{SecAltFormattedText}{separator}{NameofSecAltCodingSystem}{separator}{SecAltCodingSystemVersionID}{separator}{CodingSystemOID}{separator}{ValueSetOID}{separator}{ValueSetVersionID}{separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
            case _:
                return
    }

    /// Build CK datatype
    ClassMethod GenerateCK(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
           
        # Initialize Faker instance
        fake = Faker()
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        # Build the example Datatype
        IDnumberNM = str(random.randint(100, 999))  # Random 3-digit code
        checkdigit = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (codeidentifyingthecheckdigit := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            codeidentifyingthecheckdigit = random.choice(["NPI","ISO","M10","M11"])

        assigningauthority = fake.company()

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDnumberNM}{separator}{checkdigit}{separator}{codeidentifyingthecheckdigit}{separator}{assigningauthority}"
    }

    /// Generate CK_ACCOUNT_NO
    ClassMethod GenerateCKACCOUNTNO(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CKACCOUNTNO
        import iris,random,string
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        accountnumber = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        checkdigit = ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description


        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Checkdigitscheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            Checkdigitscheme = random.choice(["M10","M11"])

        FacilityID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
                # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{accountnumber}{separator}{checkdigit}{separator}{Checkdigitscheme}{separator}{FacilityID}"
    }

    /// Generate CK_PAT_ID
    ClassMethod GenerateCKPATID(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CKPATID
        import iris,random,string
        #Call Table method to get list of tables in this version
        
        PatientID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Checkdigit = ''.join(random.choices(string.ascii_uppercase, k=5))

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Checkdigitscheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            Checkdigitscheme = random.choice(["M10","M11"])

        FacilityID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PatientID}{separator}{Checkdigit}{separator}{Checkdigitscheme}{separator}{FacilityID}"
    }

    /// Generate CM_ABS_RANGE
    ClassMethod GenerateCMABSRANGE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMABSRANGE
        import iris,random,string

        Range = iris.cls(__name__).GenerateCMRANGE(hl7version,characterSeparators,subcomponent=1)
        NumericChange = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        PercentperChange = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Days = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{Range}{separator}{NumericChange}{separator}{PercentperChange}{separator}{Days}"
    }

    /// Generate CM_AUI
    ClassMethod GenerateCMAUI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMAUI
        import iris,random,string

        authorizationnumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        date = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
        source = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{authorizationnumber}{separator}{date}{separator}{source}"
    }

    /// CM_BATCH_TOTAL
    ClassMethod GenerateCMBATCHTOTAL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMBATCHTOTAL
        import iris

        Batchtotal1 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Batchtotal2 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Batchtotal1}{separator}{Batchtotal2}"
    }

    /// Generate CM_CCD
    ClassMethod GenerateCMCCD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMCCD
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (WhentoCharge := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70100")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            WhentoCharge = random.choice(["D","O","R","S","T"])
        datetime = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{WhentoCharge}{separator}{datetime}"
    }

    /// Generate CM_CP
    ClassMethod GenerateCMCP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMCP
        import iris
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        SENSITIVITY_CORRECTION_FACTOR = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        BASELINE = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        TIME_SKEW = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SENSITIVITY_CORRECTION_FACTOR}{separator}{BASELINE}{separator}{TIME_SKEW}"
    }

    /// Generate CM_CSU
    ClassMethod GenerateCMCSU(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMCSU
        import iris

        SENSITIVITY = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        UNITS_IDENTIFIER = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        UNITS_TEXT = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        UNITS_NAME_OF_CODING_SYSTEM = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        UNITS_ALTERNATE_IDENTIFIER = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        UNITS_ALTERNATE_TEXT = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        UNITS_NAME_OF_ALTERNATE_CODING_SYSTEM = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SENSITIVITY}{separator}{UNITS_IDENTIFIER}{separator}{UNITS_TEXT}{separator}{UNITS_NAME_OF_CODING_SYSTEM}{separator}{UNITS_ALTERNATE_IDENTIFIER}{separator}{UNITS_ALTERNATE_TEXT}{separator}{UNITS_NAME_OF_ALTERNATE_CODING_SYSTEM}"
    }

    /// Generate CM_DDI
    ClassMethod GenerateCMDDI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMDDI
        import iris,random,string

        delaydays = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        amount = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        numberofdays = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{delaydays}{separator}{amount}{separator}{numberofdays}"
    }

    /// Generate CM_DIN
    ClassMethod GenerateCMDIN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMDIN
        import iris

        Date = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        institutionname = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Date}{separator}{institutionname}"
    }

    /// Generate CM_DLD
    ClassMethod GenerateCMDLD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMDLD
        import iris

        dischargelocation = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        effectivedate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{dischargelocation}{separator}{effectivedate}"
    }

    /// Generate CM_DLT
    ClassMethod GenerateCMDLT(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMDLT
        import iris,random,string

        Range = iris.cls(__name__).GenerateCMRANGE(hl7version,characterSeparators,subcomponent=1)
        numericthreshold = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        change = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        lengthoftimedays = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{Range}{separator}{numericthreshold}{separator}{change}{separator}{lengthoftimedays}"
    }

    /// Generate CM_DTN
    ClassMethod GenerateCMDTN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMDTN
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (daytype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70149")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            daytype = random.choice(["AP","DE","PE"])
        numberofdays = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{daytype}{separator}{numberofdays}"
    }

    /// Generate CM_EIP
    ClassMethod GenerateCMEIP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMEIP
        import iris

        parentsplacerordernumber = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        parentsfillerordernumber = iris.cls(__name__).GenerateID(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{parentsplacerordernumber}{separator}{parentsfillerordernumber}"
    }

    /// Generate CM_ELD
    ClassMethod GenerateCMELD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # GenerateCMELD
        import iris,random,string
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        SegmentID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Sequence = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        FieldPosition = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        CodeIdentifyingError = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SegmentID}{separator}{Sequence}{separator}{FieldPosition}{separator}{CodeIdentifyingError}"
    }

    /// Generate CM_ELECTRODE
    ClassMethod GenerateCMELECTRODE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMELECTRODE
        import iris

        SOURCE_NAME_1 = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        SOURCE_NAME_2 = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SOURCE_NAME_1}{separator}{SOURCE_NAME_2}"
    }

    /// Generate CM_FILLER
    ClassMethod GenerateCMFILLER(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMFILLER
        import iris
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        uniquefillerid = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        fillerapplicationID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{uniquefillerid}{separator}{fillerapplicationID}"
    }

	    /// Generate CM_FINANCE
    ClassMethod GenerateCMFINANCE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMFINANCE
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (financialclassID := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70064")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            financialclassID = random.choice(["01","02","03","10","11","12","13","14","15","16","17","18","20","21","22","23","24","25","26","27","28","29","40","41","42","43","44","45","46","50"])

        effectivedate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{financialclassID}{separator}{effectivedate}"
    }

    /// Generate CM_GROUP_ID
    ClassMethod GenerateCMGROUPID(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMGROUPID
        import iris
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        uniquegroupid = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        placerapplicationid = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{uniquegroupid}{separator}{placerapplicationid}"
    }

   /// Generate CM_INTERNAL_LOCATION
    ClassMethod GenerateCMINTERNALLOCATION(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # 
        import iris,importlib,random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
         

        nurseunitStation = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        Room = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        Bed = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        FacilityID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (BedStatus := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70116")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            BedStatus = random.choice(["C","H","O","U","K","I"])

        Etage = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        Klinik = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        Zentrum = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{nurseunitStation}{separator}{Room}{separator}{Bed}{separator}{FacilityID}{separator}{BedStatus}{separator}{Etage}{separator}{Klinik}{separator}{Zentrum}"
    }
	

    /// Generate CM_JOB_CODE
    ClassMethod GenerateCMJOBCODE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMJOBCODE
        import iris

        jobcode = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        employeeclassification = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{jobcode}{separator}{employeeclassification}"
    }

    /// Generate CM_LA1
    ClassMethod GenerateCMLA1(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMLA1
        import iris, random, importlib
        from faker import Faker
        import hl7apy as cr
        # Initialize Faker instance
        fake = Faker()
        #Call Table method to get list of tables in this version
        
        if hl7version == "2.2":
            DispenseDelivertoLocation = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
            location = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        else:
            PointofCare = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Room = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Bed = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Facility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)
            LocationStatus = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (PatientLocationType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70305")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")
                PatientLocationType = random.choice(["C","D","H","N","O","P","S"])

            Building = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Floor = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            StreetAddress = fake.street_address()
            OtherDesignation = fake.street_address()
            City = fake.city() 
            StateorProvince = fake.state() 
            ZiporPostalCode = fake.zipcode()

            # table 399 for country not filled in but HL7apy has a table for V2.5
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (Country := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70399")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                Country = fake.country_code('alpha-3')            

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (AddressType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70190")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")
                AddressType = random.choice(["C","P","O","M","F","B","H"])

            OtherGeographicDesignation = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version == "2.2":
            return f"{DispenseDelivertoLocation}{separator}{location}"
        else:
            return f"{PointofCare}{separator}{Room}{separator}{Bed}{separator}{Facility}{separator}{LocationStatus}{separator}{PatientLocationType}{separator}{Building}{separator}{Floor}{separator}{StreetAddress}{separator}{OtherDesignation}{separator}{City}{separator}{StateorProvince}{separator}{ZiporPostalCode}{separator}{Country}{separator}{AddressType}{separator}{OtherGeographicDesignation}"
    }
	
    /// Generate CM_LICENSE_NO
    ClassMethod GenerateCMLICENSENO(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMLICENSENO
        import iris
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()

        LicenseNumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        issuingstateprovincecountry = fake.state()
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{LicenseNumber}{separator}{issuingstateprovincecountry}"
    }

    /// Generate CM_MDV
    ClassMethod GenerateCMMDV(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMMDV
        import iris

        MINIMUM_VALUE = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        MAXIMUM_VALUE = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{MINIMUM_VALUE}{separator}{MAXIMUM_VALUE}"
    }

    /// Generate CM_MOC
    ClassMethod GenerateCMMOC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMMOC
        import iris
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        dollaramount = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        chargecode = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{dollaramount}{separator}{chargecode}"
    }

    /// Generate CM
    ClassMethod GenerateCM(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CM - Derived from HL7apy datatypes.py
        import iris

        messagetype = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        TriggerEvent = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{messagetype}{separator}{TriggerEvent}"
    }

    /// Generate CM_MSG
    ClassMethod GenerateCMMSG(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMMSG
        import iris

        messagetype = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        TriggerEvent = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{messagetype}{separator}{TriggerEvent}"
    }

    /// Generate CM_NDL
    ClassMethod GenerateCMNDL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMNDL
        import iris,random,string,importlib
        from datetime import datetime, timedelta
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Get the Component separator
        component_separator = characterSeparators[1:2]
        # Using current time
        ini_time_for_now = datetime.now()
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version == "2.2":
            interpretertechnician = iris.cls(__name__).GenerateCNPERSON(hl7version,characterSeparators,subcomponent=1)
            startdatetime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
            enddatetime = ini_time_for_now + timedelta(days = 30)
            enddatetime = enddatetime.strftime("%Y%m%d%H%M%S")
            location = iris.cls(__name__).GenerateCMINTERNALLOCATION(hl7version,characterSeparators,subcomponent=1)
            return f"{interpretertechnician}{separator}{startdatetime}{separator}{enddatetime}{separator}{location}"
        else:
            interpretertechnician = iris.cls(__name__).GenerateCNPERSON(hl7version,characterSeparators,subcomponent=1)
            startdatetime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
            enddatetime = ini_time_for_now + timedelta(days = 30)
            enddatetime = enddatetime.strftime("%Y%m%d%H%M%S")
            PointofCare = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Room = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Bed = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Facility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)
            LocationStatus = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PatientLocationType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70305")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PatientLocationType = random.choice(["C","D","H","N","O","P","S"])


            Building = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            Floor = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

            return f"{interpretertechnician}{separator}{startdatetime}{separator}{enddatetime}{separator}{PointofCare}{separator}{Room}{separator}{Bed}{separator}{Facility}{separator}{LocationStatus}{separator}{PatientLocationType}{separator}{Building}{separator}{Floor}"
    }

    /// Generate CM_OCD
    ClassMethod GenerateCMOCD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMOCD
        import iris
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        occurrencecode = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        occurrencedate = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{occurrencecode}{separator}{occurrencedate}"
    }

    /// Generate CM_OS
    ClassMethod GenerateCMOS(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMOS
        import iris


        SEQUENCE_RESULTS_FLAG = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        PLACER_ORDER_NUMBER_ENTITY_IDENTIFIER = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        PLACER_ORDER_NUMBER_NAMESPACE_ID = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        FILLER_ORDER_NUMBER_ENTITY_IDENTIFIER = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        FILLER_ORDER_NUMBER_NAMESPACE_ID = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        SEQUENCE_CONDITION_VALUE = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        MAXIMUM_NUMBER_OF_REPEATS = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        PLACER_ORDER_NUMBER_UNIVERSAL_ID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        PLACER_ORDER_NUMBER_UNIVERSAL_ID_TYPE = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        FILLER_ORDER_NUMBER_UNIVERSAL_ID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        FILLER_ORDER_NUMBER_UNIVERSAL_ID_TYPE = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{SEQUENCE_RESULTS_FLAG}{separator}{PLACER_ORDER_NUMBER_ENTITY_IDENTIFIER}{separator}{PLACER_ORDER_NUMBER_NAMESPACE_ID}{separator}{FILLER_ORDER_NUMBER_ENTITY_IDENTIFIER}{separator}{FILLER_ORDER_NUMBER_NAMESPACE_ID}{separator}{SEQUENCE_CONDITION_VALUE}{separator}{MAXIMUM_NUMBER_OF_REPEATS}{separator}{PLACER_ORDER_NUMBER_UNIVERSAL_ID}{separator}{PLACER_ORDER_NUMBER_UNIVERSAL_ID_TYPE}{separator}{FILLER_ORDER_NUMBER_UNIVERSAL_ID}{separator}{FILLER_ORDER_NUMBER_UNIVERSAL_ID_TYPE}"
    }

    /// Generate CM_OSP
    ClassMethod GenerateCMOSP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMOSP
        import iris
        from datetime import datetime, timedelta

        # Using current time
        ini_time_for_now = datetime.now()
        occurrencespancode = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        occurrencespanstartdate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        occurrencespanstopdate = ini_time_for_now + timedelta(days = 30)
        occurrencespanstopdate = occurrencespanstopdate.strftime("%Y%m%d%H%M%S")
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]      
        return f"{occurrencespancode}{separator}{occurrencespanstartdate}{separator}{occurrencespanstopdate}"
    }

    /// Generate CM_PARENT_RESULT
    ClassMethod GenerateCMPARENTRESULT(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        return "CM"
    }

    /// Generate CM_PAT_ID
    ClassMethod GenerateCMPATID(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPATID
        import iris


        PatientID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Checkdigit = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Checkdigitscheme = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        FacilityID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        type = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PatientID}{separator}{Checkdigit}{separator}{Checkdigitscheme}{separator}{FacilityID}{separator}{type}"
    }

    /// Generate CM_PAT_ID_0192
    ClassMethod GenerateCMPATID0192(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPATID0192
        import iris

        PatientID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Checkdigit = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Checkdigitscheme = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        FacilityID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        type = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PatientID}{separator}{Checkdigit}{separator}{Checkdigitscheme}{separator}{FacilityID}{separator}{type}"
    }

	    /// Generate CM_PCF
    ClassMethod GenerateCMPCF(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # GenerateCMPCF
        import iris,importlib,random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        precertificationpatienttype = iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70150")
        try:
            precertificationpatienttype
        except:
            precertificationpatienttype = random.choice(["ER","IPE","OPE","UR"])


        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (precerticationrequired := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70136")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            precerticationrequired = random.choice(["N","Y"])

        precertificationwindow = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]    
        return f"{precertificationpatienttype}{separator}{precerticationrequired}{separator}{precertificationwindow}"
    }
	
    /// Generate CM_PEN
    ClassMethod GenerateCMPEN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPEN
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PenaltyID := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70148")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PenaltyID = random.choice(["AT","PC"])

    #    print(PenaltyID)
        penaltyamount = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PenaltyID}{separator}{penaltyamount}"
    }



    /// Generate CM_PI
    ClassMethod GenerateCMPI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPI
        import iris


        IDnumberST = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        typeofIDnumberIS = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        otherqualifyinginfo = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDnumberST}{separator}{typeofIDnumberIS}{separator}{otherqualifyinginfo}"
    }

    /// Generate PIP
    ClassMethod GenerateCMPIP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPIP
        import iris
        from datetime import datetime, timedelta
            # Using current time
        ini_time_for_now = datetime.now()


        privilege = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        privilegeclass = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        activationdate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
        expirationdate = ini_time_for_now + timedelta(days = 30)
        expirationdate = expirationdate.strftime("%Y%m%d%H%M%S")
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{privilege}{separator}{privilegeclass}{separator}{expirationdate}{separator}{activationdate}"
    }

    /// Generate CM_PLACER
    ClassMethod GenerateCMPLACER(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPLACER
        import iris


        uniqueplacerid = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        placerapplication = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]   
        return f"{uniqueplacerid}{separator}{placerapplication}"
    }

    /// Generate PLN
    ClassMethod GenerateCMPLN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPLN
        import iris
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]     

        if hl7version == "2.2":
            IDnumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            typeofIDnumberID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
            stateotherqualifiyinginfo = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            return f"{IDnumber}{separator}{typeofIDnumberID}{separator}{stateotherqualifiyinginfo}"
        else:
            IDnumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            typeofIDnumberIS = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            stateotherqualifiyinginfo = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            expirationdate = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)

            return f"{IDnumber}{separator}{typeofIDnumberIS}{separator}{stateotherqualifiyinginfo}{separator}{expirationdate}"
    }

    /// Generate CM_POSITION
    ClassMethod GenerateCMPOSITION(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPOSITION
        import iris

        Saal = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Tisch = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Stuhl = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]   

        return f"{Saal}{separator}{Tisch}{separator}{Stuhl}"
    }

    /// Generate CM_PRACTITIONER
    ClassMethod GenerateCMPRACTITIONER(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPRACTITIONER
        import iris,importlib,random
        import hl7apy as cr

        ProcedurePractitionerID = iris.cls(__name__).GenerateCNPERSON(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (procedurepractitionertype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70133")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            procedurepractitionertype = random.choice(["AN","PR","RD","RS","NP","CM"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]   
        return f"{ProcedurePractitionerID}{separator}{procedurepractitionertype}"
    }

    /// Generate CM_PRL
    ClassMethod GenerateCMPRL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPRL
        import iris

        OBX3observationidentifierofp = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        OBX4subIDofparentresult = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        partofOBX5observationresultf = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{OBX3observationidentifierofp}{separator}{OBX4subIDofparentresult}{separator}{partofOBX5observationresultf}"
    }

	/// Generate CM_PTA
    ClassMethod GenerateCMPTA(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMPTA
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (policytype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70147")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            policytype = random.choice(["ANC","2ANC","3MMD","MMD","2MMD"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (amountclass := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70193")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            amountclass = random.choice(["AT","LM","PC","UL"])

        amount = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{policytype}{separator}{amountclass}{separator}{amount}"
    }    

    /// Generate CM_RANGE
    ClassMethod GenerateCMRANGE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMABSRANGE
        import iris

        LowValue = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        HighValue = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]    
        return f"{LowValue}{separator}{HighValue}"
    }

    /// Generate CM_RANGE_SIMPLE
    ClassMethod GenerateCMRANGESIMPLE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMRANGESIMPLE
        import iris

        LowValue = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        HighValue = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]      
        return f"{LowValue}{separator}{HighValue}"
    }

    /// Generate CM_RFR
    ClassMethod GenerateCMRFR(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMRFR
        import iris,importlib,random
        import hl7apy as cr
        ReferenceRange = iris.cls(__name__).GenerateCMRANGE(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Sex := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70001")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Sex = random.choice(["F","M","O","U"])

        AgeRange = iris.cls(__name__).GenerateCMRANGE(hl7version,characterSeparators)
        GestationalAgeRange = iris.cls(__name__).GenerateCMRANGE(hl7version,characterSeparators)
        Species = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (RaceSubspecies := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70005")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            RaceSubspecies = random.choice(["1002-5","2028-9","2054-5","2076-8","2106-3","2131-1"])

        TextCondition = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2] 
        return f"{ReferenceRange}{separator}{Sex}{separator}{AgeRange}{separator}{GestationalAgeRange}{separator}{Species}{separator}{RaceSubspecies}{separator}{TextCondition}"
    }

    /// Generate CM_RI
    ClassMethod GenerateCMRI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMABSRI
        import iris,importlib,random
        import hl7apy as cr

        repeatpattern = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (explicittimeintevall := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70335")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            explicittimeintevall = random.choice(["QnS","QnM","QnH","QnD","QnW","QnL","QnJd","BID","TID","QID","xID","QAM","QSHIFT","QOD","QHS","QPM","C","Uxxx","PRN","PRNxxx","Once","Meal Related Timings","A","P","I","M","D","V"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]    
        return f"{repeatpattern}{separator}{explicittimeintevall}"
    }

    /// Generate CM_RMC
    ClassMethod GenerateCMRMC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMRMC
        import iris,importlib,random
        import hl7apy as cr
        
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (roomtype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70145")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            roomtype = random.choice(["ICU","2ICU","PRI","2SPR","2PRI","SPR"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (amounttype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70146")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            amounttype = random.choice(["DF","LM","PC","RT","UL"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (coverageamount := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70193")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            coverageamount = random.choice(["AT","LM","PC","UL"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{roomtype}{separator}{amounttype}{separator}{coverageamount}"
    }

    /// Generate CM_SPD
    ClassMethod GenerateCMSPD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMSPD
        import iris


        specialtyname = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        governingboard = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        eligibleorcertified = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        dateofcertification = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{specialtyname}{separator}{governingboard}{separator}{eligibleorcertified}{separator}{dateofcertification}"
    }

    /// Generate CM_SPS
    ClassMethod GenerateCMSPS(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMSPS
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (specimensourcenameorcode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70070")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            specimensourcenameorcode = random.choice(["RBC","RT","SAL","SEM","PUS","SKM","SER","SNV","SPRM","PRT","SPTC","PLAS","SPTT","SPT","PAT","MEC","MILK","MLK","NAIL","NOS","PLC","PAFL","PRP","TISU","PLB","STL","PLR","PMN","PPP","ORH","UR","MBLD","XXX","WNDE","WNDD","WNDA","WND","WICK","WBC","WAT","VOM","USUB","URTH","URT","TISPL","TLNG","SWT","TEAR","THRB","THRT","TISG","URNS","TLGI","URC","TSMI","TUB","ULC","UMB","UMED","STON","TISS","BPU","DOSE","DIAF","CYST","CVX","CVM","CUR","CTP","COL","CNJT","CDM","CBLD","CALC","BRTH","DRN","BLD","MAR","ABS","AMN","ASP","BBL","BRO","BIFL","BRN","BLDA","BLDC","BLDV","BON","BPH","CSF","BDY","LAM","GEN","GENC","GENL","GENV","HAR","IHG","GAST","DUFL","IT","CNL","LN","LNA","LNV","LYM","MAC","ISLT","ENDM","LIQ","GAS","EAR","EARW","ENDC","EOS","EXHLD","FIST","FLU","ELT","FLT","SKN","FIB","EYE"])
        
        additives = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)
        freetext = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)
        bodysite = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        sitemodifier = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        collectionmodifiermethodcode = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{specimensourcenameorcode}{separator}{additives}{separator}{freetext}{separator}{bodysite}{separator}{sitemodifier}{separator}{collectionmodifiermethodcode}"
    }

    /// Generate CM_UVC
    ClassMethod GenerateCMUVC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMRMC
        import iris,importlib,random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (valuecode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70153")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            valuecode = random.choice(["01","02","04","05","06","08","09","10","11","12","13","14","15","16","17","21","22","23","24","30","31","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","56","57","58","59","60","67","68","70 ... 72","75 ... 79","80","81","A1","A2","A3","X0","X4"])
        
        valueamount  = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{valuecode}{separator}{valueamount}"
    }

    /// Generate CM_VR
    ClassMethod GenerateCMVR(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMVR
        import iris

        firstdatacodevalue = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Lastdatacodecalue = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{firstdatacodevalue}{separator}{Lastdatacodecalue}"
    }

    /// Generate CM_WVI
    ClassMethod GenerateCMWVI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CMWVI
        import iris

        ChannelNumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        ChannelName = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{ChannelNumber}{separator}{ChannelName}"
    }

    /// Generate CN
    ClassMethod GenerateCN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CN composite ID number and name      
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Initialize Faker instance
        fake = Faker()

        IDnumberST = random.randint(100000000000000, 999999999999999)
        familyname = fake.last_name()
        givenname = fake.first_name()
        middleinitialorname =  fake.first_name()
        suffix = fake.suffix()
        prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])

        sourcetable = fake.pystr()[:4]

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (assigningauthority := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70363")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            assigningauthority = random.choice(["AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"])
        
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{IDnumberST}{separator}{familyname}{separator}{givenname}{separator}{middleinitialorname}{separator}{suffix}{separator}{prefix}{separator}{Degree}{separator}{sourcetable}{separator}{assigningauthority}"
    }

    /// Generate CN_SIMPLE
    ClassMethod GenerateCNSIMPLE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CN composite ID number and name      
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
           
        # Initialize Faker instance
        fake = Faker()

        IDnumberST = random.randint(100000000000000, 999999999999999)
        familyname = fake.last_name()
        givenname = fake.first_name()
        middleinitialorname =  fake.first_name()
        suffix = fake.suffix()
        prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])
        
        sourcetable = fake.pystr()[:4]

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (assigningauthority := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70363")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            assigningauthority = random.choice(["AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"])


        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{IDnumberST}{separator}{familyname}{separator}{givenname}{separator}{middleinitialorname}{separator}{suffix}{separator}{prefix}{separator}{Degree}{separator}{sourcetable}{separator}{assigningauthority}"
    }

    /// Generate CNS
    ClassMethod GenerateCNS(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CNS Composite ID number and Name simplified      
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        
        # Initialize Faker instance
        fake = Faker()

        IDnumberST = random.randint(100000000000000, 999999999999999)
        familyname = fake.last_name()
        givenname = fake.first_name()
        secondandfurthergivennamesor =  fake.first_name()
        suffix = fake.suffix()
        prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])
        
        sourcetable = fake.pystr()[:4]

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (assigauthnamespaceID := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70363")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            assigauthnamespaceID = random.choice(["AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"])
        
        assigauthuniversalID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (assigauthuniversalIDtype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70301")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            assigauthuniversalIDtype = random.choice(["DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","UUID","x400","x500"])


        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDnumberST}{separator}{familyname}{separator}{givenname}{separator}{secondandfurthergivennamesor}{separator}{suffix}{separator}{prefix}{separator}{Degree}{separator}{sourcetable}{separator}{assigauthnamespaceID}{separator}{assigauthuniversalID}{separator}{assigauthuniversalIDtype}"
    }

    /// Build CNE datatype
    ClassMethod GenerateCNE(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        #CNE Coded with No Exceptions
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        
        # Initialize Faker instance
        fake = Faker()



        # Build the example Datatype
        Identifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Text = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)

        # name of coding system version logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameofCodingSystem = random.choice(["99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"])
        
        AlternateIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateText = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)

        # name of coding system version logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofAlternateCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameofAlternateCodingSystem = random.choice(["99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"])
        
        CodingSystemVersionID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateCodingSystemVersion = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        OriginalText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        if hl7version > "2.6":
            SecAltIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltText = iris.cls(__name__).GenerateFT(hl7version,characterSeparators)

        # name of coding system version logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofSecAltCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameofSecAltCodingSystem = random.choice(["99zzz or L","ACR","ART","ANS+","AS4","AS4E","ATC","C4","C5","CAS","CD2","CDCA","CDCM","CDS","CE","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","FDDC","FDDX","FDK","HB","HCPCS","HCPT","HHC","HI","HL7nnnn","HOT","HPC","I10","I10P","I9","I9C","IBT","IBTnnnn","IC2","ICD10AM","ICD10CA","ICDO","ICS","ICSD","ISOnnnn","ISO+","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NDA","NDC","NIC","NPI","NUBC","OHA","POS","RC","SDM","SNM","SNM3","SNT","UC","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC"])

        SecAltCodingSystemVersionID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        CodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        ValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        ValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        AlternateCodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        SecAltCodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        SecAltValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        SecAltValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        if hl7version < "2.7":
            return f"{Identifier}{separator}{Text}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateText}{separator}{NameofAlternateCodingSystem}"
        else:
            return f"{Identifier}{separator}{Text}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{separator}{SecAltText}{separator}{NameofSecAltCodingSystem}{separator}{SecAltCodingSystemVersionID}{separator}{CodingSystemOID}{separator}{ValueSetOID}{separator}{ValueSetVersionID}{separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
    }

    /// Generate CNN
    ClassMethod GenerateCNN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CNN Composite ID Number and Name Simplified   
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        
        # Initialize Faker instance
        fake = Faker()

        IDNumber = random.randint(100000000000000, 999999999999999)
        FamilyName = fake.last_name()
        GivenName = fake.first_name()
        SecondandFurtherGivenNamesor =  fake.first_name()
        Suffix = fake.suffix()
        Prefix = fake.prefix()

        # Degree try logic for when the table doesn't exist in HL7apy
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])

        # trSourceTable table is empty so just create a string
        SourceTable = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # HL7apy is missing table 0363 so can't use table function
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AssigAuthNamespaceID := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70363")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AssigAuthNamespaceID = random.choice(["AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"])

        AssigAuthNamespaceID = random.choice(AssigAuthNamespaceID)
        AssigAuthUniversalID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # AssigAuthUniversalIDType try logic when table doesn't exist
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AssigAuthUniversalIDType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70301")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AssigAuthUniversalIDType = random.choice(["DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDNumber}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigAuthNamespaceID}{separator}{AssigAuthUniversalID}{separator}{AssigAuthUniversalIDType}"
    }

    /// Generate CN_PERSON
    ClassMethod GenerateCNPERSON(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
         
        # Initialize Faker instance
        fake = Faker()

        IDnumber = random.randint(100000000000000, 999999999999999)
        familiyname = fake.last_name()
        givenname = fake.first_name()
        middleinitialorname =  fake.first_name()
        suffix = fake.suffix()
        prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])

        sourcetableid = fake.pystr()[:4]
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDnumber}{separator}{familiyname}{separator}{givenname}{separator}{middleinitialorname}{separator}{suffix}{separator}{prefix}{separator}{Degree}{separator}{sourcetableid}"
    }

    /// Generate CN_PHYSICIAN
    ClassMethod GenerateCNPHYSICIAN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr
        #Call Table method to get list of tables in this version
           
        # Initialize Faker instance
        fake = Faker()

        IDnumber = random.randint(100000000000000, 999999999999999)
        familiyname = fake.last_name()
        givenname = fake.first_name()
        middleinitialorname =  fake.first_name()
        suffix = fake.suffix()
        prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])
        
        sourcetableid = fake.pystr()[:4]
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDnumber}{separator}{familiyname}{separator}{givenname}{separator}{middleinitialorname}{separator}{suffix}{separator}{prefix}{separator}{Degree}{separator}{sourcetableid}"
    }

    /// Generate CP
    ClassMethod GenerateCP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CP Composite Price
        import iris,random,importlib
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        


        price = iris.cls(__name__).GenerateMO(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (pricetype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70205")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            pricetype = random.choice(["AP","DC","IC","PF","TF","TP","UP"])

        fromvalue = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        
        tovalue = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        rangeunits = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (rangetype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70298")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            rangetype = random.choice(["P","F"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{price}{separator}{pricetype}{separator}{fromvalue}{separator}{tovalue}{separator}{rangeunits}{separator}{rangetype}"
    }

    /// Generate CQ
    ClassMethod GenerateCQ(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # CQ Composite Quantity with Units
        import iris,random
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()

        # Build data type
        Quantity = random.randint(1, 199999999)
        # units of measurement
        Units = "m","s","mol","A","K","cd","kg"
        Units = random.choice(Units)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Quantity}{separator}{Units}"
    }

    /// Generate CQ_QUANTITY
    ClassMethod GenerateCQQUANTITY(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CQQUANTITY
        import iris,random
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()

        # Build data type
        quantity = random.randint(1, 199999999)
        units = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{quantity}{separator}{units}"
    }

    /// Generate CQ_SIMPLE
    ClassMethod GenerateCQSIMPLE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CQSIMPLE
        import iris,random
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()
        # Build data type
        quantity = random.randint(1, 199999999)
        units = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
         # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            separator = characterSeparators[1:2]
        return f"{quantity}{separator}{units}"
    }

    /// Generate CSU
    ClassMethod GenerateCSU(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CSU Channel Sensitivity
        import iris,random,importlib
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Build data type
        ChannelSensitivity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        UnitofMeasureIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        UnitofMeasureDescription = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (UnitofMeasureCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            UnitofMeasureCodingSystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])
        
        
        AltUnitofMeasureIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AltUnitofMeasureDescription = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AltUnitofMeasureCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AltUnitofMeasureCodingSystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])

        if hl7version > "2.6":
            UnitCodingSystemVerID = str(random.randint(100, 999))  # Random 3-digit code
            AltUnitCodingSystemVerID = str(random.randint(100, 999))  # Random 3-digit code
            OriginalText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltUnitIdentifier = str(random.randint(100, 999))  # Random 3-digit code
            SecAltUnitText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (NameofSecAltUnitCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                NameofSecAltUnitCodingSystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])


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

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version <= "2.6":
            return f"{ChannelSensitivity}{separator}{UnitofMeasureIdentifier}{separator}{UnitofMeasureDescription}{separator}{UnitofMeasureCodingSystem}{separator}{AltUnitofMeasureIdentifier}{separator}{AltUnitofMeasureDescription}{separator}{AltUnitofMeasureCodingSystem}"
        else:
            return f"{ChannelSensitivity}{separator}{UnitofMeasureIdentifier}{separator}{UnitofMeasureDescription}{separator}{UnitofMeasureCodingSystem}{separator}{AltUnitofMeasureIdentifier}{separator}{AltUnitofMeasureDescription}{separator}{AltUnitofMeasureCodingSystem}{separator}{UnitCodingSystemVerID}{separator}{AltUnitCodingSystemVerID}{separator}{OriginalText}{separator}{SecAltUnitIdentifier}{separator}{SecAltUnitText}{separator}{NameofSecAltUnitCodingSystem}{separator}{SecAltUnitCodingSystemVerID}{separator}{UnitCodingSystemOID}{separator}{UnitValueSetOID}{separator}{UnitValueSetVerID}{separator}{AltUnitCodingSystemOID}{separator}{AltUnitValueSetOID}{separator}{AltUnitValueSetVerID}{separator}{SecAltUnitCodingSystemOID}{separator}{SecAltUnitValueSetOID}{separator}{SecAltUnitValueSetVerID}"
    }

    /// Generate CWE
    ClassMethod GenerateCWE(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent = 0) [ Language = python ]
    {
        # CWE Coded with Exceptions
        import iris,random,importlib
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        # Build data type
        Identifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Text = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameofCodingSystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])
        
        AlternateIdentifier	 = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameofAlternateCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameofAlternateCodingSystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])
        
        CodingSystemVersionID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AlternateCodingSystemVersion = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        OriginalText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        if hl7version > "2.6":
            SecAltIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            OriginalText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (NameofSecAltCodingSystem := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70396")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                NameofSecAltCodingSystem = random.choice(["L","99zzz","ACR","ALPHAID2006","ALPHAID2007","ALPHAID2008","ALPHAID2009","ALPHAID2010","ALPHAID2011","ART","ANS+","AS4","AS4E","ATC","C4","CAPECC","CAS","CCC","CD2","CDCA","CDCEDACUITY","CDCM","CDCOBS","CDCPHINVS","CDCREC","CDS","CE (obsolete)","CLP","CPTM","CST","CVX","DCM","E","E5","E6","E7","ENZC","EPASRS","FDAUDI","FDAUNII","FDDC","FDDX","FDK","FIPS5_2","FIPS6_4","GDRG2004","GDRG2005","GDRG2006","GDRG2007","GDRG2008","GDRG2009","GMDC2004","GMDC2005","GMDC2006","GMDC2007","GMDC2008","GMDC2009","GS1UDI","HB","HCPCS","HCPT","HHC","HI","HIBUDI","HL7nnnn","HOT","HPC","I10","I10G2004","I10G2005","I10G2006","I10P","I9","I9C","I9CDX","I9CP","IBT","IBTnnnn","IC2","ICCUDI","ICD10GM2007","ICD10GM2008","ICD10GM2009","ICD10GM2010","ICD10GM2011","ICD10AM","ICD10CA","ICDO","ICDO2","ICDO3","ICS","ICSD","ISOnnnn (deprecated)","ISO","ISO3166_1","ISO3166_2","ISO4217","ISO639","ITIS","IUPP","IUPC","JC8","JC10","JJ1017","LB","LN","MCD","MCR","MDC","MDDX","MEDC","MEDR","MEDX","MGPI","MVX","NAICS","NCPDPnnnnsss","NDA","NDC","NDFRT","NIC","NIP001","NIP002","NIP004","NIP007","NIP008","NIP009","NIP010","NND","NPI","NUBC","NULLFL","OHA","O301","O3012004","O3012005","O3012006","OPS2007","OPS2008","OPS2009","OPS2010","OPS2011","PHINQUESTION","PLR","PLT","POS","RC","RXNORM","SCT","SCT2","SDM","SIC","SNM","SNM3","SNT","SOC","UB04FL14","UB04FL15","UB04FL17","UB04FL31","UB04FL35","UB04FL39","UC","UCUM","UMD","UML","UPC","UPIN","USPS","W1","W2","W4","WC","X12Dennnn"])
            
            SecAltCodingSystemVersionID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            CodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            ValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            ValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
            AlternateCodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            AlternateValueSetOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            AlternateValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
            SecAltCodingSystemOID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltValueSetOID= iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            SecAltValueSetVersionID = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)

        # if this is going to be a subcomponent then need to switch separator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        if hl7version <= "2.6":
            return f"{Identifier}{separator}{Text}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}"
        else:
            return f"{Identifier}{separator}{Text}{separator}{NameofCodingSystem}{separator}{AlternateIdentifier}{separator}{AlternateText}{separator}{NameofAlternateCodingSystem}{separator}{CodingSystemVersionID}{separator}{AlternateCodingSystemVersion}{separator}{OriginalText}{separator}{SecAltIdentifier}{component_separator}{SecAltText}{component_separator}{NameofSecAltCodingSystem}{component_separator}{SecAltCodingSystemVersionID}{component_separator}{CodingSystemOID}{component_separator}{ValueSetOID}{component_separator}{ValueSetVersionID}{component_separator}{AlternateCodingSystemOID}{separator}{AlternateValueSetOID}{separator}{AlternateValueSetVersionID}{separator}{SecAltCodingSystemOID}{separator}{SecAltValueSetOID}{separator}{SecAltValueSetVersionID}"
    }

    /// Build CX datatype
    ClassMethod GenerateCX(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # CX Extended Composite ID with Check Digit
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime, timedelta
        import hl7apy as cr
       
        
        # Initialize Faker instance
        fake = Faker()

        # Build the example Datatype
        IDNumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        CheckDigit = ''.join(random.choices(string.ascii_uppercase, k=1))  # Random letter

        # Check Digit Scheme logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CheckDigitScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            CheckDigitScheme = random.choice(["NPI","ISO","M10","M11"]) 



        # need logic to generate AssigningAuthority
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AssigningAuthority := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70363")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            AssigningAuthority = random.choice(["AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"])

        # IdentifierTypeCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (IdentifierTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70203")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")
            IdentifierTypeCode = random.choice(["AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"])
        
        AssigningFacility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # Using current time
        ini_time_for_now = datetime.now()

        if hl7version >"2.3.1":
            EffectiveDate = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
            # Need future date
            ExpirationDate = ini_time_for_now + timedelta(days = 30)
            ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")
        if hl7version >"2.4":
            AssigningJurisdiction = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
            AssigningAgencyorDepartment = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        if hl7version >"2.6":
            SecurityCheck = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (SecurityCheckScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70904")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                SecurityCheckScheme = random.choice(["BCV","CCS","VID"])


        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        # return case
        match hl7version:
            case "2.3":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}"
            case "2.3.1":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}"
            case "2.4":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}"
            case "2.5":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
            case "2.5.1":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
            case "2.6":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
            case "2.7":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.7.1":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.8":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.8.1":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.8.2":
                return f"{IDNumber}{separator}{CheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case _:
                return

    }

    /// Generate DDI
    ClassMethod GenerateDDI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DDI Daily Deductible Information
        import iris

        DelayDays = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        MonetaryAmount = iris.cls(__name__).GenerateMO(hl7version,characterSeparators,subcomponent=1)
        NumberofDays = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{DelayDays}{separator}{MonetaryAmount}{separator}{NumberofDays}"
    }

    /// Generate DIN
    ClassMethod GenerateDIN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DIN Date and Institution Name
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime, timedelta
    
        # Initialize Faker instance
        fake = Faker()

        if hl7version < "2.7":
            date = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
            institutionname = fake.company()
        else:
            date = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
            institutionname = fake.company()
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{date}{separator}{institutionname}"
    }

    /// Generate DLD
    ClassMethod GenerateDLD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DLD Discharge Location and Date
        import iris

        if hl7version < "2.7":
            DischargeLocation = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            EffectiveDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        else:
            DischargeLocation = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
            EffectiveDate = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{DischargeLocation}{separator}{EffectiveDate}"

    }

    /// Generate DLN
    ClassMethod GenerateDLN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DLN Driver_s License Number
        import iris
        from faker import Faker
        from faker.providers import address
        # Initialize Faker instance
        fake = Faker()

        if hl7version < "2.7":
            LicenseNumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            # table 399 for country not filled in but HL7apy has a table for V2.5
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (IssuingStateProvinceCountry := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70399")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                IssuingStateProvinceCountry = fake.country_code('alpha-3')

            ExpirationDate = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)

        else:
            LicenseNumber = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
            # table 399 for country not filled in but HL7apy has a table for V2.5
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (IssuingStateProvinceCountry := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70399")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                IssuingStateProvinceCountry = fake.country_code('alpha-3')
            ExpirationDate = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{LicenseNumber}{separator}{IssuingStateProvinceCountry}{separator}{ExpirationDate}"
    }

    /// Generate DLT
    ClassMethod GenerateDLT(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DLT Delta
        import iris

        NormalRange = iris.cls(__name__).GenerateNR(hl7version,characterSeparators)
        NumericThreshold = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        ChangeComputation = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        DaysRetained = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{NormalRange}{separator}{NumericThreshold}{separator}{ChangeComputation}{separator}{DaysRetained}"
    }

    /// Generate DR
    ClassMethod GenerateDR(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # DR Date/Time Range
        from datetime import datetime, timedelta

        # Using current time
        ini_time_for_now = datetime.now()
        rangestartdatetime = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
        # Need future date like EffectiveDate + 30 days
        rangeenddatetime = ini_time_for_now + timedelta(days = 30)
        rangeenddatetime = rangeenddatetime.strftime("%Y%m%d%H%M%S")

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{rangestartdatetime}{separator}{rangeenddatetime}"
    }

    /// Generate DR_SIMPLE
    ClassMethod GenerateDRSIMPLE(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DR Date/Time Range
        from datetime import datetime, timedelta

        # Using current time
        ini_time_for_now = datetime.now()
        RANGE_START_DATE_TIME = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
        # Need future date like EffectiveDate + 30 days
        RANGE_END_DATE_TIME = ini_time_for_now + timedelta(days = 30)
        RANGE_END_DATE_TIME = RANGE_END_DATE_TIME.strftime("%Y%m%d%H%M%S")

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{RANGE_START_DATE_TIME}{separator}{RANGE_END_DATE_TIME}"
    }

    /// Generate DT
    ClassMethod GenerateDT(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # DT - Date, in the format YYYYMMDD
        from datetime import datetime
        return datetime.now().strftime("%Y%m%d")  # Current date in YYYYMMDD
    }

    /// Generate DTM
    ClassMethod GenerateDTM(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # DTM Date/Time - An Elementary Data Type
        from datetime import datetime
        return datetime.now().strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
    }

    /// Generate DTN
    ClassMethod GenerateDTN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # DTN Day Type and Number
        import iris,importlib, random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (DayType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70149")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            DayType = random.choice(["AP","DE","PE"])

        NumberofDays = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{DayType}{separator}{NumberofDays}"
    }

    /// Generate ED
    ClassMethod GenerateED(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # ED Encapsulated Data
        import iris,importlib, random
        import hl7apy as cr

        #Call Table method to get list of tables in this version
        
        
        SourceApplication = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)
        if hl7version < "2.6":
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (TypeofData := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70191")) is not None:
            # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                TypeofData = random.choice(["SI","NS","SD","TX","FT","TEXT","IM","AU","SGML","AP","Image","Audio","Application"])
        else:
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (TypeofData := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70834")) is not None:
            # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                TypeofData = random.choice(["application","audio","image","model","text","video","multipart"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (DataSubtype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70291")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            DataSubtype = random.choice(["x-hl7-cda-level-one","..."])


        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Encoding := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70299")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Encoding = random.choice(["A","Hex","Base64"])

        Data = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SourceApplication}{separator}{TypeofData}{separator}{DataSubtype}{separator}{Encoding}{separator}{Data}"
    }

    /// Generate EI
    ClassMethod GenerateEI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # EI Entity Identifier
        import iris,importlib, random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
           
        
        EntityIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        NamespaceID = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        UniversalID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (UniversalIDType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70301")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            UniversalIDType = random.choice(["DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","UUID","x400","x500"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{EntityIdentifier}{separator}{NamespaceID}{separator}{UniversalID}{separator}{UniversalIDType}"
    }

    /// Generate EIP
    ClassMethod GenerateEIP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # EIP Entity Identifier Pair
        import iris
        
        PlacerAssignedIdentifier = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)
        FillerAssignedIdentifier = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PlacerAssignedIdentifier}{separator}{FillerAssignedIdentifier}"
    }

    /// Generate ELD
    ClassMethod GenerateELD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # ELD Error Location and Description
        import iris,importlib, random
        import hl7apy as cr

        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get segment reference
            try:
                SEGMENTS = lib.segments.SEGMENTS
            except:
                SEGMENTS = {}


        
        for idx, x in enumerate(SEGMENTS):
            if idx == 0:
                segList = [x]
            else:
                segList.append(x)
        
        SegmentID = random.choice(segList)
        SegmentSequence = str(random.randint(1, 20))
        FieldPosition = str(random.randint(1, 20))
        CodeIdentifyingError = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SegmentID}{separator}{SegmentSequence}{separator}{FieldPosition}{separator}{CodeIdentifyingError}"
    }

    /// Generate ERL
    ClassMethod GenerateERL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # ERL Error Location
        import iris,importlib, random
        import hl7apy as cr
        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get segment reference
            try:
                SEGMENTS = lib.segments.SEGMENTS
            except:
                SEGMENTS = {}

        
        for idx, x in enumerate(SEGMENTS):
            if idx == 0:
                segList = [x]
            else:
                segList.append(x)

        SegmentID = random.choice(segList)
        SegmentSequence = str(random.randint(1, 20))
        FieldPosition = str(random.randint(1, 20))
        FieldRepetition = str(random.randint(1,20))
        ComponentNumber = str(random.randint(1,20))
        SubComponentNumber = str(random.randint(1,20))
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SegmentID}{separator}{SegmentSequence}{separator}{FieldPosition}{separator}{FieldRepetition}{separator}{ComponentNumber}{separator}{SubComponentNumber}"
    }

    /// Generate FC
    ClassMethod GenerateFC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # FC Financial Class
        import iris

        if hl7version < "2.7":
            FinancialClassCode = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
            EffectiveDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        else:
            FinancialClassCode = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
            EffectiveDate = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{FinancialClassCode}{separator}{EffectiveDate}"
    }

    /// Generate FN
    ClassMethod GenerateFN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # FN Family Name
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()

        Surname = fake.last_name()
        OwnSurnamePrefix = fake.last_name()
        OwnSurname = fake.last_name()
        SurnamePrefixFromPartnerSpou = fake.last_name()
        SurnameFromPartnerSpouse = fake.last_name()
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version <"2.4":
            return f"{Surname}{separator}{OwnSurnamePrefix}"
        else:
            return f"{Surname}{separator}{OwnSurnamePrefix}{separator}{OwnSurnamePrefix}{separator}{OwnSurname}{separator}{SurnamePrefixFromPartnerSpou}{separator}{SurnameFromPartnerSpouse}"
    }

    /// Generate FT
    ClassMethod GenerateFT(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # FT formatted text data - An Elementary Data Type
        import random,string 
        return ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
    }

    /// Generate GTS
    ClassMethod GenerateGTS(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # GTS General Timing Specification - An Elementary Data Type
        import random,string 
        return ''.join(random.choices(string.ascii_uppercase, k=5))  # Random description
    }

    /// Build HD datatype
    ClassMethod GenerateHD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # HD Hierarchic Designator
        import iris,importlib,random
        from faker import Faker
        from datetime import datetime
        # Initialize Faker instance
        fake = Faker()
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Build the example Datatype
        NamespaceID = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        UniversalID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (UniversalIDType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70301")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            UniversalIDType = random.choice(["DNS","EUI64","CLIA","CLIP","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"])


        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{NamespaceID}{separator}{UniversalID}{separator}{UniversalIDType}"
    }

    /// Generate ICD
    ClassMethod GenerateICD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # ICD Insurance Certification Definition
        import iris,importlib,random
        from faker import Faker
        from datetime import datetime
        # Initialize Faker instance
        fake = Faker()
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CertificationPatientType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70150")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            CertificationPatientType = random.choice(["ER","IPE","OPE","UR"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CertificationRequired := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70136")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            CertificationRequired = random.choice(["Y","N"])

        if hl7version < "2.6":
            DateTimeCertificationRequire = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        else:
            DateTimeCertificationRequire = iris.cls(__name__).GenerateDTM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{CertificationPatientType}{separator}{CertificationRequired}{separator}{DateTimeCertificationRequire}"
    }

    /// Generate ID
    ClassMethod GenerateID(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # ID CODED VALUE - An Elementary Data Type
        import random

        return random.randint(1, 199)
    }

    /// Generate IS
    ClassMethod GenerateIS(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # IS String Data - An Elementary Data Type
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()    
        return fake.pystr()[:20]
    }

    /// Generate JCC
    ClassMethod GenerateJCC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # JCC Job Code/Class
        import iris

        if hl7version < "2.7":
            JobCode = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        else:
            JobCode = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent-1)

        if hl7version < "2.7":
            JobClass = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        else:
            JobClass = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        JobDescriptionText = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version < "2.5":
            return f"{JobCode}{separator}{JobClass}"
        else:
            return f"{JobCode}{separator}{JobClass}{separator}{JobDescriptionText}"
    }

    /// Generate LA1
    ClassMethod GenerateLA1(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # LA1 Location with Address Variation 1
        import iris,importlib, random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        PointofCare = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Room = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Bed = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Facility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        LocationStatus = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PatientLocationType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70305")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PatientLocationType = random.choice(["C","D","H","N","O","P","S"])

        Building = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Floor = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Address = iris.cls(__name__).GenerateAD(hl7version,characterSeparators,subcomponent=1)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PointofCare}{separator}{Room}{separator}{Bed}{separator}{Facility}{separator}{LocationStatus}{separator}{PatientLocationType}{separator}{Building}{separator}{Floor}{separator}{Address}"
    }

    /// Generate LA2
    ClassMethod GenerateLA2(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # LA2 Location with Address Variation 2
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime, timedelta
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Initialize Faker instance
        fake = Faker()

        PointofCare = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Room = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Bed = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Facility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        LocationStatus = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PatientLocationType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70305")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PatientLocationType = random.choice(["C","D","H","N","O","P","S"])

        Building = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        # Floor also table 308
        Floor = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        StreetAddress = fake.street_address()

        OtherDesignation = fake.street_address()

        City = fake.city() 

        StateorProvince = fake.state() 

        ZiporPostalCode = fake.zipcode()

        # table 399 for country not filled in but HL7apy has a table for V2.5
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Country := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70399")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Country = fake.country_code('alpha-3')
        
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AddressType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70190")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AddressType = random.choice(["BA","N","BDL","F","C","B","H","L","M","O","P","RH","BR"])

        OtherGeographicDesignation = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PointofCare}{separator}{Room}{separator}{Bed}{separator}{Facility}{separator}{LocationStatus}{separator}{PatientLocationType}{separator}{Building}{separator}{Floor}{separator}{StreetAddress}{separator}{OtherDesignation}{separator}{City}{separator}{StateorProvince}{separator}{ZiporPostalCode}{separator}{Country}{separator}{AddressType}{separator}{OtherGeographicDesignation}"
    }

    /// Generate MA
    ClassMethod GenerateMA(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # MA Multiplexed Array
        import iris

        Quantity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Denomination = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        if hl7version < "2.6":
            Sample1FromChannel1 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            Sample1FromChannel2 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            Sample1FromChannelN = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            Sample2FromChannel1 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            Sample2FromChannelN = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            SampleNFromChannelN = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            return f"{Sample1FromChannel1}{separator}{Sample1FromChannel2}{separator}{Sample1FromChannelN}{separator}{Sample2FromChannel1}{separator}{Sample2FromChannelN}{separator}{SampleNFromChannelN}"

        else:
            SampleYFromChannel1 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            SampleYFromChannel2 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            SampleYFromChannel3 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            SampleYFromChannel4 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            return f"{SampleYFromChannel1}{separator}{SampleYFromChannel2}{separator}{SampleYFromChannel3}{separator}{SampleYFromChannel4}"
    }

    /// Generate MFI
    ClassMethod GenerateMFI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # MFI Master File Identification
        import iris, random, importlib, string
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (MasterFileIdentifier := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70175")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            MasterFileIdentifier = random.choice(["CDM", "CMA", "CMB", "LOC", "OMA", "OMB", "OMC", "OMD","PRA","STF","CLN","OME","INV"])

        MasterFileApplicationIdentif = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (FileLevelEventCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70175")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            FileLevelEventCode = random.choice(["REP","UPD"])

        EnteredDateTime = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        EffectiveDateTime = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (ResponseLevelCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70179")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            ResponseLevelCode = random.choice(["NE","ER","AL","SU"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{MasterFileIdentifier}{separator}{MasterFileApplicationIdentif}{separator}{FileLevelEventCode}{separator}{EnteredDateTime}{separator}{EffectiveDateTime}{separator}{ResponseLevelCode}"
    }

    /// Generate MO
    ClassMethod GenerateMO(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # MO Money
        import iris

        Quantity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Denomination = iris.cls(__name__).GenerateID(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Quantity}{separator}{Denomination}"
    }

    /// Generate MOC
    ClassMethod GenerateMOC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # MOC Money and Code
        import iris

        MonetaryAmount = iris.cls(__name__).GenerateMO(hl7version,characterSeparators,subcomponent=1)

        ChargeCode = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{MonetaryAmount}{separator}{ChargeCode}"
    }

    /// Generate MOP
    ClassMethod GenerateMOP(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # MOP Money or Percentage
        import iris,random,importlib
        from faker import Faker
        from faker.providers import currency
        # Initialize Faker instance
        fake = Faker()
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (MoneyorPercentageIndicator := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70148")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            MoneyorPercentageIndicator = random.choice(["AT","PC"])

        MoneyorPercentageQuantity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version < "2.5":
            return f"{MoneyorPercentageIndicator}{separator}{MoneyorPercentageQuantity}"
        else:
            CurrencyDenomination = fake.currency()[0]
            return f"{MoneyorPercentageIndicator}{separator}{MoneyorPercentageQuantity}{separator}{CurrencyDenomination}"
    }

    /// Generate MSG
    ClassMethod GenerateMSG(hl7version = "2.5", characterSeparators ="|^~\&",message="ADT_A01",subcomponent=0) [ Language = python ]
    {
        # MSG Message Type
        import iris,random,importlib

        import hl7apy as cr

        separator = characterSeparators[1:2]
        if message:
            if "_" in message:
                return message.replace("_","^") + separator + message
            else:
                return message
        else:

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (MessageCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70076")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                MessageCode = {}

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (TriggerEvent := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70003")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                TriggerEvent = {}

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (MessageStructure := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70354")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                MessageStructure = {}


            return f"{MessageCode}{separator}{TriggerEvent}{separator}{MessageStructure}"
    }

    /// Generate NA
    ClassMethod GenerateNA(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # NA Numeric Array
        import iris
 
        Value1 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Value2 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Value3 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Value4 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Value1}{separator}{Value2}{separator}{Value3}{separator}{Value4}"
    }

    /// Generate NM
    ClassMethod GenerateNM(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # NM Numeric - An Elementary Data Type
        import random

        return random.randint(1, 199)
    }

    /// Generate NDL
    ClassMethod GenerateNDL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # NDL Name with Date and Location
        import iris

        if hl7version < "2.4":
            Name = iris.cls(__name__).GenerateCN(hl7version,characterSeparators,subcomponent=1)

        else:
            Name = iris.cls(__name__).GenerateCNN(hl7version,characterSeparators,subcomponent=1)

        StartDatetime = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        EndDatetime = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        PointofCare = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Room = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Bed = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Facility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        LocationStatus = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PatientLocationType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70305")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PatientLocationType = random.choice(["C","D","H","N","O","P","S"])


        Building = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        Floor = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Name}{separator}{StartDatetime}{separator}{EndDatetime}{separator}{PointofCare}{separator}{Room}{separator}{Bed}{separator}{Facility}{separator}{LocationStatus}{separator}{PatientLocationType}{separator}{Building}{separator}{Floor}"
    }

    /// Generate NR
    ClassMethod GenerateNR(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # NR Numeric Range
        import iris,random

        LowValue = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        HighValue = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)+random.randint(1, 999999)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{LowValue}{separator}{HighValue}"
    }

    /// Generate OCD
    ClassMethod GenerateOCD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # OCD Occurrence Code and Date
        import iris,random

        OccurrenceCode = iris.cls(__name__).GenerateCNE(hl7version,characterSeparators,subcomponent=1)
        OccurrenceDate = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{OccurrenceCode}{separator}{OccurrenceDate}"
    }

    /// Generate OG
    ClassMethod GenerateOG(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # OG Observation Grouper
        import iris

        OriginalSubIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Group = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Sequence = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        Identifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{OriginalSubIdentifier}{separator}{Group}{separator}{Sequence}{separator}{Identifier}"
    }

    /// Generate OSD
    ClassMethod GenerateOSD(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # OSD Order Sequence Definition
        import iris,random,importlib
        from faker import Faker
        import hl7apy as cr
        # Initialize Faker instance
        fake = Faker()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (SequenceResultsFlag := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70524")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            SequenceResultsFlag = random.choice(["S","C","R"])

        PlacerOrderNumberEntityIdent = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        PlacerOrderNumberNamespaceID = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        FillerOrderNumberEntityIdent = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        FillerOrderNumberNamespaceID = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
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
        MaximumNumberofRepeats = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        PlacerOrderNumUnivID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PlacerOrderNumUnivIDType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70301")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PlacerOrderNumUnivIDType = random.choice(["DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"])

        FillerOrderNumUnivID = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (FillerOrderNumUnivIDType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70301")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            FillerOrderNumUnivIDType = random.choice(["DNS","GUID","HCD","HL7","ISO","L,M,N","L","M","N","Random","URI","UUID","x400","x500"])


        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SequenceResultsFlag}{separator}{PlacerOrderNumberEntityIdent}{separator}{PlacerOrderNumberNamespaceID}{separator}{FillerOrderNumberEntityIdent}{separator}{FillerOrderNumberNamespaceID}{separator}{SequenceConditionValue}{separator}{MaximumNumberofRepeats}{separator}{PlacerOrderNumUnivID}{separator}{PlacerOrderNumUnivIDType}{separator}{FillerOrderNumUnivID}{separator}{FillerOrderNumUnivIDType}"
    }

    /// Generate OSP
    ClassMethod GenerateOSP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # OSP Occurrence Span Code and Date
        import iris
        from datetime import datetime, timedelta

        OccurrenceSpanCode = iris.cls(__name__).GenerateCNE(hl7version,characterSeparators,subcomponent=1)

        # Using current time
        ini_time_for_now = datetime.now()
        OccurrenceSpanStartDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
        # Need future date like EffectiveDate + 30 days
        OccurrenceSpanStopDate = ini_time_for_now + timedelta(days = 30)
        OccurrenceSpanStopDate = OccurrenceSpanStopDate.strftime("%Y%m%d%H%M%S")
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{OccurrenceSpanCode}{separator}{OccurrenceSpanStartDate}{separator}{OccurrenceSpanStopDate}"
    }

    /// Generate PCF
    ClassMethod GeneratePCF(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PCF Pre-certification required
        import iris,random,importlib
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (precertificationpatienttype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70338")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            precertificationpatienttype = random.choice(["ER","IPE","OPE","UR"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (precertificationrequired := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70150")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            precertificationrequired = random.choice(["Y","N"])


        precertificationwindow = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{precertificationpatienttype}{separator}{precertificationrequired}{separator}{precertificationwindow}"
    }

    /// Generate PI
    ClassMethod GeneratePI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PIP Practitioner Institutional Privileges
        import iris
        from datetime import datetime, timedelta

        IDnumberST  = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        typeofIDnumberIS  = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        otherqualifyinginfo  = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDnumberST}{separator}{typeofIDnumberIS}{separator}{otherqualifyinginfo}"
    }

    /// Generate PIP
    ClassMethod GeneratePIP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PIP Practitioner Institutional Privileges
        import iris
        from datetime import datetime, timedelta

        if hl7version < "2.6":
            Privilege = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
            PrivilegeClass = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        else:
            Privilege = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
            PrivilegeClass = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        Facility = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)

        # Using current time
        ini_time_for_now = datetime.now()
        ActivationDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")  # Current date and time in YYYYMMDDHHMMSS
        # Need future date like EffectiveDate + 30 days
        ExpirationDate = ini_time_for_now + timedelta(days = 30)
        ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Privilege}{separator}{PrivilegeClass}{separator}{ExpirationDate}{separator}{ActivationDate}{separator}{Facility}"
    }

    /// Generate PL
    ClassMethod GeneratePL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PL Person Location
        import iris,random,importlib,string
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        if hl7version < "2.7":
            Building = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

            LocationDescription = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            ComprehensiveLocationIdentif = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)

            AssigningAuthorityforLocatio = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        else:

            Building = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

            LocationDescription = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            ComprehensiveLocationIdentif = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)

            AssigningAuthorityforLocatio = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)


        PointofCare = "ICU","Med-Surg","ED","OR","PACU","ASU","L\E\D","NICU","CVICU","CATHLAB","ORTHO","IR","ENDO","PEDS","PICU","PSYCH","REHAB","2E","2N","3W","3S","4"
        PointofCare = random.choice(PointofCare)

        Room = str(random.randint(1,2010))

        Bed = "A","B"
        Bed = random.choice(Bed)
        Facility = "Communitycare Hospital","Familycare Haven","Healthlink Clinic","Heartfelt Healing Clinic","Holistic Health Oasis","Orthocare Orthopedic Clinic","Patients Choice Medical Clinic","Warm Embrace Healthcare","Advanced Pediatrics associates","AllCare family medicine","Aspire To Thrive Clinic","Atlanta Medical Group","Austin Carehub Medical Center","Austin Health Clinic","Balancelife Medical Center","Beyondlimits Wellness","Biofusion Clinic","Biorevolution Care","Biotech breakthroughs","Blossomhealth Integrative Medicine","Bodylogic clinic","Boston health and Wellness","Brighthorizon Health","Brooklyn Neighborhood Hospital"
        Facility = random.choice(Facility)
        LocationStatus = "Dirty","Clean"
        LocationStatus = random.choice(LocationStatus)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PersonLocationType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70305")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PersonLocationType = random.choice(["C","D","H","N","O","P","S"])

        Floor = Room[0]

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PointofCare}{separator}{Room}{separator}{Bed}{separator}{Facility}{separator}{LocationStatus}{separator}{PersonLocationType}{separator}{Building}{separator}{Floor}{separator}{LocationDescription}{separator}{ComprehensiveLocationIdentif}{separator}{AssigningAuthorityforLocatio}"
    }

    /// Generate PLN
    ClassMethod GeneratePLN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PLN Practitioner License or Other ID Number
        # Definition: This data type specifies a practitioner’s license number, or other ID number such as UPIN, Medicare and Medicaid number, and associated detail.
        import iris,random,importlib
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        IDNumber = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (TypeofIDNumber := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70338")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            TypeofIDNumber = random.choice(["CY","DEA","GL","LI","L&I","MCD","MCR","QA","SL","TAX","TRL","UPIN"])
        if TypeofIDNumber == "L&I":
            TypeofIDNumber = "L\E\I"

        
        StateotherQualifyingInformat = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        ExpirationDate = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{IDNumber}{separator}{TypeofIDNumber}{separator}{StateotherQualifyingInformat}{separator}{ExpirationDate}"
    }

    /// Generate PN
    ClassMethod GeneratePN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PN - Extended Person Name
        import iris,random,importlib,string
        from faker import Faker
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Initialize Faker instance
        fake = Faker()

        familyname = fake.first_name()
        givenname = fake.first_name()
        secondandfurthergivennamesor =  fake.last_name()
        suffix = fake.suffix()
        prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])
          

        return f"{familyname}^{givenname}^{secondandfurthergivennamesor}^{suffix}^{prefix}^{Degree}"
    }

    /// Generate PPN
    ClassMethod GeneratePPN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PPN Performing Person Time Stamp
        import iris,random,importlib,string
        from faker import Faker
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Initialize Faker instance
        fake = Faker()

        PersonIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        FamilyName = fake.first_name()

        GivenName = fake.first_name()

        SecondandFurtherGivenNamesor =  fake.last_name()

        Suffix = fake.suffix()

        Prefix = fake.prefix()

        # Degree logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])
        # SourceTable related to table 297
        SourceTable = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # AssigningAuthority related to table 363
        AssigningAuthority = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # NameTypeCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70200")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameTypeCode = random.choice(["A","B","C","D","I","L","M","N","P","R","S","T","U"])

        IdentifierCheckDigit = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Check Digit Scheme logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CheckDigitScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            CheckDigitScheme = random.choice(["NPI","ISO","M10","M11"])

        # IdentifierTypeCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (IdentifierTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70203")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            IdentifierTypeCode = random.choice(["AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"])

        AssigningFacility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        DateTimeActionPerformed = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        # NameRepresentationCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameRepresentationCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70465")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameRepresentationCode = random.choice(["I","A","P"])

        # NameConext related to table 444
        NameContext = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)

        NameValidityRange = iris.cls(__name__).GenerateDR(hl7version,characterSeparators,subcomponent=1)

        # NameAssemblyOrder logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameAssemblyOrder := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70444")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameAssemblyOrder = random.choice(["G","F"])

        EffectiveDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        ExpirationDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)

        ProfessionalSuffix = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        AssigningJurisdiction = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        AssigningAgencyorDepartment = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        if hl7version > "2.6":
            SecurityCheck = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

            # SecurityCheckScheme Logic
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (SecurityCheckScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70904")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                SecurityCheckScheme = random.choice(["BCV","CCS","VID"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        # return case
        match hl7version:
            case "2.3":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}"
            case "2.3.1":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}"
            case "2.4":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}"
            case "2.5":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
            case "2.5.1":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
            case "2.6":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
            case "2.7":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.7.1":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.8":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.8.1":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case "2.8.2":
                return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{DateTimeActionPerformed}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
            case _:
                return
    }

    /// Generate PRL
    ClassMethod GeneratePRL(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PRL Parent Result Link
        # Definition: Uniquely identifies the parent result’s OBX segment related to the current order, together with the information in OBR-29-parent.
        import iris

        if hl7version < "2.6":
            ParentObservationIdentifier = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        else:
            ParentObservationIdentifier = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        if hl7version < "2.8.2":
            ParentObservationSubidentifi = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        else:
            ParentObservationSubidentifi = iris.cls(__name__).GenerateOG(hl7version,characterSeparators,subcomponent=1)
        ParentObservationValueDescri = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{ParentObservationIdentifier}{separator}{ParentObservationSubidentifi}{separator}{ParentObservationValueDescri}"
    }

    /// Generate PT
    ClassMethod GeneratePT(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PT Processing Type
        # Definition: This data type indicates whether to process a message as defined in HL7 Application (level 7) Processing rules.
        import iris,random,importlib

        import hl7apy as cr


        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (ProcessingID := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70103")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            ProcessingID = random.choice(["D","P","T"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (ProcessingMode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70207")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            ProcessingMode = random.choice(["A","R","I","T","Not present"])


        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        return f"{ProcessingID}{separator}{ProcessingMode}"
    }

    /// Generate PTA
    ClassMethod GeneratePTA(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # PTA Policy Type and Amount
        # Definition: This data type specifies the policy type and amount covered by the insurance.
        import iris,random,importlib

        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (PolicyType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70147")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            PolicyType = random.choice(["ANC","2ANC","MMD","2MMD","3MMD"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AmountClass := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70193")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AmountClass = random.choice(["AT","LM","PC","UL"])


        MoneyorPercentageQuantity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        MoneyorPercentage = iris.cls(__name__).GenerateMOP(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{PolicyType}{separator}{AmountClass}{separator}{MoneyorPercentageQuantity}{separator}{MoneyorPercentage}"
    }

    /// Generate QIP
    ClassMethod GenerateQIP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # QIP Query Input Parameter List
        import iris, random

        # Check if @ in list of encoding characters
        if "@" in characterSeparators:
            index = str(characterSeparators.index("@")) 
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
        listoffields = iris.cls("dc.GetStuff").GetAllFieldsForVersion(hl7version).split(separator)
        # random
        fieldname=random.choice(listoffields)
        SegmentFieldName = escapeseq + fieldname.replace("_",".")
        Values = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{SegmentFieldName}{separator}{Values}"
    }

    /// Generate QSC
    ClassMethod GenerateQSC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # QSC Query Selection Criteria
        # Definition: This field indicates the conditions that qualify the rows to be returned in the query response.  Note that this field conveys the same information as the "WHERE" clause in the corresponding SQL expression of the query, but is formatted differently.
        import iris,random,importlib

        import hl7apy as cr
        #Call Table method to get list of tables in this version
        
        
        # Check if @ in list of encoding characters
        if "@" in characterSeparators:
            index = str(characterSeparators.index("@")) 
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
        listoffields = iris.cls("dc.GetStuff").GetAllFieldsForVersion(hl7version).split(separator)

        # random
        fieldname=random.choice(listoffields)

        SegmentFieldName = escapeseq + fieldname.replace("_",".")

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (RelationalOperator := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70209")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            RelationalOperator = random.choice(["EQ","NE","LT","GT","LE","GE","CT","GN"])

        Value = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (RelationalConjunction := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70210")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            RelationalConjunction = random.choice(["OR","AND"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        

        return f"{SegmentFieldName}{separator}{RelationalOperator}{separator}{Value}{separator}{RelationalConjunction}"

    }

    /// Generate RCD
    ClassMethod GenerateRCD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # RCD Row Column Definition
        import iris,random,importlib

        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Check if @ in list of encoding characters
        if "@" in characterSeparators:
            index = str(characterSeparators.index("@")) 
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
        listoffields = iris.cls("dc.GetStuff").GetAllFieldsForVersion(hl7version).split(separator)
        # random
        fieldname=random.choice(listoffields)
        SegmentFieldName = escapeseq + fieldname.replace("_",".")

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (HL7DataType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70330")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            HL7DataType = random.choice(["AD","AUI","CCD","CCP","CD","CE","CF","CK","CM","CN","CNE","CNS","CP","CQ","CSU","CWE","CX","DDI","DIN","DLD","DLN","DLT","DR","DT","DTM","DTN","ED","EI","EIP","ELD","ERL","FC","FN","FT","GTS","HD","ICD","ID","IS","JCC","LA1","LA2","MA","MO","MOC","MOP","MSG","NA","NDL","NM","NR","OCD","OSD","OSP","PIP","PL","PLN","PN","PPN","PRL","PT","PTA","QIP","QSC","RCD","RFR","RI","RMC","RP","RPT","SAD","SCV","SI","SN","SPD","SPS","SRT","ST","TM","TN","TQ","TS","TX","UVC","VH","VID","VR","WVI","WVS","XAD","XCN","XON","XPN","XTN"])
        
        MaximumColumnWidth = str(random.randint(1,200))
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SegmentFieldName}{separator}{HL7DataType}{separator}{MaximumColumnWidth}"
    }

    /// Generate RFR
    ClassMethod GenerateRFR(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # RFR Reference Range
        import iris,importlib, random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        NumericRange = iris.cls(__name__).GenerateNR(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AdministrativeSex := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70001")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AdministrativeSex = random.choice(["F","M","O","U","A","N"])

        AgeRange = iris.cls(__name__).GenerateNR(hl7version,characterSeparators,subcomponent=1)
        GestationalAgeRange = iris.cls(__name__).GenerateNR(hl7version,characterSeparators,subcomponent=1)
        Species = "Giant Panda","Giant Tortoise","Great White Shark","Greater One-Horned Rhino","Hippopotamus","Leatherback Turtle","Lion","Loggerhead Turtle","Marine Iguana","Olive Ridley Turtle","Polar Bear","Snow Leopard","Southern rockhopper penguin","Albacore Tuna","Beluga","Greater Sage-Grouse","Jaguar","Mountain Plover","Plains Bison","White Rhino","Yellowfin Tuna","Arctic Fox","Arctic Wolf","Beaver","Bowhead Whale","Brown Bear","Common Bottlenose Dolphin","Gray Whale","Macaw","Narwhal","Pronghorn","Skipjack Tuna","Swift Fox","Tree Kangaroo","African Elephant","Amazon River Dolphin","Continental Tiger","Dolphins and Porpoises","Elephant","Gorilla","Pacific Salmon","Pangolin","Penguin","Poison Dart Frog","Rhino","Seals","Shark","Sloth","Tuna","African forest elephant","Amur Leopard","Black Rhino","Bornean Orangutan","Cross River Gorilla","Eastern Lowland Gorilla","Hawksbill Turtle","Javan Rhino","Orangutan","Saola","Sumatran Elephant","Sumatran Orangutan","Sumatran Rhino","Sunda Tiger","Vaquita","Western Lowland Gorilla","Yangtze Finless Porpoise","African savanna elephant","African Wild Dog","Asian Elephant","Black-footed Ferret","Blue Whale","Bluefin Tuna","Bonobo","Bornean Elephant","Chimpanzee","Fin Whale","Galápagos Penguin","Ganges River Dolphin","Green Turtle","Hector's Dolphin","Humphead Wrasse","Indian Elephant","Indus River Dolphin","Irrawaddy Dolphin","Monarch Butterfly","Mountain Gorilla","North Atlantic Right Whale","Red Panda","Sea Lions","Sea Turtle","Sei Whale","Sri Lankan Elephant","Tiger","Whale","Whale Shark","Bigeye Tuna","Black Spider Monkey","Cheetah","Dugong","Human"
        Species = random.choice(Species)
        Racesubspecies = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Conditions = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{NumericRange}{separator}{AdministrativeSex}{separator}{AgeRange}{separator}{GestationalAgeRange}{separator}{Species}{separator}{Racesubspecies}{separator}{Conditions}"
    }

    /// Generate RI
    ClassMethod GenerateRI(hl7version = "2.5", characterSeparators ="|^~\&", subcomponent=0) [ Language = python ]
    {
        # RI Repeat Interval
        import iris,importlib, random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (RepeatPattern := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70335")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            RepeatPattern = random.choice(["QnS","QnM","QnH","QnD","QnW","QnL","QnJd","BID","TID","QID","xID","QAM","QSHIFT","QOD","QHS","QPM","C","Uxxx","PRN","PRNxxx","Once","Meal Related Timings","A","P","I","M","D","V"])
        
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
        ExplicitTimeInterval = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{RepeatPattern}{separator}{ExplicitTimeInterval}"
    }

    /// Generate RMC
    ClassMethod GenerateRMC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # RMC Room Coverage
        # Definition: This data type specifies insurance coverage detail for a room.
        import iris,importlib, random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (RoomType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70145")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            RoomType = random.choice(["PRI","2PRI","SPR","2SPR","ICU","2ICU"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AmountType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70146")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AmountType = random.choice(["DF","LM","PC","RT","UL"])
        
        CoverageAmount = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        MoneyorPercentage = iris.cls(__name__).GenerateMOP(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{RoomType}{separator}{AmountType}{separator}{CoverageAmount}{separator}{MoneyorPercentage}"
    }

    /// Generate RP
    ClassMethod GenerateRP(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # RP Referenece Pointer
        # Definition: This data type transmits information about data stored on another system. It contains a reference pointer that uniquely identifies the data on the other system, the identity of the other system, and the type of data.
        import iris,importlib, random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        Pointer = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        ApplicationID = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (TypeofData := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70191")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            TypeofData = random.choice(["AP","AU","FT","IM","multipart","NS","SD","SI","TEXT","TX"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Subtype := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70291")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Subtype = random.choice(["BASIC","DICOM","FAX","GIF","HTML","JOT","JPEG","Octet-stream","PICT","PostScript","RTF","SGML","TIFF","x-hl7-cda-level-one","XML"])
        

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        return f"{Pointer}{separator}{ApplicationID}{separator}{TypeofData}{separator}{Subtype}"
    }

    /// Generate RPT
    ClassMethod GenerateRPT(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # RPT Repeat Pattern
        import iris,importlib, random
        import hl7apy as cr

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (RepeatPatternCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70335")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            RepeatPatternCode = random.choice(["QnS","QnM","QnH","QnD","QnW","QnL","QnJd","BID","TID","QID","xID","QAM","QSHIFT","QOD","QHS","QPM","C","Uxxx","PRN","PRNxxx","Once","Meal Related Timings","A","P","I","M","D","V"])
        
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CalendarAlignment := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70527")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            CalendarAlignment = random.choice(["MY","WY","DM","DY","DW","HD","NH","SN"])
        
        PhaseRangeBeginValue = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        PhaseRangeEndValue = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        PeriodQuantity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        if hl7version < "2.7":
            PeriodUnits = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        else:
            PeriodUnits = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (InstitutionSpecifiedTime := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70527")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            InstitutionSpecifiedTime = random.choice(["Y","N"])
        
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Event := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70528")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Event = random.choice(["HS","AC","PC","IC","ACM","ACD","ACV","PCM","PCD","PCV","ICM","ICD","ICV"])
        
        EventOffsetQuantity = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        if hl7version < "2.7":
            EventOffsetUnits = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        else:
            EventOffsetUnits = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        GeneralTimingSpecification = iris.cls(__name__).GenerateGTS(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{RepeatPatternCode}{separator}{CalendarAlignment}{separator}{PhaseRangeBeginValue}{separator}{PhaseRangeEndValue}{separator}{PeriodQuantity}{separator}{PeriodUnits}{separator}{InstitutionSpecifiedTime}{separator}{Event}{separator}{EventOffsetQuantity}{separator}{EventOffsetUnits}{separator}{GeneralTimingSpecification}"
    }

    /// Generate SAD
    ClassMethod GenerateSAD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SAD Street Address
        import random,importlib,re
        from faker import Faker

        # Initialize Faker instance
        fake = Faker()

        StreetorMailingAddress = fake.street_address()
        DwellingNumber = StreetorMailingAddress.split(" ",1)[0]
        StreetName = StreetorMailingAddress.split(" ",1)[1]
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{StreetorMailingAddress}{separator}{StreetName}{separator}{DwellingNumber}"
    }

    /// Generate SCV
    ClassMethod GenerateSCV(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SCV Scheduling Class Value Pair
        import iris,random
        from datetime import datetime, timedelta

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (ParameterClass := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70294")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            ParameterClass = random.choice(["Prefstart","Prefend","Mon","Tue","Wed","Thu","Fri","Sat","Sun"])
    #    print(f"ParameterClass: {ParameterClass}")
        try:
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
                case "Tue":
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
        except Exception as e:
            print(e)
        #    print(f"ParameterClass: {ParameterClass}")
            
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{ParameterClass}{separator}{ParameterValue}"
    }

    /// Generate Sequence ID
    ClassMethod GenerateSI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SI Sequence ID - An Elementary Data Type
        import random
        return random.randint(1,9999)
    }

    /// Generate SN
    ClassMethod GenerateSN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SN Structured Numeric
        import iris,random

        Comparator = ">", "<", ">=", "<=", "=", "<>"
        Comparator = random.choice(Comparator)
        Num1 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        SeparatorSuffix = "-", "+", "/", ".", ":"
        SeparatorSuffix = random.choice(SeparatorSuffix)
        Num2 = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Comparator}{separator}{Num1}{separator}{SeparatorSuffix}{separator}{Num2}"
    }

    /// Generate SNM
    ClassMethod GenerateSNM(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # SNM String of Telephone Number Digits - An Elementary Data Type
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()
        return fake.phone_number()
    }

    /// Generate SPD
    ClassMethod GenerateSPD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SI Sequence ID - An Elementary Data Type
        import iris,importlib, random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        


        SpecialtyName = "Drama Therapist","Counselor","Addiction (Substance Use Disorder) Counselor","Mental Health Counselor","Pastoral Counselor","Professional Counselor","School Counselor","Psychoanalyst","Poetry Therapist","Clinical Neuropsychologist","Deactivated - Clinical Neuropsychologist","Behavioral Analyst","Psychologist","Addiction (Substance Use Disorder) Psychologist","Adult Development & Aging Psychologist","Cognitive & Behavioral Psychologist","Clinical Psychologist","Counseling Psychologist","Clinical Child & Adolescent Psychologist","Deactivated - Psychologist","Exercise & Sports Psychologist","Family Psychologist","Forensic Psychologist","Health Psychologist","Health Service Psychologist","Deactivated - Psychologist Men & Masculinity","Intellectual & Developmental Disabilities Psychologist","Prescribing (Medical) Psychologist","Psychoanalysis Psychologist","Deactivated - Psychologist Psychotherapy","Group Psychotherapy Psychologist","Rehabilitation Psychologist","School Psychologist","Deactivated - Psychotherapy Women","Social Worker","Clinical Social Worker","School Social Worker","Assistant Behavior Analyst","Marriage & Family Therapist","Behavior Technician","Chiropractor","Independent Medical Examiner Chiropractor","Internist Chiropractor","Neurology Chiropractor","Nutrition Chiropractor","Pediatric Chiropractor","Radiology Chiropractor","Rehabilitation Chiropractor","Sports Physician Chiropractor","Thermography Chiropractor","Occupational Health Chiropractor","Orthopedic Chiropractor","Dentist","Public Health Dentist","Dentist Anesthesiologist","Endodontist","General Practice Dentistry","Oral and Maxillofacial Pathology Dentist","Pediatric Dentist","Periodontist","Prosthodontist","Oral and Maxillofacial Surgery (Dentist)","Oral and Maxillofacial Radiology Dentist","Orthodontics and Dentofacial Orthopedic Dentist","Orofacial Pain Dentist","Denturist","Dental Hygienist","Dental Therapist","Advanced Practice Dental Therapist","Oral Medicinist","Dental Assistant","Dental Laboratory Technician","Dietary Manager","Nutritionist","Nutrition Education Nutritionist","Registered Dietitian","Pediatric Nutrition Registered Dietitian","Renal Nutrition Registered Dietitian","Metabolic Nutrition Registered Dietitian","Gerontological Nutrition Registered Dietitian","Obesity and Weight Management Nutrition Registered Dietitian","Oncology Nutrition Registered Dietitian","Pediatric Critical Care Nutrition Registered Dietitian","Sports Dietetics Nutrition Registered Dietitian","Registered Dietetic Technician","Personal Emergency Response Attendant","Paramedic","Intermediate Emergency Medical Technician","Basic Emergency Medical Technician","Optometrist","Corneal and Contact Management Optometrist","Low Vision Rehabilitation Optometrist","Pediatric Optometrist","Sports Vision Optometrist","Vision Therapy Optometrist","Occupational Vision Optometrist","Technician/Technologist","Contact Lens Technician/Technologist","Contact Lens Fitter","Ophthalmic Technician/Technologist","Ophthalmic Assistant","Optometric Assistant Technician","Optometric Technician","Ocularist","Optician","Orthoptist","Registered Nurse","Addiction (Substance Use Disorder) Registered Nurse","Administrator Registered Nurse","Critical Care Medicine Registered Nurse","Case Management Registered Nurse","College Health Registered Nurse","Community Health Registered Nurse","Continuing Education/Staff Development Registered Nurse","Continence Care Registered Nurse","Cardiac Rehabilitation Registered Nurse","Diabetes Educator Registered Nurse","Peritoneal Dialysis Registered Nurse","Emergency Registered Nurse","Enterostomal Therapy Registered Nurse","Flight Registered Nurse","General Practice Registered Nurse","Gastroenterology Registered Nurse","Gerontology Registered Nurse","Home Health Registered Nurse","Hemodialysis Registered Nurse","Hospice Registered Nurse","Infusion Therapy Registered Nurse","Infection Control Registered Nurse","Lactation Consultant (Registered Nurse)","Maternal Newborn Registered Nurse","Medical-Surgical Registered Nurse","Nurse Massage Therapist (NMT)","Neonatal Intensive Care Registered Nurse","Low-Risk Neonatal Registered Nurse","Nephrology Registered Nurse","Neuroscience Registered Nurse","Nutrition Support Registered Nurse","Pain Management Registered Nurse","Pediatric Registered Nurse","Pediatric Oncology Registered Nurse","Child & Adolescent Psychiatric/Mental Health Registered Nurse","Psychiatric/Mental Health Registered Nurse","Adult Psychiatric/Mental Health Registered Nurse","Perinatal Registered Nurse","Ambulatory Care Registered Nurse","Registered Nurse First Assistant","Rehabilitation Registered Nurse","Reproductive Endocrinology/Infertility Registered Nurse","Plastic Surgery Registered Nurse","School Registered Nurse","Urology Registered Nurse","Wound Care Registered Nurse","Ambulatory Women's Health Care Registered Nurse","High-Risk Obstetric Registered Nurse","Inpatient Obstetric Registered Nurse","Occupational Health Registered Nurse","Oncology Registered Nurse","Otorhinolaryngology & Head-Neck Registered Nurse","Orthopedic Registered Nurse","Ophthalmic Registered Nurse","Ostomy Care Registered Nurse","Licensed Practical Nurse","Licensed Vocational Nurse","Licensed Psychiatric Technician","Ph.D. Medical Genetics","Genetic Counselor (M.S.)","Military Health Care Provider","Independent Duty Corpsman","Independent Duty Medical Technicians","Acupuncturist","Health & Wellness Coach","Case Manager/Care Coordinator","Interpreter","Contractor","Home Modifications Contractor","Vehicle Modifications Contractor","Driver","Mechanotherapist","Naprapath","Community Health Worker","Legal Medicine","Reflexologist","Sleep Specialist (PhD)","Meals Provider","Specialist","Graphics Designer","Prosthetics Case Management","Research Study Specialist","Research Study Abstracter/Coder","Health Educator","Veterinarian","Medical Research Veterinarian","Lactation Consultant (Non-RN)","Clinical Ethicist","Naturopath","Homeopath","Lay Midwife","Peer Specialist","Midwife","Funeral Director","Lodging Provider","Pharmacist","Critical Care Pharmacist","Deactivated - Pharmacist","Geriatric Pharmacist","Nuclear Pharmacist","Nutrition Support Pharmacist","Pharmacist Clinician (PhC)/ Clinical Pharmacy Specialist","Pediatric Pharmacist","Pharmacotherapy Pharmacist","Psychiatric Pharmacist","Ambulatory Care Pharmacist","Oncology Pharmacist","Pharmacy Technician","Multi-Specialty Group","Single Specialty Group","Independent Medical Examiner Physician","Integrative Medicine","Phlebology Physician","Sports Medicine (Neuromusculoskeletal Medicine) Physician","Neuromusculoskeletal Medicine & OMM Physician","Oral & Maxillofacial Surgery (D.M.D.)","Transplant Surgery Physician","Electrodiagnostic Medicine Physician","Allergy & Immunology Physician","Allergy Physician","Clinical & Laboratory Immunology (Allergy & Immunology) Physician","Anesthesiology Physician","Addiction Medicine (Anesthesiology) Physician","Critical Care Medicine (Anesthesiology) Physician","Hospice and Palliative Medicine (Anesthesiology) Physician","Pain Medicine (Anesthesiology) Physician","Pediatric Anesthesiology Physician","Dermatology Physician","MOHS-Micrographic Surgery Physician","Dermatopathology Physician","Clinical & Laboratory Dermatological Immunology Physician","Pediatric Dermatology Physician","Procedural Dermatology Physician","Emergency Medicine Physician","Emergency Medical Services (Emergency Medicine) Physician","Undersea and Hyperbaric Medicine (Emergency Medicine) Physician","Hospice and Palliative Medicine (Emergency Medicine) Physician","Pediatric Emergency Medicine (Emergency Medicine) Physician","Sports Medicine (Emergency Medicine) Physician","Medical Toxicology (Emergency Medicine) Physician","Family Medicine Physician","Adolescent Medicine (Family Medicine) Physician","Addiction Medicine (Family Medicine) Physician","Adult Medicine Physician","Obesity Medicine (Family Medicine) Physician","Geriatric Medicine (Family Medicine) Physician","Hospice and Palliative Medicine (Family Medicine) Physician","Sports Medicine (Family Medicine) Physician","Sleep Medicine (Family Medicine) Physician","Internal Medicine Physician","Adolescent Medicine (Internal Medicine) Physician","Advanced Heart Failure and Transplant Cardiology Physician","Adult Congenital Heart Disease Physician","Allergy & Immunology (Internal Medicine) Physician","Addiction Medicine (Internal Medicine) Physician","Obesity Medicine (Internal Medicine) Physician","Cardiovascular Disease Physician","Clinical Cardiac Electrophysiology Physician","Critical Care Medicine (Internal Medicine) Physician","Endocrinology, Diabetes & Metabolism Physician","Gastroenterology Physician","Geriatric Medicine (Internal Medicine) Physician","Hematology (Internal Medicine) Physician","Hospice and Palliative Medicine (Internal Medicine) Physician","Hematology & Oncology Physician","Hypertension Specialist Physician","Clinical & Laboratory Immunology (Internal Medicine) Physician","Hepatology Physician","Interventional Cardiology Physician","Infectious Disease Physician","Magnetic Resonance Imaging (MRI) Internal Medicine Physician","Nephrology Physician","Pulmonary Disease Physician","Rheumatology Physician","Sports Medicine (Internal Medicine) Physician","Sleep Medicine (Internal Medicine) Physician","Transplant Hepatology Physician","Medical Oncology Physician","Clinical Cytogenetics Physician","Clinical Genetics (M.D.) Physician","Clinical Biochemical Genetics Physician","Clinical Molecular Genetics Physician","Ph.D. Medical Genetics Physician","Molecular Genetic Pathology (Medical Genetics) Physician","Neurological Surgery Physician","Nuclear Medicine Physician","Nuclear Cardiology Physician","Nuclear Imaging & Therapy Physician","In Vivo & In Vitro Nuclear Medicine Physician","Obstetrics & Gynecology Physician","Obesity Medicine (Obstetrics & Gynecology) Physician","Critical Care Medicine (Obstetrics & Gynecology) Physician","Complex Family Planning","Reproductive Endocrinology Physician","Female Pelvic Medicine and Reconstructive Surgery (Obstetrics & Gynecology) Physician","Gynecology Physician","Hospice and Palliative Medicine (Obstetrics & Gynecology) Physician","Maternal & Fetal Medicine Physician","Obstetrics Physician","Gynecologic Oncology Physician","Ophthalmology Physician","Glaucoma Specialist (Ophthalmology) Physician","Retina Specialist (Ophthalmology) Physician","Uveitis and Ocular Inflammatory Disease (Ophthalmology) Physician","Neuro-ophthalmology Physician","Pediatric Ophthalmology and Strabismus Specialist Physician Physician","Cornea and External Diseases Specialist Physician","Ophthalmic Plastic and Reconstructive Surgery Physician","Orthopaedic Surgery Physician","Pediatric Orthopaedic Surgery Physician","Orthopaedic Hand Surgery Physician","Adult Reconstructive Orthopaedic Surgery Physician","Orthopaedic Surgery of the Spine Physician","Orthopaedic Foot and Ankle Surgery Physician","Sports Medicine (Orthopaedic Surgery) Physician","Orthopaedic Trauma Physician","Otolaryngology Physician","Pediatric Otolaryngology Physician","Sleep Medicine (Otolaryngology) Physician","Facial Plastic Surgery Physician","Plastic Surgery within the Head & Neck (Otolaryngology) Physician","Otolaryngic Allergy Physician","Otology & Neurotology Physician","Otolaryngology/Facial Plastic Surgery Physician","Blood Banking & Transfusion Medicine Physician","Clinical Pathology Physician","Clinical Informatics (Pathology) Physician","Cytopathology Physician","Dermatopathology (Pathology) Physician","Forensic Pathology Physician","Hematology (Pathology) Physician","Immunopathology Physician","Medical Microbiology Physician","Neuropathology Physician","Molecular Genetic Pathology (Pathology) Physician","Anatomic Pathology Physician","Anatomic Pathology & Clinical Pathology Physician","Chemical Pathology Physician","Clinical Pathology/Laboratory Medicine Physician","Pediatric Pathology Physician","Pediatrics Physician","Pediatric Adolescent Medicine Physician","Pediatric Obesity Medicine Physician","Child Abuse Pediatrics Physician","Pediatric Hospice and Palliative Medicine Physician","Pediatric Clinical & Laboratory Immunology Physician","Neonatal-Perinatal Medicine Physician","Developmental - Behavioral Pediatrics Physician","Pediatric Neurodevelopmental Disabilities Physician","Pediatric Allergy/Immunology Physician","Pediatric Cardiology Physician","Pediatric Critical Care Medicine Physician","Pediatric Emergency Medicine (Pediatrics) Physician","Pediatric Endocrinology Physician","Pediatric Gastroenterology Physician","Pediatric Hematology & Oncology Physician","Pediatric Infectious Diseases Physician","Pediatric Nephrology Physician","Pediatric Pulmonology Physician","Pediatric Rheumatology Physician","Pediatric Sports Medicine Physician","Pediatric Sleep Medicine Physician","Pediatric Medical Toxicology Physician","Pediatric Transplant Hepatology Physician","Physical Medicine & Rehabilitation Physician","Hospice and Palliative Medicine (Physical Medicine & Rehabilitation) Physician","Neuromuscular Medicine (Physical Medicine & Rehabilitation) Physician","Spinal Cord Injury Medicine Physician","Pediatric Rehabilitation Medicine Physician","Brain Injury Medicine (Physical Medicine & Rehabilitation) Physician","Pain Medicine (Physical Medicine & Rehabilitation) Physician","Sports Medicine (Physical Medicine & Rehabilitation) Physician","Plastic Surgery Physician","Plastic Surgery Within the Head and Neck (Plastic Surgery) Physician","Surgery of the Hand (Plastic Surgery) Physician","Aerospace Medicine Physician","Addiction Medicine (Preventive Medicine) Physician","Obesity Medicine (Preventive Medicine) Physician","Clinical Informatics Physician","Undersea and Hyperbaric Medicine (Preventive Medicine) Physician","Preventive Medicine/Occupational Environmental Medicine Physician","Public Health & General Preventive Medicine Physician","Sports Medicine (Preventive Medicine) Physician","Medical Toxicology (Preventive Medicine) Physician","Occupational Medicine Physician","Addiction Medicine (Psychiatry & Neurology) Physician","Neurocritical Care Physician","Obesity Medicine (Psychiatry & Neurology) Physician","Behavioral Neurology & Neuropsychiatry Physician","Diagnostic Neuroimaging (Psychiatry & Neurology) Physician","Epilepsy Physician","Forensic Psychiatry Physician","Hospice and Palliative Medicine (Psychiatry & Neurology) Physician","Neuromuscular Medicine (Psychiatry & Neurology) Physician","Neurology Physician","Neurology with Special Qualifications in Child Neurology Physician","Clinical Neurophysiology Physician","Neurodevelopmental Disabilities Physician Physician","Psychosomatic Medicine Physician","Brain Injury Medicine (Psychiatry & Neurology) Physician","Psychiatry Physician","Addiction Psychiatry Physician","Child & Adolescent Psychiatry Physician","Geriatric Psychiatry Physician","Pain Medicine (Psychiatry & Neurology) Physician","Sports Medicine (Psychiatry & Neurology) Physician","Sleep Medicine (Psychiatry & Neurology) Physician","Vascular Neurology Physician","Body Imaging Physician","Diagnostic Neuroimaging (Radiology) Physician","Hospice and Palliative Medicine (Radiology) Physician","Neuroradiology Physician","Nuclear Radiology Physician","Pediatric Radiology Physician","Radiation Oncology Physician","Diagnostic Radiology Physician","Therapeutic Radiology Physician","Vascular & Interventional Radiology Physician","Radiological Physics Physician","Diagnostic Ultrasound Physician","Surgery Physician","Hospice and Palliative Medicine (Surgery) Physician","Surgical Critical Care Physician","Surgery of the Hand (Surgery) Physician","Pediatric Surgery Physician","Plastic and Reconstructive Surgery Physician","Trauma Surgery Physician","Vascular Surgery Physician","Surgical Oncology Physician","Urology Physician","Female Pelvic Medicine and Reconstructive Surgery (Urology) Physician","Pediatric Urology Physician","Colon & Rectal Surgery Physician","General Practice Physician","Thoracic Surgery (Cardiothoracic Vascular Surgery) Physician","Hospitalist Physician","Clinical Pharmacology Physician","Pain Medicine Physician","Interventional Pain Medicine Physician","Legal Medicine (M.D./D.O.) Physician","Podiatric Assistant","Podiatrist","Deactivated - Podiatrist","Public Medicine Podiatrist","Primary Podiatric Medicine Podiatrist","Radiology Podiatrist","Sports Medicine Podiatrist","Foot & Ankle Surgery Podiatrist","Foot Surgery Podiatrist","Art Therapist","Developmental Therapist","Orthotist","Mastectomy Fitter","Pedorthist","Prosthetist","Clinical Exercise Physiologist","Occupational Therapy Assistant","Environmental Modification Occupational Therapy Assistant","Feeding, Eating & Swallowing Occupational Therapy Assistant","Low Vision Occupational Therapy Assistant","Driving and Community Mobility Occupational Therapy Assistant","Orthotic Fitter","Physical Therapist","Cardiopulmonary Physical Therapist","Ergonomics Physical Therapist","Clinical Electrophysiology Physical Therapist","Geriatric Physical Therapist","Hand Physical Therapist","Human Factors Physical Therapist","Neurology Physical Therapist","Pediatric Physical Therapist","Sports Physical Therapist","Orthopedic Physical Therapist","Physical Therapy Assistant","Rehabilitation Practitioner","Respiratory/Developmental/Rehabilitative Specialist/Technologist","Athletic Trainer","Blind Rehabilitation Specialist/Technologist","Dance Therapist","Massage Therapist","Recreation Therapist","Music Therapist","Pulmonary Function Technologist","Rehabilitation Counselor","Assistive Technology Practitioner Rehabilitation Counselor","Assistive Technology Supplier Rehabilitation Counselor","Orientation and Mobility Training Rehabilitation Counselor","Occupational Therapist","Environmental Modification Occupational Therapist","Ergonomics Occupational Therapist","Feeding, Eating & Swallowing Occupational Therapist","Gerontology Occupational Therapist","Hand Occupational Therapist","Human Factors Occupational Therapist","Low Vision Occupational Therapist","Mental Health Occupational Therapist","Neurorehabilitation Occupational Therapist","Physical Rehabilitation Occupational Therapist","Pediatric Occupational Therapist","Driving and Community Mobility Occupational Therapist","Recreational Therapist Assistant","Kinesiotherapist","Certified Respiratory Therapist","Critical Care Certified Respiratory Therapist","Emergency Care Certified Respiratory Therapist","Educational Certified Respiratory Therapist","Geriatric Care Certified Respiratory Therapist","General Care Certified Respiratory Therapist","Home Health Certified Respiratory Therapist","Pulmonary Diagnostics Certified Respiratory Therapist","Pulmonary Rehabilitation Certified Respiratory Therapist","Pulmonary Function Technologist Certified Respiratory Therapist","Palliative/Hospice Certified Respiratory Therapist","Neonatal/Pediatric Certified Respiratory Therapist","Patient Transport Certified Respiratory Therapist","SNF/Subacute Care Certified Respiratory Therapist","Registered Respiratory Therapist","Critical Care Registered Respiratory Therapist","Emergency Care Registered Respiratory Therapist","Educational Registered Respiratory Therapist","Geriatric Care Registered Respiratory Therapist","General Care Registered Respiratory Therapist","Home Health Registered Respiratory Therapist","Pulmonary Diagnostics Registered Respiratory Therapist","Pulmonary Rehabilitation Registered Respiratory Therapist","Pulmonary Function Technologist Registered Respiratory Therapist","Palliative/Hospice Registered Respiratory Therapist","Neonatal/Pediatric Registered Respiratory Therapist","Patient Transport Registered Respiratory Therapist","SNF/Subacute Care Registered Respiratory Therapist","Anaplastologist","Audiologist","Assistive Technology Practitioner Audiologist","Assistive Technology Supplier Audiologist","Speech/Language/Hearing Specialist/Technologist","Audiology Assistant","Speech-Language Assistant","Speech-Language Pathologist","Audiologist-Hearing Aid Fitter","Hearing Instrument Specialist","Perfusionist","Radiology Practitioner Assistant","Pathology Specialist/Technologist","Blood Banking Specialist/Technologist","Chemistry Pathology Specialist/Technologist","Cytotechnology Specialist/Technologist","Hematology Specialist/Technologist","Hemapheresis Practitioner","Histology Specialist/Technologist","Immunology Pathology Specialist/Technologist","Laboratory Management Specialist/Technologist","Diplomate Laboratory Management Specialist/Technologist","Medical Technologist","Microbiology Specialist/Technologist","Pathology Technician","Histology Technician","Medical Laboratory Technician","Phlebotomy Technician","Cardiology Technician","Cardiovascular Specialist/Technologist","Cardiovascular Invasive Specialist/Technologist","Vascular Specialist/Technologist","Sonography Specialist/Technologist","Health Information Specialist/Technologist","Hospital Based Coding Specialist","Physician Office Based Coding Specialist","Registered Record Administrator","Other Specialist/Technologist","Medical Art Specialist/Technologist","Biomedical Engineer","Biomedical Photographer","Biochemist","Biostatiscian","Surgical Assistant","EEG Specialist/Technologist","Electroneurodiagnostic Specialist/Technologist","Graphics Methods Specialist/Technologist","Medical Geneticist (PhD) Specialist/Technologist","Medical Illustrator","Nephrology Specialist/Technologist","Surgical Technologist","Orthopedic Assistant","Health Information Technician","Assistant Health Information Record Technician","Radiologic Technologist","Bone Densitometry Radiologic Technologist","Cardiovascular-Interventional Technology Radiologic Technologist","Cardiac-Interventional Technology Radiologic Technologist","Computed Tomography Radiologic Technologist","Radiography Radiologic Technologist","Magnetic Resonance Imaging Radiologic Technologist","Mammography Radiologic Technologist","Nuclear Medicine Technology Radiologic Technologist","Quality Management Radiologic Technologist","Radiation Therapy Radiologic Technologist","Sonography Radiologic Technologist","Vascular Sonography Radiologic Technologist","Vascular-Interventional Technology Radiologic Technologist","Other Technician","Biomedical Engineering Technician","Darkroom Technician","EEG Technician","Renal Dialysis Technician","Veterinary Technician","Clinical Laboratory Director (Non-physician)","Local Education Agency (LEA)","Case Management Agency","Developmentally Disabled Services Day Training Agency","Home Health Agency","Home Infusion Agency","Community Based Hospice Care Agency","Nursing Care Agency","Public Health or Welfare Agency","Community/Behavioral Health Agency","PACE Provider Organization","Voluntary or Charitable Agency","Supports Brokerage Agency","Early Intervention Provider Agency","Foster Care Agency","In Home Supportive Care Agency","Clinic/Center","Ambulatory Family Planning Facility","Ambulatory Fertility Facility","Adult Day Care Clinic/Center","Amputee Clinic/Center","Ambulatory Surgical Clinic/Center","Augmentative Communication Clinic/Center","Birthing Clinic/Center","Critical Access Hospital Clinic/Center","Community Health Clinic/Center","Corporate Health Clinic/Center","Dental Clinic/Center","Developmental Disabilities Clinic/Center","Emergency Care Clinic/Center","End-Stage Renal Disease (ESRD) Treatment Clinic/Center","Endoscopy Clinic/Center","Non-Surgical Family Planning Clinic/Center","Federally Qualified Health Center (FQHC)","Genetics Clinic/Center","Health Service Clinic/Center","Hearing and Speech Clinic/Center","Infusion Therapy Clinic/Center","Lithotripsy Clinic/Center","Mental Health Clinic/Center (Including Community Mental Health Center)","Adult Mental Health Clinic/Center","Adolescent and Children Mental Health Clinic/Center","Migrant Health Clinic/Center","Military/U.S. Coast Guard Outpatient Clinic/Center","Military and U.S. Coast Guard Ambulatory Procedure Clinic/Center","Military Outpatient Operational (Transportable) Component Clinic/Center","Military Ambulatory Procedure Visits Operational (Transportable) Clinic/Center","Magnetic Resonance Imaging (MRI) Clinic/Center","Multi-Specialty Clinic/Center","Medical Specialty Clinic/Center","Methadone Clinic","Medically Fragile Infants and Children Day Care","Federal Public Health Clinic/Center","State or Local Public Health Clinic/Center","Podiatric Clinic/Center","Physical Therapy Clinic/Center","Primary Care Clinic/Center","Prison Health Clinic/Center","Pain Clinic/Center","Radiology Clinic/Center","Mammography Clinic/Center","Mobile Mammography Clinic/Center","Mobile Radiology Clinic/Center","Rehabilitation Clinic/Center","Comprehensive Outpatient Rehabilitation Facility (CORF)","Cardiac Rehabilitation Clinic/Center","Substance Use Disorder Rehabilitation Clinic/Center","Recovery Care Clinic/Center","Research Clinic/Center","Rural Health Clinic/Center","Oral and Maxillofacial Surgery Clinic/Center","Ophthalmologic Surgery Clinic/Center","Student Health Clinic/Center","Sleep Disorder Diagnostic Clinic/Center","Urgent Care Clinic/Center","VA Clinic/Center","Occupational Medicine Clinic/Center","Oncology Clinic/Center","Radiation Oncology Clinic/Center","Epilepsy Hospital Unit","Psychiatric Hospital Unit","Rehabilitation Hospital Unit","Medicare Defined Swing Bed Hospital Unit","Substance Use Disorder Rehabilitation Hospital Unit","Chronic Disease Hospital","Children' s Chronic Disease Hospital","Long Term Care Hospital","Religious Nonmedical Health Care Institution","General Acute Care Hospital","Critical Access Hospital","Children's Hospital","Rural Acute Care Hospital","Women's Hospital","Psychiatric Hospital","Rehabilitation Hospital","Children's Rehabilitation Hospital","Special Hospital","Military Hospital","Deactivated - Military Hospital","Military General Acute Care Hospital","Operational (Transportable) Military General Acute Care Hospital","Deactivated - Christian Science Sanitorium","Military Clinical Medical Laboratory","Clinical Medical Laboratory","Dental Laboratory","Physiological Laboratory","Exclusive Provider Organization","Health Maintenance Organization","Preferred Provider Organization","Point of Service","Assisted Living Facility","Assisted Living Facility (Mental Illness)","Assisted Living Facility (Behavioral Disturbances)","Mental Illness Intermediate Care Facility","Alzheimer Center (Dementia Center)","Custodial Care Facility","Adult Care Home Facility","Nursing Facility/Intermediate Care Facility","Skilled Nursing Facility","Pediatric Skilled Nursing Facility","Inpatient Hospice","Intellectual Disabilities Intermediate Care Facility","Deactivated - Christian Science Facility","Intellectual and/or Developmental Disabilities Residential Treatment Facility","Physical Disabilities Residential Treatment Facility","Mental Illness Community Based Residential Treatment Facility","Intellectual and/or Developmental Disabilities Community Based Residential Treatment Facility","Emotionally Disturbed Childrens' Residential Treatment Facility","Psychiatric Residential Treatment Facility","Substance Abuse Rehabilitation Facility","Children's Substance Abuse Rehabilitation Facility","Blood Bank","Military/U.S. Coast Guard Pharmacy","Department of Veterans Affairs (VA) Pharmacy","Indian Health Service/Tribal/Urban Indian Health (I/T/U) Pharmacy","Non-Pharmacy Dispensing Site","Durable Medical Equipment & Medical Supplies","Customized Equipment (DME)","Dialysis Equipment & Supplies (DME)","Nursing Facility Supplies (DME)","Parenteral & Enteral Nutrition Supplies (DME)","Oxygen Equipment & Supplies (DME)","Eye Bank","Eyewear Supplier","Hearing Aid Equipment","Home Delivered Meals","Emergency Response System Companies","Pharmacy","Clinic Pharmacy","Community/Retail Pharmacy","Compounding Pharmacy","Home Infusion Therapy Pharmacy","Institutional Pharmacy","Long Term Care Pharmacy","Mail Order Pharmacy","Managed Care Organization Pharmacy","Nuclear Pharmacy","Specialty Pharmacy","Prosthetic/Orthotic Supplier","Medical Foods Supplier","Organ Procurement Organization","Portable X-ray and/or Other Portable Diagnostic Imaging Supplier","Ambulance","Air Ambulance","Land Ambulance","Water Ambulance","Military/U.S. Coast Guard Transport,","Military or U.S. Coast Guard Ground Transport Ambulance","Military or U.S. Coast Guard Air Transport Ambulance","Military or U.S. Coast Guard Water Transport Ambulance","Transportation Network Company","Secured Medical Transport (VAN)","Non-emergency Medical Transport (VAN)","Taxi","Air Carrier","Bus","Private Vehicle","Train","Transportation Broker","Physician Assistant","Medical Physician Assistant","Surgical Physician Assistant","Nurse Practitioner","Acute Care Nurse Practitioner","Adult Health Nurse Practitioner","Critical Care Medicine Nurse Practitioner","Community Health Nurse Practitioner","Family Nurse Practitioner","Gerontology Nurse Practitioner","Neonatal Nurse Practitioner","Critical Care Neonatal Nurse Practitioner","Pediatric Nurse Practitioner","Critical Care Pediatric Nurse Practitioner","Psychiatric/Mental Health Nurse Practitioner","Perinatal Nurse Practitioner","Primary Care Nurse Practitioner","School Nurse Practitioner","Women's Health Nurse Practitioner","Obstetrics & Gynecology Nurse Practitioner","Occupational Health Nurse Practitioner","Clinical Nurse Specialist","Acute Care Clinical Nurse Specialist","Adult Health Clinical Nurse Specialist","Critical Care Medicine Clinical Nurse Specialist","Community Health/Public Health Clinical Nurse Specialist","Chronic Care Clinical Nurse Specialist","Emergency Clinical Nurse Specialist","Ethics Clinical Nurse Specialist","Family Health Clinical Nurse Specialist","Gerontology Clinical Nurse Specialist","Home Health Clinical Nurse Specialist","Holistic Clinical Nurse Specialist","Informatics Clinical Nurse Specialist","Long-Term Care Clinical Nurse Specialist","Medical-Surgical Clinical Nurse Specialist","Neonatal Clinical Nurse Specialist","Neuroscience Clinical Nurse Specialist","Pediatric Clinical Nurse Specialist","Child & Adolescent Psychiatric/Mental Health Clinical Nurse Specialist","Psychiatric/Mental Health Clinical Nurse Specialist","Adult Psychiatric/Mental Health Clinical Nurse Specialist","Child & Family Psychiatric/Mental Health Clinical Nurse Specialist","Chronically Ill Psychiatric/Mental Health Clinical Nurse Specialist","Community Psychiatric/Mental Health Clinical Nurse Specialist","Geropsychiatric Psychiatric/Mental Health Clinical Nurse Specialist","Perinatal Clinical Nurse Specialist","Perioperative Clinical Nurse Specialist","Rehabilitation Clinical Nurse Specialist","School Clinical Nurse Specialist","Transplantation Clinical Nurse Specialist","Women's Health Clinical Nurse Specialist","Occupational Health Clinical Nurse Specialist","Oncology Clinical Nurse Specialist","Pediatric Oncology Clinical Nurse Specialist","Certified Registered Nurse Anesthetist","Advanced Practice Midwife","Anesthesiologist Assistant","Chore Provider","Adult Companion","Day Training/Habilitation Specialist","Technician","Attendant Care Provider","Personal Care Attendant","Doula","Religious Nonmedical Practitioner","Religious Nonmedical Nursing Personnel","Home Health Aide","Nursing Home Administrator","Homemaker","Nurse's Aide","Respite Care","Respite Care Camp","Child Mental Illness Respite Care","Child Intellectual and/or Developmental Disabilities Respite Care","Child Physical Disabilities Respite Care","Student in an Organized Health Care Education/Training Program","Prevention Professional"
        SpecialtyName = random.choice(SpecialtyName)
        GoverningBoard = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (EligibleorCertified := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70337")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            EligibleorCertified = random.choice(["C","E"])
        
        DateofCertification = iris.cls(__name__).GenerateDT(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SpecialtyName}{separator}{GoverningBoard}{separator}{EligibleorCertified}{separator}{DateofCertification}"
    }

    /// Generate SPS
    ClassMethod GenerateSPS(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SPS Specimen Source
        import iris,importlib, random
        import hl7apy as cr
        
        SpecimenSourceNameorCode = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Additives := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70371")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Additives = random.choice(["F10","C32","C38","HCL6","ACDA","ACDB","ACET","AMIES","HEPA","BACTM","BOR","BOUIN","BF10","WEST","BSKM","CARS","CARY","CHLTM","CTAD","ENT","ENT+","JKM","KARN","LIA","HEPL","M4","M4RT","M5","MICHTM","MMDTM","HNO3","NONE","PAGE","PHENOL","KOX","EDTK","EDTK15","EDTK75","PVA","RLM","SST","SILICA","NAF","FL100","FL10","NAPS","HEPN","EDTN","SPS","STUTM","THROM","FDP","THYMOL","THYO","TOLU","URETM","VIRTM"])
        
        SpecimenCollectionMethod = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (BodySite := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70163")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            BodySite = random.choice(["BE","OU","BN","BU","CT","LA","LAC","LACF","LD","LE","LEJ","OS","LF","LG","LH","LIJ","LLAQ","LLFA","LMFA","LN","LPC","LSC","LT","LUA","LUAQ","LUFA","LVG","LVL","NB","PA","PERIN","RA","RAC","RACF","RD","RE","REJ","OD","RF","RG","RH","RIJ","RLAQ","RLFA","RMFA","RN","RPC","RSC","RT","RUA","RUAQ","RUFA","RVL","RVG"])
        
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (SiteModifier := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70495")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            SiteModifier = random.choice(["ANT","BIL","DIS","EXT","LAT","L","LOW","MED","POS","PRO","LLQ","LUQ","RLQ","RUQ","R","UPP"])
        
        CollectionMethodModifierCode = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (SpecimenRole := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70369")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            SpecimenRole = random.choice(["P","Q","C","E","B","F","G","R","L","O","V"])
        
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SpecimenSourceNameorCode}{separator}{Additives}{separator}{SpecimenCollectionMethod}{separator}{BodySite}{separator}{SiteModifier}{separator}{CollectionMethodModifierCode}{separator}{SpecimenRole}"
    }

    /// Generate SRT
    ClassMethod GenerateSRT(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # SRT Sort Order
        # Example: In a tabular response query, where the return data is known by column name, the SRT might look like
        #    |LastName^A~FirstName^A|
        # Example: In a segment response query, where the return data is known by segment and offset, the SRT field would use segment field name notation,
        #   |PID.3.1^A~PID.3.2|
        import iris,importlib, random
        import hl7apy as cr

        

        SortbyField = "LastName","FirstName","DOB","PID.3.1","PID.3.2"
        SortbyField = random.choice(SortbyField)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Sequencing := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70397")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Sequencing = random.choice(["A","AN","D","DN","N"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SortbyField}{separator}{Sequencing}"
    }

    /// Generate String
    ClassMethod GenerateST(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # ST string data - An Elementary Data Type
        import random,string
        return ''.join(random.choices(string.ascii_uppercase + string.digits, k=8))  # Random alphanumeric string of length 8
    }

    /// Generate Time
    ClassMethod GenerateTM(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # TM - Time, in the format HHMMSS.sss
        from datetime import datetime
        return datetime.now().strftime("%H%M%S")  # Current time in HHMMSS
    }

    /// Generate Telphone Number
    ClassMethod GenerateTN(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # TN telephone number - An Elementary Data Type
        from faker import Faker
        # Initialize Faker instance
        fake = Faker()
        return fake.phone_number()
    }

    /// Generate TQ
    ClassMethod GenerateTQ(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # TQ Timing Quantity
        import iris,importlib, random
        from datetime import datetime, timedelta
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        Quantity = iris.cls(__name__).GenerateCQ(hl7version,characterSeparators,subcomponent=1)

        Interval = iris.cls(__name__).GenerateRI(hl7version,characterSeparators,subcomponent=1)

        Duration = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Using current time
        ini_time_for_now = datetime.now()
        
        if hl7version < "2.6":
            StartDateTime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
            EndDateTime = ini_time_for_now + timedelta(days = 30)
            EndDateTime = EndDateTime.strftime("%Y%m%d%H%M%S")
        else:
            StartDateTime = ini_time_for_now.strftime("%Y%m%d%H%M%S")
            EndDateTime = ini_time_for_now + timedelta(days = 30)
            EndDateTime = EndDateTime.strftime("%Y%m%d%H%M%S")

        Priority = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Condition = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        Text = iris.cls(__name__).GenerateTX(hl7version,characterSeparators)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Conjunction := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL0472")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Conjunction = random.choice(["S","A","C"])

        OrderSequencing = iris.cls(__name__).GenerateOSD(hl7version,characterSeparators,subcomponent=1)
        if hl7version < "2.6":
            OccurrenceDuration = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)
        else:
            OccurrenceDuration = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        TotalOccurrences = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{Quantity}{separator}{Interval}{separator}{Duration}{separator}{StartDateTime}{separator}{EndDateTime}{separator}{Priority}{separator}{Condition}{separator}{Text}{separator}{Conjunction}{separator}{OrderSequencing}{separator}{OccurrenceDuration}{separator}{TotalOccurrences}"
    }

    /// Generate Time Stamp
    ClassMethod GenerateTS(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # TS Time Stamp
        # YYYYMMDD[HHMM[SS[.SSSS]]][+/-ZZZZ]^<degree of precision>  
        from datetime import datetime
        return datetime.now().strftime('%Y%m%d%H%M%S')
    }

    /// Generate Text Data
    ClassMethod GenerateTX(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # TX text data - An Elementary Data Type
        from faker import Faker
        from faker.providers import lorem
        # Initialize Faker instance
        fake = Faker()
        return fake.paragraph(nb_sentences=1)
    }

    /// Generate TX_CHALLENGE
    ClassMethod GenerateTXCHALLENGE(hl7version = "2.5", characterSeparators ="|^~\&") [ Language = python ]
    {
        # TX text data - An Elementary Data Type
        from faker import Faker
        from faker.providers import lorem
        # Initialize Faker instance
        fake = Faker()
        return fake.paragraph(nb_sentences=1)
    }

    /// Generate UVC
    ClassMethod GenerateUVC(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # UVC UB Value Code and Amount
        # Definition: A code structure to relate amounts or values to identified data elements necessary to process this claim as qualified by the payer organization.
        # Example:
        # |01&most common semi private rate&NUBC^750&USD|
        import iris,importlib, random
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        if hl7version < "2.5":
            ValueCode = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        elif hl7version < "2.7":
            ValueCode = iris.cls(__name__).GenerateCNE(hl7version,characterSeparators,subcomponent=1)
        else:
            ValueCode = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        if hl7version < "2.5":
            ValueAmount = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
        else:
            ValueAmount = iris.cls(__name__).GenerateMO(hl7version,characterSeparators,subcomponent=1)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version < "2.7":
            return f"{ValueCode}{separator}{ValueAmount}"
        else:
            NonMonetaryValueAmountQuanti = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)
            NonMonetaryValueAmountUnits = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
            return f"{ValueCode}{separator}{ValueAmount}{separator}{NonMonetaryValueAmountQuanti}{separator}{NonMonetaryValueAmountUnits}"
    }

    /// Generate VH
    ClassMethod GenerateVH(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # VH Visiting Hours
        import iris,importlib, random
        import hl7apy as cr


        StartDayRange = "SAT","SUN","MON","TUE","WED","THU","FRI"
        StartDayRange = random.choice(StartDayRange)
        EndDayRange = "SAT","SUN","MON","TUE","WED","THU","FRI"

        index = EndDayRange.index(StartDayRange)
        if index <= 4:
            index = index + 2
        EndDayRange = EndDayRange[index]
        StartHourRange = iris.cls(__name__).GenerateTM(hl7version,characterSeparators)
        EndHourRange = iris.cls(__name__).GenerateTM(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{StartDayRange}{separator}{EndDayRange}{separator}{StartHourRange}{separator}{EndHourRange}"
    }

    /// Generate VID
    ClassMethod GenerateVID(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # VID Version Identifier
        import iris
        from faker import Faker
    
        fake = Faker()

        VersionID = hl7version
        InternationalizationCode = fake.country_code('alpha-3')
        InternationalVersionID = iris.cls(__name__).GenerateCNE(hl7version,characterSeparators,subcomponent=1)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]        
        return f"{VersionID}{separator}{InternationalizationCode}{separator}{InternationalVersionID}"
    }

    /// Generate VR
    ClassMethod GenerateVR(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        from faker import Faker
        from faker.providers import lorem

        # Initialize Faker instance
        fake = Faker()
        FirstDataCodeValue = fake.word()
        LastDataCodeValue = fake.word()
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{FirstDataCodeValue}{separator}{LastDataCodeValue}"
    }

    /// Generate WVI datatype
    ClassMethod GenerateWVI(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # WVI Channel Identifier
        import iris
        from faker import Faker
        from faker.providers import lorem
 
        # Initialize Faker instance
        fake = Faker()
        ChannelNumber = iris.cls(__name__).GenerateNM(hl7version = "2.5", characterSeparators ="|^~\&")
        ChannelName = fake.word()

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{ChannelNumber}{separator}{ChannelName}"
    }

    /// Generate Waveform Source datatype
    ClassMethod GenerateWVS(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # WVS Waveform Source
        from faker import Faker
        from faker.providers import lorem

        # Initialize Faker instance
        fake = Faker()
        SourceOneName = fake.word()
        SourceTwoName = fake.word()

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        return f"{SourceOneName}{separator}{SourceTwoName}"
    }

    /// Generate XAD
    ClassMethod GenerateXAD(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # XAD Extended Address
        import iris,random
        from datetime import datetime, timedelta
        from faker import Faker
        from faker.providers import lorem
        # Initialize Faker instance
        fake = Faker('en_us')

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
        # table 399 for country not filled in but HL7apy has a table for V2.5
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Country := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70399")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Country = fake.country_code('alpha-3')

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AddressType := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70190")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AddressType = random.choice(["BA","BI","N","BDL","F","C","B","H","L","M","O","P","RH","BR","S","SH","TM","V"])

        OtherGeographicDesignation = fake.current_country()
        CountyParishCode = Country
        # Census Tract number(.number) https://www.census.gov/geographies/reference-maps/2020/geo/2020pl-maps/2020-census-tract.html
        CensusTract = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)

        # AddressRepresentationCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AddressRepresentationCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70465")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AddressRepresentationCode = random.choice(["I","A","P"])


        AddressValidityRange = iris.cls(__name__).GenerateDR(hl7version,characterSeparators,subcomponent=1)
        EffectiveDate = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)
        ExpirationDate = iris.cls(__name__).GenerateIS(hl7version,characterSeparators)


        # Using current time
        ini_time_for_now = datetime.now()
        
        if hl7version < "2.6":
            EffectiveDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
            ExpirationDate = ini_time_for_now + timedelta(days = 30)
            ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")
        else:
            EffectiveDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")
            ExpirationDate = ini_time_for_now + timedelta(days = 30)
            ExpirationDate = ExpirationDate.strftime("%Y%m%d%H%M%S")

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]


        if hl7version < "2.6":
            return f"{StreetAddress}{separator}{OtherDesignation}{separator}{City}{separator}{StateorProvince}{separator}{ZiporPostalCode}{separator}{Country}{separator}{AddressType}{separator}{OtherGeographicDesignation}{separator}{CountyParishCode}{separator}{CensusTract}{separator}{AddressRepresentationCode}{separator}{AddressValidityRange}{separator}{EffectiveDate}{separator}{ExpirationDate}"
        else:
            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (ExpirationReason := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70616")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                ExpirationReason = random.choice(["Y","N"])

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (TemporaryIndicator := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70136")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                TemporaryIndicator = random.choice(["Y","N"])

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (BadAddressIndicator := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70136")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                BadAddressIndicator = random.choice(["Y","N"])

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (AddressUsage := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70617")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                AddressUsage = random.choice(["M","V","C"])

            Addressee = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            Comment = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            PreferenceOrder = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

            # Try to grab value from HL7 Table if None returned then use list from another version's table
            if (ProtectionCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70618")) is not None:
                # Do something with result
                pass
            else:
                # Do something else
            #    print("Method returned nothing")   
                ProtectionCode = random.choice(["LI","UL","UP"])

            AddressIdentifier = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)

            return f"{StreetAddress}{separator}{OtherDesignation}{separator}{City}{separator}{StateorProvince}{separator}{ZiporPostalCode}{separator}{Country}{separator}{AddressType}{separator}{OtherGeographicDesignation}{separator}{CountyParishCode}{separator}{CensusTract}{separator}{AddressRepresentationCode}{separator}{AddressValidityRange}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ExpirationReason}{separator}{TemporaryIndicator}{separator}{BadAddressIndicator}{separator}{AddressUsage}{separator}{Addressee}{separator}{Comment}{separator}{PreferenceOrder}{separator}{ProtectionCode}{separator}{AddressIdentifier}"
    }

    /// Generate XCN
    ClassMethod GenerateXCN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # XCN Extended Composite ID Number and Name for Persons
        import iris,textwrap,random,importlib,string
        from faker import Faker
        from faker.providers import internet,misc,geo
        from datetime import datetime
        import hl7apy as cr

        # Initialize Faker instance
        fake = Faker()

        PersonIdentifier = random.randint(100000000000000, 999999999999999)
        FamilyName = fake.last_name()
        GivenName = fake.first_name()
        SecondandFurtherGivenNamesor =  fake.first_name()
        Suffix = fake.suffix()
        Prefix = fake.prefix()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])

        # Table 297 is empty
        SourceTable = fake.pystr()[:4]

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (AssigningAuthority := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70363")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            AssigningAuthority = random.choice(["AUSDVA","AUSHIC","CANAB","CANBC","CANMB","CANNB","CANNF","CANNS","CANNT","CANNU","CANON","CANPE","CANQC","CANSK","CANYT","NLVWS","USCDC","USHCFA","USSSA"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70200")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameTypeCode = random.choice(["A","B","C","D","I","L","M","N","P","R","S","T","U"])

        IdentifierCheckDigit = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # Check Digit Scheme logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CheckDigitScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            CheckDigitScheme = random.choice(["NPI","ISO","M10","M11"])        


        # IdentifierTypeCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (IdentifierTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70203")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            IdentifierTypeCode = random.choice(["AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"])      

        AssigningFacility  = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # NameRepresentationCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameRepresentationCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70465")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameRepresentationCode = random.choice(["I","A","P"])

        # Table 448 is typically empty so use the type to generate data
        NameContext = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)

        NameValidityRange = iris.cls(__name__).GenerateDR(hl7version,characterSeparators,subcomponent=1)

        # NameAssemblyOrder logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameAssemblyOrder := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70444")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameAssemblyOrder = random.choice(["G","F"])

        EffectiveDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        ExpirationDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        ProfessionalSuffix = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        AssigningJurisdiction = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        AssigningAgencyorDepartment = iris.cls(__name__).GenerateCWE(hl7version,characterSeparators,subcomponent=1)
        if hl7version > "2.6":
            SecurityCheck = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
            # SecurityCheckScheme Logic
            # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (SecurityCheckScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70904")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            SecurityCheckScheme = random.choice(["BCV","CCS","VID"])

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        if hl7version < "2.5":
            return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}"
        elif hl7version < "2.7":
            return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}"
        else:
            return f"{PersonIdentifier}{separator}{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{SourceTable}{separator}{AssigningAuthority}{separator}{NameTypeCode}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{AssigningJurisdiction}{separator}{AssigningAgencyorDepartment}{separator}{SecurityCheck}{separator}{SecurityCheckScheme}"
    }

    /// Generate XON
    ClassMethod GenerateXON(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # XON Extended Composite Name and Identification Number for Organizations
        import iris,importlib, random
        from faker import Faker
        fake = Faker()
        import hl7apy as cr

        OrganizationName = fake.company()

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (OrganizationNameTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70204")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            OrganizationNameTypeCode = random.choice(["A","L","D","SL"])

        IDNumber = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        IdentifierCheckDigit = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # Check Digit Scheme logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (CheckDigitScheme := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70061")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            CheckDigitScheme = random.choice(["NPI","ISO","M10","M11"])   

        AssigningAuthority = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # IdentifierTypeCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (IdentifierTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70203")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            IdentifierTypeCode = random.choice(["AM","AN","ANON","ANC","AND","ANT","APRN","BA","BC","BR","BRN","CC","CY","DDS","DEA","DI","DFN","DL","DN","DPM","DO","DR","DS","EI","EN","FI","GI","GL","GN","HC","JHN","IND","LI","LN","LR","MA","MB","MC","MCD","MCN","MCR","MD","MI","MR","MRT","MS","NE","NH","NI","NII","NIIP","NNxxx","NP","NPI","OD","PA","PCN","PE","PEN","PI","PN","PNT","PPN","PRC","PRN","PT","QA","RI","RPH","RN","RR","RRI","SL","SN","SR","SS","TAX","TN","U","UPIN","VN","VS","WC","WCN","XX"])      

        
        AssigningFacility = iris.cls(__name__).GenerateHD(hl7version,characterSeparators,subcomponent=1)

        # NameRepresentationCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameRepresentationCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70465")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameRepresentationCode = random.choice(["I","A","P"])

        OrganizationIdentifier = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]

        if hl7version < "2.3":
            return f"{OrganizationName}{separator}{OrganizationNameTypeCode}{separator}{IDNumber}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}"
        elif hl7version < "2.5":
            return f"{OrganizationName}{separator}{OrganizationNameTypeCode}{separator}{IDNumber}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{NameRepresentationCode}"
        else:
            return f"{OrganizationName}{separator}{OrganizationNameTypeCode}{separator}{IDNumber}{separator}{IdentifierCheckDigit}{separator}{CheckDigitScheme}{separator}{AssigningAuthority}{separator}{IdentifierTypeCode}{separator}{AssigningFacility}{separator}{NameRepresentationCode}{separator}{OrganizationIdentifier}"
    }

    /// Generate XPN
    ClassMethod GenerateXPN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # XPN Extended Person Name
        import iris,random,importlib,string
        from faker import Faker
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        

        # Initialize Faker instance
        fake = Faker()

        FamilyName = fake.last_name() # iris.cls(__name__).GenerateFN(hl7version,characterSeparators)
        GivenName = fake.first_name()
        SecondandFurtherGivenNamesor =  fake.last_name() + fake.first_name()
        Suffix = fake.suffix()
        Prefix = fake.prefix()

        # Degree logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (Degree := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70360")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            Degree = random.choice(["AAS","AA","ABA","AE","AS","BA","BBA","BE","BFA","BN","BS","BSL","BT","CER","DIP","DBA","DED","PHE","PHD","PHS","MD","DO","HS","JD","MA","MBA","MCE","MDI","MED","MEE","ME","MFA","MME","MS","MSL","MT","NG","SEC","TS"])

        # NameTypeCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameTypeCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70200")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameTypeCode = random.choice(["A","B","C","D","I","L","M","N","P","R","S","T","U"])

        # NameRepresentationCode logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameRepresentationCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70465")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameRepresentationCode = random.choice(["I","A","P"])
			
        # NameConext logic
        # table 448 is blank so use CE generator
        NameContext = iris.cls(__name__).GenerateCE(hl7version,characterSeparators,subcomponent=1)

        NameValidityRange = iris.cls(__name__).GenerateDR(hl7version,characterSeparators,subcomponent=1)
        # NameAssemblyOrder logic
        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (NameAssemblyOrder := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70444")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            NameAssemblyOrder = random.choice(["G","F"])

        EffectiveDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        ExpirationDate = iris.cls(__name__).GenerateTS(hl7version,characterSeparators)
        ProfessionalSuffix = iris.cls(__name__).GenerateST(hl7version,characterSeparators)
        CalledBy = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version < "2.7":
            return f"{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{NameTypeCode}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}"
        else:
            return f"{FamilyName}{separator}{GivenName}{separator}{SecondandFurtherGivenNamesor}{separator}{Suffix}{separator}{Prefix}{separator}{Degree}{separator}{NameTypeCode}{separator}{NameRepresentationCode}{separator}{NameContext}{separator}{NameValidityRange}{separator}{NameAssemblyOrder}{separator}{EffectiveDate}{separator}{ExpirationDate}{separator}{ProfessionalSuffix}{separator}{CalledBy}"
    }

    /// Generate XTN
    ClassMethod GenerateXTN(hl7version = "2.5", characterSeparators ="|^~\&",subcomponent=0) [ Language = python ]
    {
        # XTN Extended Telecommunication Number
        import iris,textwrap,random,importlib
        from faker import Faker
        from faker.providers import internet,misc,phone_number
        from datetime import datetime, timedelta
        import string
        import hl7apy as cr
        #Call Table method to get list of tables in this version
        
        ## use locale = en_US for code to work else rework code to support all forms
        fake = Faker('en_US')
        ## use basic_phone_number imported from faker.providers.phone_number for ease of coding else rework code to support all forms
        TelephoneNumber = fake.basic_phone_number()
        ##print(TelephoneNumber)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (TelecommunicationUseCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70201")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            TelecommunicationUseCode = random.choice(["PRN","ORN","WPN","VHN","ASN","EMR","NET","BPN","PRS"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (TelecommunicationEquipmentTy := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70202")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            TelecommunicationEquipmentTy = random.choice(["PH","FX","MD","CP","SAT","BP","Internet","X.400","TDD","TTY"])

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
        Extension = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        AnyText = iris.cls(__name__).GenerateST(hl7version,characterSeparators)

        ExtensionPrefix = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        SpeedDialCode = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        UnformattedTelephonenumber = TelephoneNumber
        
        # Using current time
        ini_time_for_now = datetime.now()

        EffectiveStartDate = ini_time_for_now.strftime("%Y%m%d%H%M%S")

        ExpirationDate = ini_time_for_now + timedelta(days = 30)

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (ExpirationReason := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70868")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            ExpirationReason = random.choice(["M","E","R","C","N"])

        # Try to grab value from HL7 Table if None returned then use list from another version's table
        if (ProtectionCode := iris.cls("dc.Generator").GenerateASampleTableValue(hl7version,"HL70618")) is not None:
            # Do something with result
            pass
        else:
            # Do something else
        #    print("Method returned nothing")   
            ProtectionCode = random.choice(["LI","UL","UP"])

        SharedTelecommunicationIdent  = iris.cls(__name__).GenerateEI(hl7version,characterSeparators,subcomponent=1)

        PreferenceOrder  = iris.cls(__name__).GenerateNM(hl7version,characterSeparators)

        # If this is a subcomponent then use subcomponent_separator else use component seperator
        if subcomponent == True:
            separator = characterSeparators[4:5]
        else:
            # Get the Component separator
            separator = characterSeparators[1:2]
        if hl7version < "2.5":
            return f"{TelephoneNumber}{separator}{TelecommunicationUseCode}{separator}{TelecommunicationEquipmentTy}{separator}{CommunicationAddress}{separator}{CountryCode}{separator}{AreaCityCode}{separator}{LocalNumber}{separator}{Extension}{separator}{AnyText}"
        elif hl7version < "2.6":
            return f"{TelephoneNumber}{separator}{TelecommunicationUseCode}{separator}{TelecommunicationEquipmentTy}{separator}{CommunicationAddress}{separator}{CountryCode}{separator}{AreaCityCode}{separator}{LocalNumber}{separator}{Extension}{separator}{AnyText}{separator}{ExtensionPrefix}{separator}{SpeedDialCode}{separator}{UnformattedTelephonenumber}"
        else:
            return f"{TelephoneNumber}{separator}{TelecommunicationUseCode}{separator}{TelecommunicationEquipmentTy}{separator}{CommunicationAddress}{separator}{CountryCode}{separator}{AreaCityCode}{separator}{LocalNumber}{separator}{Extension}{separator}{AnyText}{separator}{ExtensionPrefix}{separator}{SpeedDialCode}{separator}{UnformattedTelephonenumber}{separator}{EffectiveStartDate}{separator}{ExpirationDate}{separator}{ExpirationReason}{separator}{ProtectionCode}{separator}{SharedTelecommunicationIdent}{separator}{PreferenceOrder}"
    }
    /// Generate a field for a version
    ClassMethod GenerateAFieldForVersion(hl7version = "2.5", field = "MSH_12", characterSeparators ="|^~\&", required = 1, repeat = 1, message = "") [ Language = python ]
    {
        import iris, random
        import hl7apy as cr
        # Get the Component separator from the list sent in
        component_separator = characterSeparators[1:2]
        # Get the sub-component separator from the list sent In
        subcomponentseparator = characterSeparators[4:5]
        # Get the encoding characters from the list sent in
        EncodingCharacters = characterSeparators[1:5]
        # set field_tuple to the fields for the HL7 version listed
        field_tuple = cr.load_reference(field, "Field", hl7version)
    #    print(field_tuple)
        #print(isinstance(field_tuple,tuple))
        #print(type(field_tuple[1]))
        #print(isinstance(field_tuple[1],str))

        #print(type(field_tuple[2]))
        #print(isinstance(field_tuple[2],str))
    #    print(field_tuple[2])
        field_table = field_tuple[4]
    #    print(field_table)
        
        # list of tables in this version
        tables=iris.cls("dc.GetStuff").GetAllTablesForVersion(hl7version)
        # Check if the field is a table entry
        if field_table in tables:
        #    print("here")
            try:
                codes_from_table = tables[field_table][1]
            #    print(f"codes_from_table: {codes_from_table}")
                if codes_from_table != ():
                    code_from_table = random.choice(codes_from_table)
                #    print(f"code_from_table: {code_from_table}")
                    sample_data_type = code_from_table
                else:
                    sample_data_type = "Table is empty"
            except Exception as e:
                print({e})
        elif isinstance(field_tuple[2],str):
        #    print("elif here")

            field_data_type = field_tuple[2]
            if field_data_type == "WD":
                sample_data_type="Withdrawn"
                #print("this field is withdrawn from HL7 Standard")
                #print(f"{field_tuple[2]} sample_data_type: {sample_data_type}")
            elif field_data_type == "varies":
                sample_data_type="Varies"
                #print(f"{field_tuple[2]} sample_data_type: {sample_data_type}")
            else:
                # Get the data type for the field
                sample_data_type=iris.cls(__name__).GenerateSampleDataType(field_data_type,"",hl7version,message)
                #print(f"{field_tuple[2]} sample_data_type: {sample_data_type}")
        else:
        #    print("NOTHING")
            return

        return(sample_data_type)

    }

    /// Generate Segment Sample Per Version
    ClassMethod GenerateASegmentSampleForVersion(hl7version = "2.5", segment = "ABS", characterSeparators ="|^~\&", required = 1, repeat = 1, MSH9 = "",message="") As %Status [ Language = python ]
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

        if segment == "ANYHL7SEGMENT":
            segment = "NTE"
        # set segment_tuple to the segment for the HL7 version listed
        segment_tuple = cr.load_reference(segment, "Segment", hl7version)
#        print(segment_tuple)
#        print(type(segment_tuple))
#        print(isinstance(segment_tuple,tuple))
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
            #    print(field)
            #    print(requirerepeatable)
            #    print(hl7required)
            #    print(hl7repeatable)

                if field == "MSH_1":
                    sample_segment = sample_segment + FieldSeparator
                elif field == "MSH_2":
                    sample_segment = sample_segment + EncodingCharacters
                elif field == "MSH_9":
                    if MSH9=="ACK":
                #        print("ACK")
                        sample_segment = sample_segment + FieldSeparator + MSH9
                    else:
                    #    print(message)
                        try:
                            MSH9 = iris.cls(__name__).GenerateMSG(hl7version, characterSeparators, message)
                        #    print(MSH9)
                        except Exception as e:
                            print(e)
                        sample_segment = sample_segment + FieldSeparator + MSH9
                        
                elif field == "MSH_12":
                    sample_segment = sample_segment + FieldSeparator + hl7version
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
                                except:
                                    segmentfieldSample = ""
                                    ##print("failed")
                                ##print(segmentfieldSample)

                                sample_segment = sample_segment + FieldSeparator + str(segmentfieldSample)
                                repeatcounter -=1
                        else:
                            ##print(f"1 repeat")
                            try:
                                segmentfieldSample = iris.cls(__name__).GenerateAFieldForVersion(hl7version, field, characterSeparators,"","",message)
                            except:
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
        # Get the field separator
        FieldSeparator = characterSeparators[0:1]
        # Get the encoding characters
        EncodingCharacters = characterSeparators[1:5]
        # Get the Component separator
        component_separator = characterSeparators[1:2]
        
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

    #    print(type(group_tuple[2]))
    #    print(group_tuple[2])
    #    print(isinstance(group_tuple[2],str))
    

        for item in group_tuple[1]:
        #    print(item)
            segment_name = item[0]

            hl7required = item[2][0]
            hl7repeatable = item[2][1]
            field_type = item[3]
        #    print(f"segment_name: {segment_name} , type: {field_type}")


        #    print(hl7required)
        #    print(hl7repeatable)

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
                        try:
                            if item[3] == "SEG":
                                sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,"",message)
                            elif item[3] == "GRP":
                                sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                        #    print(f"sample repeat group before: {sample_group}")
                            if first_time == 0:
                                sample_group = sample_segment
                            else:
                                sample_group = sample_group + "\r"+ sample_segment

                        except Exception as e:
                            sample_segment = ""
                        #    print(f"failed: {e}")
                    #    print(sample_segment)
                        first_time=1
                        repeatcounter -=1
                else:
                #    print(f"repeat how many I want")
                    try:
                        if item[3] == "SEG":
                            sample_segment = iris.cls(__name__).GenerateASegmentSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,"",message)
                        elif item[3] == "GRP":
                            sample_segment = iris.cls(__name__).GenerateAGroupSampleForVersion(hl7version, segment_name, characterSeparators, required, repeat,message)
                    #    print(f"sample 1 repeat group before: {sample_group}")

                        if first_time == 0:
                            sample_group = sample_segment
                        else:
                            sample_group = sample_group + "\r"+ sample_segment
                    except Exception as e:
                        sample_segment = ""
                        print(f"failed: {e}")
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

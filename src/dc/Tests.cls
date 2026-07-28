Class dc.Tests  Extends %SwizzleObject {
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
ClassMethod GetAllMessagesPerVersion(ver = "2.5") As %Status [ Language = python ]
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
/// TestAllMessagesPerVersion
ClassMethod TestAllMessagesPerVersion(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    sc = "1"
    MessagesPerVersion = iris.cls("dc.HL7v2Gen").GetMessageTypes(ver)
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
        sample = iris.cls("dc.HL7v2Gen").GenerateMessageSamplePerVersion(ver,messageType,charSep,required,repeat)
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
    MessagesPerVersion = iris.cls("dc.HL7v2Gen").GetMessageTypes(ver)
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
            sample = iris.cls("dc.HL7v2Gen").GenerateMessageSamplePerVersion(ver,messageType,charSep,required,repeat)
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
    hl7message=iris.cls("dc.HL7v2Gen").GenerateMessageSamplePerVersion("2.5","ADT_A01","|^~\&",1,1)
    print(f"hl7message: {hl7message}")
    results=iris.cls("dc.HL7v2Gen").SendMessage(hl7message,"localhost","7878")
    print(f"result: {results}")
}

/// SendAllMessagesPerVersion X times
ClassMethod SendAllMessagesPerVersionXtimes(ver = "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1", host = "127.0.0.1", port = "7878") As %Status [ Language = python ]
{
    import iris
    sc = "1"
    MessagesPerVersion = iris.cls("dc.HL7v2Gen").GetMessageTypes(ver)
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
            sample = iris.cls("dc.HL7v2Gen").GenerateMessageSamplePerVersion(ver,messageType,charSep,required,repeat)
            print(f"sample: {sample}")
            results=iris.cls("dc.HL7v2Gen").SendMessage(sample,host,port)
            print(f"result: {results}")
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n\n")
    print(filename)
    return sc
}
}
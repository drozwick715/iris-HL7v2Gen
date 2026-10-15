Class dc.Tester  Extends %SwizzleObject {

    /// Testing Table Random data
    ClassMethod TestTablesForVersion(hl7version= "2.5") [ Language = python ]
    {
        import iris, random
        try:
            tables = iris.cls("dc.GetStuff").GetAllTablesForVersion(hl7version)
        except Exception as e:
            print(f"Failed to generate tables: {e}")
        if tables == {}:
            print("No Tables found")
        else:
            print(f"tables: {tables}")
        #    print(type(tables))
        #    print(tables["HL70001"][1])
            for table in tables:
                try:
                    # if this was called to get a value for a table then loop in and find table values and randomly pick one of the values
                    # else generate a fake value based on DataType
                    if table:
                        # Get the values for the key
                        #print(tables[table][1])
                        if str(tables[table][1]) != "()":
                            # set table_values to what is found in the library
                            table_values = tables[table][1]
                            #return a random choice from the table
                            table_data_sample = random.choice(table_values)
                            print(f"table {table} sample: {table_data_sample}")
                        else:
                            #print("Table not filled in")
                            #return E for empty table
                            print(f"table {table} sample: no data")
                except Exception as e:
                    print(e)

    }

ClassMethod TestDataTypesForVersion(hl7version = "2.5") [ Language = python ]
{
    import importlib, random, iris
    import hl7apy as cr

    #Get HL7 version related library
    #print(cr.SUPPORTED_LIBRARIES)
    # {'2.4': 'hl7apy.v2_4', '2.6': 'hl7apy.v2_6', '2.7': 'hl7apy.v2_7', '2.1': 'hl7apy.v2_1', '2.5': 'hl7apy.v2_5', '2.3.1': 'hl7apy.v2_3_1', '2.8.2': 'hl7apy.v2_8_2', '2.3': 'hl7apy.v2_3', '2.2': 'hl7apy.v2_2', '2.8': 'hl7apy.v2_8', '2.8.1': 'hl7apy.v2_8_1', '2.5.1': 'hl7apy.v2_5_1'}
    #print(f" Testing hl7version: {hl7version}")
    if hl7version in cr.SUPPORTED_LIBRARIES:

        module_name = cr.SUPPORTED_LIBRARIES[hl7version]
        #print(f"module_name: {module_name}")
        #module_name: hl7apy.v2_5

        lib = importlib.import_module(module_name)
        #print(f"lib: {lib}")
        #lib: <module 'hl7apy.v2_5' from '/usr/irissys/mgr/python/hl7apy/v2_5/__init__.py'>

        #get datatype reference
        try:
            datatypes = lib.datatypes.DATATYPES_STRUCTS
        except Exception as e:
            print({e})
            print ("datatypes Errors")

    #    print(type(datatypes))
        # <class 'dict'>
    #    print(f"datatypes: {datatypes}")

        for index, (datatype, structure) in enumerate(datatypes.items()):
            print(f"\n---Index: {index}, Datatype: {datatype}, Structure: {structure}\n\r")
            try:
                sample_datatype=iris.cls("dc.Generator").GenerateSampleDataType(hl7version,datatype,"","ADT^A01")
            except Exception as e:
                print({e})
            print(f"Sample for {datatype} is {sample_datatype}\n")
 
    else:
        print("Version Not supported")

}

    /// Test One specific data type per version a number of times
ClassMethod TestOneDataTypeForVersionXtimes(hl7version= "2.5", datatype = "TS", numTimes = "1") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## Get List of Data Types in this version to check if entered Data type exists
    data_type_list = iris.cls("dc.GetStuff").GetListAllDataTypesForVersion(hl7version)
    print(f"data_type_list: {data_type_list}")
    
    # if not supported (return of 0) then quit
    if data_type_list!=0:
        ## Check
        if datatype in data_type_list:
            print("Data type is correct")
            for _ in range(int(numTimes)):
                sampleDT = iris.cls("dc.Generator").GenerateSampleDataType(hl7version,datatype,"","")
                print(f"datatype: {datatype} sampleDT: {sampleDT}")
        else:
            print(f"Data type is incorrect.  Try again using {data_type_list}")
    
}

/// Test all Datatypes per version a number of times to make sure this code works in greater solution
ClassMethod TestAllDTsPerVersionXtimes(hl7version= "2.5", numTimes = "1") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## Get List of Data Types in this version to check if entered Data type exists
    data_type_list = iris.cls("dc.GetStuff").GetListAllDataTypesForVersion(hl7version)
    if data_type_list!=0:
        print(data_type_list)
        with open('DatatypesTest.txt','w') as file:
            file.write(str(data_type_list))
            file.write("\n")

        for datatype in data_type_list:
            print(datatype)
            with open('DatatypesTest.txt','a') as file:
                file.write(str(datatype))
                file.write("\n")
            for _ in range(int(numTimes)):
                try:
                    sampleDT = iris.cls("dc.Generator").GenerateSampleDataType(hl7version,datatype,"","")
                    print(f"datatype: {datatype} sampleDT: {sampleDT}")
                    with open('DatatypesTest.txt','a') as file:
                        file.write(str(sampleDT))
                        file.write("\n")
                except:
                    print("An exception occured")        
}

    


/// Test all fields per version
ClassMethod TestAllFieldsPerVer(hl7version= "2.5") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listoffields = iris.cls("dc.GetStuff").GetAllFieldsForVersion(hl7version).split(separator)
    #print(listoffields)
    with open('FieldTest.txt','w') as file:
        file.write(str(listoffields))
        file.write("\n")

    for field in listoffields:
        try:
            #print(field)
            with open('FieldTest.txt','a') as file:
                file.write(str(field))
                file.write("\n")
            try:
                sample = iris.cls("dc.Generator").GenerateAFieldForVersion(hl7version,field)
            except ValueError as dve:
                # Stop the loop on this specific error
                print(dve)
                break
            except Exception as de:
                # Stop the loop on any other error
                print(de)
                break    

            print(f"field: {field} sample: {sample}")

            with open('FieldTest.txt','a') as file:
                file.write(str(sample))
                file.write("\n")
        except ValueError as ve:
            # Stop the loop on this specific error
            print(ve)
            break
        except Exception as e:
            # Stop the loop on any other error
            print(e)
            break        
}

/// Get all fields per ver
ClassMethod TestOneFieldPerVersionXtimes(hl7version= "2.5", fieldname = "ABS_4", numTimes = "5") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## Get List of fields in this version to check if entered Field Name exists
    listoffields = iris.cls("dc.GetStuff").GetAllFieldsForVersion(hl7version).split(separator)
    ## Check
    if fieldname in listoffields:
        print("Field name is correct")
        for _ in range(int(numTimes)):
            sampleField = iris.cls("dc.Generator").GenerateFieldForVersion(hl7version, fieldname)
            print(f"Field: {fieldname} sampleField: {sampleField}")

    else:
        print(f"Field name is incorrect.  Try again using {listoffields}")
}

/// Test all Fields per version a number of times to make sure this code works in greater solution
ClassMethod TestAllFieldsPerVersionXtimes(hl7version= "2.5", numTimes = "1") [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listoffields = iris.cls("dc.GetStuff").GetAllFieldsForVersion(hl7version).split(separator)
    print(listoffields)
    with open('FieldTest.txt','w') as file:
        file.write(str(listoffields))
        file.write("\n")

    for field in listoffields:
        print("------------------------------------")
        print(field)
        print("------------------------------------")
        with open('FieldTest.txt','a') as file:
            file.write("------------------------\n")
            file.write(str(field))
            file.write("\n------------------------\n")
        for _ in range(int(numTimes)):
            sample = iris.cls("dc.Generator").GenerateAFieldForVersion(hl7version,field)
            print(f"field: {field} sample: {sample}")
            with open('FieldTest.txt','a') as file:
                file.write(str(sample))
                file.write("\n")
}





/// Test All Segments Per Version
ClassMethod TestAllSegmentsPerVersion(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listofsegments = iris.cls("dc.GetStuff").GetAllSegmentsForVersion(hl7version).split(separator)
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
            if hl7version < "2.3.1":
                sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"ADT^A19")
            else:
                sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"ADT^A19^ADT_A19")
        else:
            sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"")
        print(f"segment: {segment} sample: {sample}")
        with open('SegmentTest.txt','a') as file:
            file.write(str(sample))
            file.write("\n")
}

/// Test One Segments Per Version x times
ClassMethod TestOneSegmentsPerVersionXtimes(hl7version= "2.5", segment = "EVN", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listofsegments = iris.cls("dc.GetStuff").GetAllSegmentsForVersion(hl7version).split(separator)
    if segment in listofsegments:
        print("Segment is correct")
        for _ in range(int(numTimes)):
            ## if MSH then need to send what is going in MSH:9
            if segment=="MSH":
                if hl7version < "2.3.1":
                    sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"ADT^A19")
                else:
                    sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"ADT^A19^ADT_A19")
            else:
                sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"")
            print(sample)
    else:
        print(f"Segment not found in this {hl7version}.  Try again using {listofsegments}")
}

/// Test All Segments Per Version x times
ClassMethod TestAllSegmentsPerVersionXtimes(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    listofsegments = iris.cls("dc.GetStuff").GetAllSegmentsForVersion(hl7version).split(separator)
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
                sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"ADT_A19")
            else:
                sample = iris.cls("dc.Generator").GenerateASegmentSampleForVersion(hl7version,segment,charSep,required,repeat,"")
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n")
}




/// Test All Groups Per Version
ClassMethod TestAllGroupsPerVersion(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## get a list of groups for the version
    listofgroups = iris.cls("dc.GetStuff").GetAllGroupsForVersion(hl7version).split(separator)
    print(listofgroups)

    for group in listofgroups:
        print(f"Group Name: {group}\n------------------------\n")
        sample = iris.cls("dc.Generator").GenerateAGroupSampleForVersion(hl7version,group,charSep,required,repeat)
        print(f"group: {group} sample: {sample}")
}

/// Test One Group Per Version X times
ClassMethod TestOneGroupsPerVersionXtimes(hl7version= "2.5", group = "ADT_A01_INSURANCE", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## get a list of groups for the version
    listofgroups = iris.cls("dc.GetStuff").GetAllGroupsForVersion(hl7version).split(separator)
    if group in listofgroups:
        print("Group is correct")
        for _ in range(int(numTimes)):
            print(f"Group Name: {group}\n------------------------\n")
            sample = iris.cls("dc.Generator").GenerateAGroupSampleForVersion(hl7version,group,charSep,required,repeat)
            print(f"Group: {group} sample: {sample}")
    else:
        print(f"Group isn't in version.  Try again using {listofgroups}")
}

/// Test All Groups Per Version x times
ClassMethod TestAllGroupsPerVersionXtimes(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    import hl7apy as cr
    separator = ","
    ## get a list of groups for the version
    listofgroups = iris.cls("dc.GetStuff").GetAllGroupsForVersion(hl7version).split(separator)
    print(listofgroups)
    filename = "GroupTest_" + str(required) + "_" + str(repeat) + "_" + str(numTimes) + ".txt"
    print(filename)
    with open(filename,'w') as file:
        file.write(str(listofgroups))
        file.write("\n")

    for group in listofgroups:
        print(f"Group Name: {group}\n------------------------\n")
        with open(filename,'a') as file:
            file.write(str(group))
            file.write("\n")
        for _ in range(int(numTimes)):
            sample = iris.cls("dc.Generator").GenerateAGroupSampleForVersion(hl7version,group,charSep,required,repeat)
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n")
}

    /// Test One Message Per Version X times
    ClassMethod TestOneMessagePerVersionXtimes(hl7version= "2.5", message = "ADT_A01", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
    {
        import iris
        import hl7apy as cr
        separator = "|"
        filename = "MessagesTest_" + str(required) + "_" + str(repeat) + ".txt"
        ## get a list of groups for the version
        listofmessages = iris.cls("dc.GetStuff").GetMessageTypesForVersion(hl7version).split(separator)
    #    print(listofmessages)

        
        if message in listofmessages:
            print("Message is correct")
            for _ in range(int(numTimes)):

                sample = ""
                status = ""
                try:
                    sample = iris.cls("dc.Generator").GenerateAMessageSampleForVersion(hl7version,message,charSep,required,repeat)
                except Exception as e:
                    print(f"failed: {e}")

                print(f"Message: {message} sample: {sample}")                    

                try:
                    status = iris.cls("dc.Validater").ValidateMessage(sample)
                except Exception as e:
                    print(f"failed: {e}")

                with open("validation_report.txt", 'r') as src:
                    data = src.read()
                print(f"status: {status}")
                with open(filename,'a') as file:
                    file.write(str(sample))
                    file.write("\n\n")                
                    file.write(str(status))
                    file.write("\n\n")
                    file.write(data)
                    file.write("\n\n")
                file.close
                src.close
        else:
            print(f"Message {message} isn't in version.  Try again using {listofmessages}")
    }

/// TestAllMessagesPerVersion
ClassMethod TestAllMessagesPerVersion(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1) As %Status [ Language = python ]
{
    import iris

    message_types_per_version = iris.cls("dc.GetStuff").GetAllMessageTypesForVersion(hl7version)
#    print(f"message_types_per_version: {message_types_per_version}")
#    print(type(message_types_per_version))

    list_of_message_types_per_version = message_types_per_version.split(",")
    print(f"list_of_message_types_per_version: {list_of_message_types_per_version}")

    filename = "MessagesTest_" + str(hl7version)+ "_" + str(required) + "_" + str(repeat) + ".txt"

    with open(filename,'w') as file:
        file.write(str(message_types_per_version))
        file.write("\n")
    for message_type in list_of_message_types_per_version:
        print(f"message_type: {message_type} \n")
        sample = ""
        status = ""
        if message_type!="ACK":
            try:
                sample = iris.cls("dc.Generator").GenerateAMessageSampleForVersion(hl7version,message_type,charSep,required,repeat)
            except Exception as e:
                print(f"Generation failed at {e}")
            print(f"sample: {sample}")
        #    print(type(sample))

            status = iris.cls("dc.Validater").ValidateMessage(sample)
            print(status)
            with open("validation_report.txt", 'r') as src:
                data = src.read()
            with open(filename,'a') as file:
                file.write(str(sample))
                file.write("\n\n")
                file.write(str(status))
                file.write("\n\n")
                file.write(data)
                file.write("\n\n")                
            #try:
            #    status = iris.cls("dc.Validater").ValidateMessage(sample)
            #except Exception as e:
            #    print(f"Validation failed at {e}")



    file.close
    return
}

/// TestAllMessagesPerVersion X times
ClassMethod TestAllMessagesPerVersionXtimes(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1") As %Status [ Language = python ]
{
    import iris
    sc = "1"
    MessagesPerVersion = iris.cls("dc.GetStuff").GetMessageTypesForVersion(hl7version)
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
            sample = iris.cls("dc.Generator").GenerateAMessageSampleForVersion(hl7version,messageType,charSep,required,repeat)
            status = iris.cls("dc.Validater").ValidateMessage(sample)
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
    hl7message=iris.cls("dc.Generator").GenerateAMessageSampleForVersion("2.8.2","ADT_A01","|^~\&",1,1)
    print(f"hl7message: {hl7message}")
    results=iris.cls("dc.Sender").SendMessage(hl7message,"localhost","7282")
    print(f"result: {results}")
}

/// Test Gen and Send 2
ClassMethod TestHL7Sender() As %Status [ Language = python ]
{
    import iris
    hl7message=iris.cls("dc.Generator").GenerateAMessageSampleForVersion("2.5","ADT_A01","|^~\&",1,1)
    print(f"hl7message: {hl7message}")
    results=iris.cls("dc.Sender").HL7Sender(hl7message,"localhost","7825")
    print(f"result: {results}")
}

/// SendAllMessagesPerVersion X times
ClassMethod SendAllMessagesPerVersionXtimes(hl7version= "2.5", charSep = "|^~\&", required = 1, repeat = 1, numTimes = "1", host = "127.0.0.1", port = "7878") As %Status [ Language = python ]
    {
        import iris
        sc = "1"
        MessagesPerVersion = iris.cls("dc.GetStuff").GetMessageTypesForVersion(hl7version)
        separator1 = "|"
        ReformattedMessages = MessagesPerVersion.split(separator1)
        print(ReformattedMessages)
        filename = "MessagesTest_" + str(hl7version) +"_"+ str(required) + "_" + str(repeat) + ".txt"
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
                sample = iris.cls("dc.Generator").GenerateAMessageSampleForVersion(hl7version,messageType,charSep,required,repeat)
                print(f"sample: {sample}")
                results=iris.cls("dc.Sender").SendMessage(sample,host,port)
                print(f"result: {results}")
                with open(filename,'a') as file:
                    file.write(str(sample))
                    file.write("\n\n")
        print(filename)
        return sc
    }
/// Description
ClassMethod MethodName() As %Status [ Language = python ]
    {
        import asyncio

        async def tcp_echo_client(message):
            reader, writer = await asyncio.open_connection(
                '127.0.0.1', 7878)

            print(f'Send: {message!r}')
            writer.write(message.encode())
            await writer.drain()

            data = await reader.read(100)
            print(f'Received: {data.decode()!r}')

            print('Close the connection')
            writer.close()
            await writer.wait_closed()

        asyncio.run(tcp_echo_client('Hello World!'))
    }

}
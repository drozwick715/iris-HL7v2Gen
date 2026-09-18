Class dc.GetStuff Extends %SwizzleObject
{

/// Get all base_datatypes for version
/// all classes so can't just pull what the base types are
/// Get all datatypes for version
/// returns the names
ClassMethod GetListAllDataTypesForVersion(hl7version = "2.5") [ Language = python ]
{
    import importlib, random
    import hl7apy as cr
    thislist = ""
    #Get HL7 version related library
    #print(cr.SUPPORTED_LIBRARIES)
    # {'2.4': 'hl7apy.v2_4', '2.6': 'hl7apy.v2_6', '2.7': 'hl7apy.v2_7', '2.1': 'hl7apy.v2_1', '2.5': 'hl7apy.v2_5', '2.3.1': 'hl7apy.v2_3_1', '2.8.2': 'hl7apy.v2_8_2', '2.3': 'hl7apy.v2_3', '2.2': 'hl7apy.v2_2', '2.8': 'hl7apy.v2_8', '2.8.1': 'hl7apy.v2_8_1', '2.5.1': 'hl7apy.v2_5_1'}
    #print(f" Testing hl7version: {hl7version}")
    if hl7version in cr.SUPPORTED_LIBRARIES:

        message_with_descriptions = []

        module_name = cr.SUPPORTED_LIBRARIES[hl7version]
        #print(f"module_name: {module_name}")
        #module_name: hl7apy.v2_5

        lib = importlib.import_module(module_name)
        #print(f"lib: {lib}")
        #lib: <module 'hl7apy.v2_5' from '/usr/irissys/mgr/python/hl7apy/v2_5/__init__.py'>

        #get datatype reference
        try:
            datatypes = lib.datatypes.DATATYPES_STRUCTS
        except:
            print ("datatypes Errors")
            datatypes = {}
        print(f"datatypes: {datatypes}")

        #sorted_dict = dict(sorted(datatypes.items(),key=lambda item: item[0], reverse=False))
        #print(sorted_dict)

        iteration = 0
        for x in datatypes:
            if iteration==0:
                thislist = x
                iteration += 1
            else:
                thislist = thislist +","+x

        list_string = thislist.split(",")
        unique_list = list(set(list_string))
        unique_list.sort(reverse=False)
        return unique_list
    else:
        print("Version Not supported")
        return 0
}

/// Get all tables for version
ClassMethod GetAllTablesForVersion(hl7version = "2.5") As %Status [ Language = python ]
{
        """
            Method to return all the tables for a HL7 version

            Parms
                hl7version: HL7 version in quotation marks

            Returns
                The HL7 table numbers

            no tables.py for 2.1, 2.2, 2.3
        """
        import iris,importlib
        import hl7apy as cr
        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get tables reference
            try:
                tables = lib.tables.TABLES
            except:
                tables = {}
                """
                tables_list = {}
            #loop through tables from hl7apy
            iteration = 0
            for keys, values in tables.items():
                ##print(keys)
                if iteration == 0:
                    tables_list = keys
                    iteration = iteration +1
                else:
                    tables_list = tables_list + "," + keys
                #print(tables_list)
        return tables_list
        """
        return tables
}

/// Get all fields for version
/// Returns the names
ClassMethod GetAllFieldsForVersion(hl7version = "2.5") [ Language = python ]
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
            #print(FIELDS)
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

/// Get all field structure for version
/// Returns the structure of the field
ClassMethod GetAllFieldStructureForVersion(hl7version = "2.5", field = "XCN_1") [ Language = python ]
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
            #print(FIELDS)
            #print(field)
            for key, value in FIELDS.items():
                print(f"{key}: {value}")
                if str(key) == str(field):
                    #print("found it")
                    print(value)
                    return(value)
            
            return(value)
}

ClassMethod GetAllGroupsForVersion(hl7version = "2.5") [ Language = python ]
{
        """
            Method to return all the Groups for a HL7 version

            Parms
                hl7version: HL7 version in quotation marks

            Returns
                The HL7 group names
        """
        import iris,importlib
        import hl7apy as cr
        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get segment reference
            try:
                groups = lib.groups.GROUPS
            except:
                groups = {}
            print(groups)
            iteration = 0
            for x in groups:
                if iteration==0:
                    groups_list = x
                    iteration = iteration + 1
                else:
                    groups_list = groups_list +","+x
            print(groups_list)
            return groups_list
}

ClassMethod GetMessageTypesForVersion(hl7version = "2.5", adddescription = 0) [ Language = python ]
{
    """
        Method to return all the Message Types for a HL7 version

        Parms
            hl7version: HL7 version in quotation marks

        Returns
            The HL7 messages types with description
    """
    from HL7v2Gen import hl7_message_types 
    import hl7apy as cr
    import importlib

    message_with_descriptions = []
    try:
        if hl7version in cr.SUPPORTED_LIBRARIES:
        #    print("HERE")
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
        #    print(module_name)
            lib = importlib.import_module(module_name)
        #    print(lib)
            messages = lib.MESSAGES
        #    print("messages")
            message_types = list(messages.keys())
        #    print(f"message_types: {message_types}")

            if 'ACK' in message_types:
                #Move ACK message at the end
                message_types.remove('ACK')  # Remove 'ACK' from its current position
                message_types.append('ACK')  # Append 'ACK' to the end
        #    print(f"Formated message_types: {message_types}")    
        #    print(type(message_types))        
            for message in message_types:
            #    print(f"message: {message}")

            #    print(description)
                if int(adddescription) == 1:
                    description = hl7_message_types.get(message, "Description not found")  # Get description from dictionary
                #    print(description)
                    if description != "Description not found":
                        message_with_descriptions.append(f"{message}-{description}")
                        result = '|'.join(message_with_descriptions)
                else:
                    message_with_descriptions.append(f"{message}")
                    result = '|'.join(message_with_descriptions) 
            return result
        else:
            return hl7version
    except Exception as e:
        print(f"failed: {e}")
}

ClassMethod GetAllMessageTypesForVersion(hl7version = "2.5") As %Status [ Language = python ]
{
        """
            Method to return all the Message Types for a HL7 version

            Parms
                hl7version: HL7 version in quotation marks

            Returns
                The HL7 messages types aka what is in MSH:9
        """
        import iris,importlib
        import hl7apy as cr
        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get segment reference
            try:
                messages = lib.MESSAGES
                message_types = list(messages.keys()) 
            except:
                messages = {}
            #loop through messages from hl7apy
            iterations = 0
            for keys, values in messages.items():
                ##print(keys)
                if iterations == 0:
                    messages_list = keys
                    iterations = iterations +1
                else:
                    messages_list = messages_list + "," + keys
        return messages_list
}

ClassMethod GetAllSegmentsForVersion(hl7version = "2.5") As %Status [ Language = python ]
{
        """
            Method to return all the segments for a HL7 version

            Parms
                hl7version: HL7 version in quotation marks

            Returns
                The HL7 segment names
        """
        import iris,importlib
        import hl7apy as cr
        #Get HL7 version related library
        if hl7version in cr.SUPPORTED_LIBRARIES:      
            message_with_descriptions = []
            module_name = cr.SUPPORTED_LIBRARIES[hl7version]
            lib = importlib.import_module(module_name)
            #get segment reference
            try:
                segments = lib.segments.SEGMENTS
            except:
                segments = {}
            #loop through segments from hl7apy
            iteration = 0
            for keys, values in segments.items():
                ##print(keys)
                if iteration == 0:
                    segment_list = keys
                    iteration = iteration +1
                else:
                    segment_list = segment_list + "," + keys
        return segment_list
}

}

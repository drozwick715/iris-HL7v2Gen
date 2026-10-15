Class dc.Validater Extends %SwizzleObject
{


    // Function to validate HL7 Message

    ClassMethod ValidateMessage(msg) [ Language = python ]
    {
    """
        Class to validate generated HL7 Message
        
        Parms
        msg: Message to validate    
    """    
    from hl7apy import parser
    import html, traceback, sys


    from hl7apy.core import Message

    # Create and populate a message
    #msg = Message("ADT_A01")
    # ... populate message fields ...

    # Validate and save the error report to a file
    #msg.validate(report_file='validation_report.txt')
    #/usr/irissys/mgr/user/validation_report.txt

    print(f"msg: {msg}")
    status=0
    try:
        parsedmessage = parser.parse_message(msg.replace('\n', '\r'), find_groups=True, validation_level=2)
    except Exception as e:
        print(f"parse failed: {e}")
    print(f"parsedmessage: {parsedmessage}")
    try:
        status=parsedmessage.validate(report_file='validation_report.txt')
    except Exception as e:
        return(f"Validation of sample message failed: {e} see /usr/irissys/mgr/user/validation_report.txt for more information")  
    return status
    }
}

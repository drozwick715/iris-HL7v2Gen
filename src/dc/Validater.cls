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

#    print(msg)

    try:
        message = parser.parse_message(msg)
    #    print(parser.parse_segments(msg))
        message.validate(report_file='validation_report.txt')
        return "HL7 Message is valid! Check for warnings in /usr/irissys/mgr/user/validation_report.txt"
    except Exception as e:

        return f"Invalid HL7 message: {e}, further information found in /usr/irissys/mgr/user/validation_report.txt"
    }
}

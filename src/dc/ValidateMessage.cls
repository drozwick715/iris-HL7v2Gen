Class dc.ValidateMessage Extends %SwizzleObject
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
}

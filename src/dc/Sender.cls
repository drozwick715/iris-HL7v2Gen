Class dc.Sender Extends %SwizzleObject
{
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
        data = sock.recv
            
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

    /// Test Gen and Send
ClassMethod TestGenSend() As %Status [ Language = python ]
{
    import iris
    hl7message=iris.cls("dc.HL7v2Gen").GenerateMessageSamplePerVersion("2.5","ADT_A01","|^~\&",1,1)
    print(f"hl7message: {hl7message}")
    results=iris.cls("dc.HL7v2Gen").SendMessage(hl7message,"localhost","7878")
    print(f"result: {results}")
}
}

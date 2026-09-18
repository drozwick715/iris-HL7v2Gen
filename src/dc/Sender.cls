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
    from hl7apy.parser import parse_message
    from hl7apy.core import Message


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
        sock.sendall(msgg.encode('utf-8'))
            
        msgg = msgg + "   RETVAL HL7 message sent successfully!"
    except socket.error as e:
        msgg = msgg + "   RETVAL"+ f"Socket error occurred: {e}"
    except sock.timeout as e:
        msgg = msgg + "   RETVAL"+ f"Socket timeout: {e}"
    except AttributeError as e:
        msgg = msgg + "   RETVAL"+ f"Error in HL7 message construction: {e}"
    except Exception as e:
        msgg = msgg + "   RETVAL"+ f"An unexpected error occurred: {e}"


    finally:
        # Close the connection
        sock.close()
    return msgg
    }
    /// Test Gen and Send
    ClassMethod TestGenSend() As %Status [ Language = python ]
    {
        import iris
        import hl7apy as cr
        from hl7apy.parser import parse_message

        hl7message=iris.cls("dc.Generator").GenerateAMessageSampleForVersion("2.5","ADT_A01","|^~\&",1,1)
        print(f"hl7message: {hl7message}")
        
        new_string = hl7message.replace("\n","")
    ##print(new_string)
    #message = parse_message(new_string)
    ##print(f"finalMessage: {messageSample}")
    ##print(f"message: {message}")
    #er7message=message.to_er7()
    ##print(f"er7message: {er7message}")
    #mllpmessage=message.to_mllp()
    ##print(f"mllpmessage: {mllpmessage}")




        results=iris.cls(__name__).SendMessage2(hl7message, "127.0.0.1", 7825)
        print(f"result: {results}")
    }

    ClassMethod HL7Sender(message, host, port) [ Language = python ]
        {
            import asyncio

            import hl7
            from hl7.mllp import open_hl7_connection
            
            async def main(message):
                msgg = ""
                try:
                    # Open the connection to the HL7 receiver.
                    # Using wait_for is optional, but recommended so
                    # a dead receiver won't block you for long
                    hl7_reader, hl7_writer = await asyncio.wait_for(open_hl7_connection(host, port),timeout=7.0)

                    hl7_message = hl7.parse(message)

                    # Write the HL7 message, and then wait for the writer
                    # to drain to actually send the message
                    hl7_writer.writemessage(hl7_message)
                    await hl7_writer.drain()
                    #print(f'Sent message\n {hl7_message}'.replace('\r', '\n'))

                    # Now wait for the ACK message from the receiever
                    try:
                        hl7_ack = await asyncio.wait_for(hl7_reader.readmessage(),timeout=10)
                    except asyncio.TimeoutError: 
                        print("Error: The send data operation timed out!")
                    else:
                        #print(f'Received ACK\n {hl7_ack}'.replace('\r', '\n'))
                        msgg = message + "   RETVAL" + f" HL7 message sent successfully! RETVAL  {hl7_ack}"
                    

                except Exception as e:
                    msgg = message + "   RETVAL" + f"An unexpected error occurred: RETVAL  {e}"
                return msgg


            msgg=asyncio.run(main(message))

            return(msgg)
        }


    ClassMethod SendMessage2(msgg, host, port) [ Language = python ]
    {
    """
        Class used to send message to TCP/IP client

        params
        msgg : HL7 message 
        host : Host IP address
        port : Host Port
    """
    import socket
    from hl7apy.parser import parse_message
    from hl7apy.core import Message


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
        sock.sendall(msgg.encode('utf-8'))
            
        msgg = msgg + "   RETVAL HL7 message sent successfully!"
    except sock.error as e:
        msgg = msgg + "   RETVAL"+ f"Socket error occurred: {e}"
    except sock.timeout as e:
        msgg = msgg + "   RETVAL"+ f"Socket timeout: {e}"
    except AttributeError as e:
        msgg = msgg + "   RETVAL"+ f"Error in HL7 message construction: {e}"
    except Exception as e:
        msgg = msgg + "   RETVAL"+ f"An unexpected error occurred: {e}"

    try:
        chunks = []
        while True:
            data = sock.recv(4096)
            if not data:
                break
            chunks.append(data)
        response = b''.join(chunks)
        print("Received:", response.decode('utf-8'))
        msgg = msgg + f"{response}"
    except sock.error as e:
        print(f'{e}')

    finally:
        # Close the connection
        sock.close()
    return msgg
    }

    
}

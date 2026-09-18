Class dc.Receiver Extends %SwizzleObject
{
    ClassMethod Receiver1() [ Language = python ]
    {
        from hl7apy.parser import parse_message
        from hl7apy.mllp import AbstractHandler

        class PDQHandler(AbstractHandler):
            def __init__(self, msg, database_name):
                super(PDQHandler, self).__init__(msg)
                self.database_name = database_name
        
            def reply(self):
                msg = parse_message(self.incoming_message)
                # do something with the message
                res = Message('RSP_K21')
                # populate the message
                return res.to_mllp()

        handlers = {
            'QBP^Q22^QBP_Q21': (PDQHandler, 'db_name')
        }
    }
    ClassMethod Receiver2() [ Language = python ]
    {
        from hl7apy.mllp import UnsupportedMessageType

        class ErrorHandler(AbstractErrorHandler):
            def reply(self):
                if isinstance(self.exc, UnsupportedMessageType):
                    # return your custom response for unsupported message
                    return
                else:
                    # return your custom response for general errors
                    return


        handlers = {
            'QBP^Q22^QBP_Q21': (PDQHandler, 'demographic_db'),
            'ERR': (ErrorHandler,)
        }
    }
}

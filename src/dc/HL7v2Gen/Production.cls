Class dc.HL7v2Gen.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="dc.HL7v2Gen.Production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="MsgRouter" Category="" ClassName="EnsLib.HL7.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="This handles message routing logic." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Validation"></Setting>
    <Setting Target="Host" Name="BusinessRuleName">dc.HL7v2Gen.Production.RoutingRule</Setting>
    <Setting Target="Host" Name="BadMessageHandler">BadMessageHandler</Setting>
  </Item>
  <Item Name="BadMessageHandler" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="Bad messages are sent to this operation." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Ens.Alert" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="0" Enabled="true" Foreground="false" Comment="This handles Alert routing logic." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">dc.HL7v2Gen.Production.AlertRule</Setting>
  </Item>
  <Item Name="EMailAlert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="This sends alerts via e-mail." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="PagerAlert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="This sends alerts to a pager via e-mail." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HL7FileOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Operation." LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/usr/irissys/mgr/messages/</Setting>
  </Item>
  <Item Name="HL7TcpService21" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7821</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.1</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
    <Item Name="HL7TcpService22" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7822</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.2</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
    <Item Name="HL7TcpService23" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7823</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.3</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
    <Item Name="HL7TcpService231" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7231</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.3.1</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
    <Item Name="HL7TcpService24" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7824</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.4</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
    <Item Name="HL7TcpService25" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7825</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.5</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>  
  <Item Name="HL7TcpService251" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7251</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.5.1</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>  
  <Item Name="HL7TcpService26" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7826</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.6</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>  
  <Item Name="HL7TcpService27" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7827</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.7</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>  
  <Item Name="HL7TcpService271" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7271</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.7.1</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
  <Item Name="HL7TcpService28" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7828</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.8</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>  
  <Item Name="HL7TcpService281" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7281</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.8.1</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>  
  <Item Name="HL7TcpService282" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">7282</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.8.2</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
    <Setting Target="Adapter" Name="ReadTimeout">25</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
</Production>
}

}

#Define Messate Trigger Events and Descriptions
hl7_trigger_events = {
'ADT_A01' : 'Admit/visit notification',
'ADT_A02' : 'Transfer a patient',
'ADT_A03' : 'Discharge/end visit',
'ADT_A04' : 'Register a patient',
'ADT_A05' : 'Preadmit a patient',
'ADT_A06' : 'Transfer an outpatient to inpatient',
'ADT_A07' : 'Transfer an inpatient to outpatient',
'ADT_A08' : 'Update patient information',
'ADT_A09' : 'Patient departing - tracking',
'ADT_A10' : 'Patient arriving - tracking',
'ADT_A11' : 'Cancel admit',
'ADT_A12' : 'Cancel transfer',
'ADT_A13' : 'Cancel discharge',
'ADT_A14' : 'Pending admit',
'ADT_A15' : 'Pending transfer',
'ADT_A16' : 'Pending discharge',
'ADT_A17' : 'Swap patients',
'ADT_A18' : 'Merge patient information',
'ADT_A19' : 'Patient Query',
'ADT_A20' : 'Nursing/Census application updates',
'ADT_A21' : 'Patient goes on a "leave of absence"',
'ADT_A22' : 'Patient returns from a "leave of absence"',
'ADT_A23' : 'Delete a patient record',
'ADT_A24' : 'Link patient information',
'ADT_A25' : 'Cancel pending discharge',
'ADT_A26' : 'Cancel pending transfer',
'ADT_A27' : 'Cancel pending admit',
'ADT_A28' : 'Add person information',
'ADT_A29' : 'Delete person information',
'ADT_A30' : 'Merge person information',
'ADT_A31' : 'Update person information',
'ADT_A32' : 'Cancel patient arriving - tracking',
'ADT_A33' : 'Cancel patient departing - tracking',
'ADT_A34' : 'Merge patient information - patient ID only',
'ADT_A35' : 'Merge patient information - account number only',
'ADT_A36' : 'Merge patient information - patient ID and account number',
'ADT_A37' : 'Unlink patient information',
'ADT_A38' : 'Cancel pre-admit',
'ADT_A39' : 'Merge person - external ID',
'ADT_A40' : 'Merge patient - internal ID',
'ADT_A41' : 'Merge account - patient account number',
'ADT_A42' : 'Merge visit - visit number',
'ADT_A43' : 'Move patient information - internal ID',
'ADT_A44' : 'Move account information - internal ID',
'ADT_A45' : 'Move visit information - visit number',
'ADT_A46' : 'Change external ID',
'ADT_A47' : 'Change internal ID',
'ADT_A48' : 'Change alternate patient ID',
'ADT_A49' : 'Change patient account number',
'ADT_A50' : 'Change visit number',
'ADT_A51' : 'Change alternate visit ID',
'ADT_A52' : 'Cancel leave of absence for a patient',
'ADT_A53' : 'Cancel patient returns from a leave of absence',
'ADT_A54' : 'Change attending doctor',
'ADT_A55' : 'Cancel change attending doctor',
'ADT_A60' : 'Update allergy information',
'ADT_A61' : 'Change consulting doctor',
'ADT_A62' : 'Cancel change consulting doctor',
'PMU_B01' : 'Add personnel record',
'PMU_B02' : 'Update personnel record',
'PMU_B03' : 'Delete personnel re cord',
'PMU_B04' : 'Active practicing person',
'PMU_B05' : 'Deactivate practicing person',
'PMU_B06' : 'PMU/ACK - Terminate practicing person',
'PMU_B07' : 'PMU/ACK - Grant Certificate/Permission',
'PMU_B08' : 'PMU/ACK - Revoke Certificate/Permission',
'CRM_C01' : 'Register a patient on a clinical trial',
'SRM_C01' : 'Register a patient on a clinical trial',
'CRM_C02' : 'Cancel a patient registration on clinical trial (for clerical mistakes onl',
'SRM_C02' : 'Cancel a patient registration on clin.trial (for clerical mistakes only)',
'CRM_C03' : 'Correct/update registration information',
'SRM_C03' : 'Correct/update registration information',
'CRM_C04' : 'Patient has gone off a clinical trial',
'SRM_C04' : 'Patient has gone off a clinical trial',
'CRM_C05' : 'Patient enters phase of clinical trial',
'SRM_C05' : 'Patient enters phase of clinical trial',
'CRM_C06' : 'Cancel patient entering a phase (clerical mistake)',
'SRM_C06' : 'Cancel patient entering a phase (clerical mistake)',
'CRM_C07' : 'Correct/update phase information',
'SRM_C07' : 'Correct/update phase information',
'CRM_C08' : 'Patient has gone off phase of clinical trial',
'SRM_C08' : 'Patient has gone off phase of clinical trial',
'CSU_C09' : 'Automated time intervals for reporting, like monthly',
'CSU_C10' : 'Patient completes the clinical trial',
'CSU_C11' : 'Patient completes a phase of the clinical trial',
'CSU_C12' : 'Update/correction of patient order/result information',
'EHC_E01' : 'Submit HealthCare Services Invoice',
'EHC_E02' : 'Cancel HealthCare Services Invoice',
'EHC_E03' : 'HealthCare Services Invoice Status',
'EHC_E04' : 'Re-Assess HealthCare Services Invoice Request',
'EHC_E10' : 'Edit/Adjudication Results',
'EHC_E12' : 'Request Additional Information',
'EHC_E13' : 'Additional Information Response',
'EHC_E15' : 'Payment/Remittance Advice',
'EHC_E20' : 'Submit Authorization Request',
'EHC_E21' : 'Cancel Authorization Request',
'EHC_E22' : 'Authorization Request Status',
'EHC_E24' : 'Authorization Response',
'RQI_I01' : 'Request for insurance information',
'RPI_I01' : 'Return to Request for insurance information',
'RQI_I02' : 'Request/receipt of patient selection display list',
'RPL_I02' : 'Return to Request/receipt of patient selection display list',
'RPR_I03' : 'Request/receipt of patient selection list',
'RQP_I04' : 'Request for patient demographic data',
'RPI_I04' : 'Return to Request for patient demographic data',
'RQC_I05' : 'Request for patient clinical information',
'RCI_I05' : 'Return to Request for patient clinical information',
'RQC_I06' : 'Request/receipt of clinical data listing',
'RCL_I06' : 'Return to Request/receipt of clinical data listing',
'PID_I07' : 'Unsolicited insurance information',
'RQA_I08' : 'Request for treatment authorization information',
'RPA_I08' : 'Return to Request for treatment authorization information',
'RQA_I08' : 'Request for modification to an authorization',
'RPA_I08' : 'Return to Request for modification to an authorization',
'RQA_I10' : 'Request for resubmission of an authorization',
'RPA_I10' : 'Return to Request for resubmission of an authorization',
'RQA_I11' : 'Request for cancellation of an authorization',
'RPA_I11' : 'Return to Request for cancellation of an authorization',
'REF_I12' : 'Patient referral',
'RRI_I12' : 'Return to Patient referral',
'REF_I13' : 'Modify patient referral',
'RRI_I13' : 'Return to Modify patient referral',
'REF_I14' : 'Cancel patient referral',
'RRI_I14' : 'Return to Cancel patient referral',
'REF_I15' : 'Request patient referral status',
'RRI_I15' : 'Return to Request patient referral status',
'CCR_I16' : 'Collaborative Care Referral',
'CCR_I17' : 'Modify Collaborative Care Referral',
'CCR_I18' : 'Cancel Collaborative Care Referral',
'CQU_I19' : 'Collaborative Care Query/Collaborative Care Query Update',
'CCU_I20' : 'Asynchronous Collaborative Care Update',
'CCM_I21' : 'Collaborative Care Message',
'CCF_I22' : 'Collaborative Care Fetch / Collaborative Care Information',
'QCN_J01' : 'Cancel query/acknowledge message',
'QSX_J02' : 'Cancel subscription/acknowledge message',
'RSP_K11' : 'Segment pattern response in response to QBP^Q11',
'RTB_K13' : 'Tabular response in response to QBP^Q13',
'RDY_K15' : 'Display response in response to QBP^Q15',
'RSP_K21' : 'Get person demographics response',
'RSP_K22' : 'Find candidates response',
'RSP_K23' : 'Get corresponding identifiers response',
'RSP_K24' : 'Allocate identifiers response',
'RSP_K25' : 'Personnel Information by Segment Response',
'RSP_K31' : 'Dispense History Response',
'RSP_K32' : 'Find Candidates including Visit Information Response',
'RSP_K33' : 'Get Donor Record Candidates Response Message',
'RSP_K34' : 'Segment Pattern Response Message',
'MFN_M01' : 'Master file not otherwise specified',
'MFH_M02' : 'Master file - staff practitioner',
'MFN_M03' : 'Master file - Test/Observation',
'MFN_M04' : 'Master files charge description',
'MFN_M05' : 'Patient location master file',
'MFN_M06' : 'Clinical study master file',
'MFN_M07' : 'Clinical study without phases but with schedules master file',
'MFN_M08' : 'Test/observation (numeric) master file',
'MFN_M09' : 'Test/observation (categorical) master file',
'MFN_M10' : 'Test /observation batteries master file',
'MFN_M10' : 'Test/Observation batteries master file',
'MFN_M11' : 'Test/calculated observation master file',
'MFN_M11' : 'Test/calculated observations master file',
'MFN_M12' : 'Master file notification message',
'MFN_M13' : 'Master file notification - general',
'MFN_M14' : 'Master file notification - site defined',
'MFN_M15' : 'Inventory item master file notification',
'MFN_M16' : 'Master File Notification Inventory Item Enhanced',
'MFN_M17' : 'DRG Master File Message',
'MFK_M17' : 'Return to DRG Master File Message',
'MFN_M18' : 'Master file notification - Test/Observation (Payer)',
'MFK_M18' : 'Return to Master file notification - Test/Observation (Payer)',
'NMD_N01' : 'Network Management Data',
'NMQ_N01' : 'Application management query message',
'NMQ_N02' : 'Network Management Query',
'NMD_N02' : 'Application management data message (unsolicited)',
'ORM_O01' : 'Order Message',
'ORR_O02' : 'Respone Message',
'OMD_O03' : 'OMD - Diet order',
'ORD_O04' : 'Diet order acknowledgement',
'NUL_O04' : 'Diet order acknowledgment',
'OMS_O05' : 'Stock requisition order',
'ORS_O06' : 'Stock requisition acknowledgement',
'OMN_O07' : 'Non-stock requisition order',
'ORN_O08' : 'Non-stock requisition acknowledgement',
'OMP_O09' : 'Pharmacy/treatment order',
'ORP_O10' : 'Pharmacy/treatment order acknowledgement',
'RDE_O11' : 'Pharmacy/treatment encoded order',
'RDE_O12' : 'Pharmacy/treatment encoded order acknowledgement',
'NUL_O12' : 'Pharmacy/treatment encoded order acknowledgment',
'RDS_O13' : 'Pharmacy/treatment dispense',
'RRD_O14' : 'Pharmacy/treatment dispense acknowledgement',
'NUL_O14' : 'Pharmacy/treatment dispense acknowledgment',
'RGV_O15' : 'Pharmacy/treatment give',
'RRG_O16' : 'Pharmacy/treatment give acknowledgement',
'NUL_O16' : 'Pharmacy/treatment give acknowledgment',
'RAD_O17' : 'Pharmacy/treatment administration',
'RRA_O18' : 'Pharmacy/treatment administration acknowledgement',
'NUL_O18' : 'Pharmacy/treatment administration acknowledgment',
'OMG_O19' : 'General clinical order',
'ORG_O20' : 'General clinical order response',
'NUL_O20' : 'General clinical order response',
'OML_O21' : 'OML - Laboratory order',
'ORL_O22' : 'ORL - General Laboratory Order Acknowledgment Message',
'NUL_O22' : 'ORL - General laboratory order response message to any OML',
'OMI_O23' : 'OMI - Imaging order',
'ORI_O24' : 'Imaging order response message to any OMI',
'RDE_O25' : 'Pharmacy/treatment refill authorization request',
'RRE_O26' : 'Pharmacy/Treatment Refill Authorization Acknowledgement',
'OMB_O27' : 'Blood product order',
'ORB_O28' : 'Blood product order acknowledgment',
'BPS_O29' : 'Blood product dispense status',
'BRP_O30' : 'Blood product dispense status acknowledgment',
'BTS_O31' : 'Blood product transfusion/disposition',
'BRT_O32' : 'Blood product transfusion/disposition acknowledgment',
'OML_O33' : 'Laboratory order for multiple orders related to a single specimen',
'ORL_O34' : 'Laboratory order response message to a multiple order related to single sp',
'OML_O35' : 'Laboratory order for multiple orders related to a single container of a sp',
'ORL_O36' : 'Laboratory order response message to a single container of a specimen OML',
'OPL_O37' : 'Population/Location-Based Laboratory Order Message',
'OPR_O38' : 'Population/Location-Based Laboratory Order Acknowledgment Message',
'OML_O39' : 'Specimen shipment centric laboratory order',
'ORL_O40' : 'Specimen Shipment Centric Laboratory Order Acknowledgment Message',
'DBC_O41' : 'Create Donor Record Message',
'DBU_O42' : 'Update Donor Record Message',
'DRG_O43' : 'General Order Message with Document Payload Acknowledgement Message',
'ORX_O43' : 'General Order Message with Document Payload Acknowledgement - General Order Message with Document Payload Acknowledgement Message',
'DER_O44' : 'Donor Registration - Minimal Message',
'DEO_O45' : 'Donor Eligibility Observations Message',
'DEL_O46' : 'Donor Eligiblity Message',
'DRC_O47' : 'Donor Request to Collect Message',
'DPR_O48' : 'Donation Procedure Message',
'BAR_P01' : 'Add and Update Patient Accounts',
'BAR_P02' : 'Purge Patient Accounts',
'DFT_P03' : 'Post detail financial transaction',
'QRY_P04' : 'Generate bills and A/R statements',
'DSP_P04' : 'Return to Generate bill and A/R statements',
'BAR_P05' : 'Update account',
'BAR_P06' : 'End account',
'PEX_P07' : 'Unsolicited initial individual product experience report',
'PEX_P08' : 'Unsolicited update individual product experience report',
'SUR_P09' : 'Summary product experience report',
'BAR_P10' : 'Transmit Ambulatory Payment Classification(APC)',
'DFT_P11' : 'Post detail financial transaction',
'BAR_P12' : 'Update Diagnosis/Procedure',
'PPR_PC1' : 'PC/ problem add',
'PPR_PC2' : 'PC/Problem Update',
'PPR_PC3' : 'PC/Problem Delete',
'QRY_PC4' : 'PC/Problem Query',
'PPR_PC5' : 'PC/Problem Reponse',
'PGL_PC6' : 'PC/Goal Add',
'PGL_PC7' : 'PC/Goal Update',
'PGL_PC8' : 'PC/Goal Delete',
'QRY_PC9' : 'PC/Goal Query',
'PGL_PCA' : 'PC/Goal Response',
'PGR_PCA' : 'PC/ Goal Response',
'PPV_PCA' : 'PC/ goal response',
'PPP_PCB' : 'PC/Pathway (Problem Oriented) Add',
'PPP_PCC' : 'PC/Pathway (Problem Oriented) Update',
'PPP_PCD' : 'PC/Pathway (Problem Oriented) Delete',
'PPP_PCE' : 'PC/Pathway (Problem Oriented) Query',
'PTQ_PCE' : 'PC/ Pathway (Problem-Oriented) Query',
'QRY_PCE' : 'PC/ pathway (problem-oriented) query',
'PPP_PCF' : 'PC/Pathway (Problem Oriented) Query Response',
'PTR_PCF' : 'PC/ pathway (problem-oriented) query response',
'PPG_PCG' : 'PC/Pathway (Goal Oriented) Add',
'PPP_PCH' : 'PC/Pathway (Goal Oriented) Update',
'PPG_PCJ' : 'PC/ pathway (goal-oriented) delete',
'PPP_PCJ' : 'PC/Pathway (Goal Oriented) Delete',
'PPP_PCK' : 'PC/Pathway (Goal Oriented) Query',
'PTU_PCK' : 'PC/ Pathway (Goal-Oriented) Query',
'QRY_PCK' : 'PC/ pathway (goal-oriented) query',
'PPP_PCL' : 'PC/Pathway (Goal Oriented) Query Response',
'PPT_PCL' : 'PC/ pathway (goal-oriented) query response',
'PTV_PCL' : 'PC/ Pathway (Goal-Oriented) Query Response',
'QRY_Q01' : 'A Query is made for immediate Display Response',
'DSR_Q01' : 'A Query is Made for Immediate Response',
'QRY_Q02' : 'Query sent for deferred response',
'MCF_Q02' : 'Return to Query sent for deferred response',
'DSR_Q03' : 'Deferred response to a query',
'EQQ_Q04' : 'Embedded query language query',
'UDM_Q05' : 'Unsolicited Display Update Message',
'OSQ_Q06' : 'Query for order status',
'OSR_Q06' : 'Return to Query for order status',
'VQQ_Q07' : 'Virtual table query',
'SPQ_Q08' : 'Stored procedure request',
'RQQ_Q09' : 'event replay query',
'QBP_Q11' : 'Query by parameter requesting an RSP segment pattern response',
'QBP_Q13' : 'Query by parameter requesting an RTB - tabular response',
'QBP_Q13' : 'quey by parameter/tabluar response',
'QBP_Q15' : 'Query by parameter requesting an RDY display response',
'QSB_Q16' : 'Create subscription',
'QVR_Q17' : 'Query for previous events',
'QBP_Q21' : 'Get person demographics',
'QBP_Q22' : 'Find candidates',
'QBP_Q23' : 'Get corresponding identifiers',
'QBP_Q24' : 'Allocate identifiers',
'QBP_Q25' : 'Personnel Information by Segment Query',
'RQR_Q26' : 'Pharmacy/treatment order response',
'RAR_Q27' : 'Pharmacy/treatment administration information',
'RDR_Q28' : 'Pharmacy/treatment dispense information',
'RER_Q29' : 'Pharmacy/treatment encoded order information',
'RGR_Q30' : 'Pharmacy/treatment dose information',
'QBP_Q31' : 'Dispense History',
'QBP_Q31' : 'Query Dispense History',
'QBP_Q32' : 'Find Candidates including Visit Information',
'QBP_Q33' : 'Get Donor Record Candidates',
'QBP_Q34' : 'Get Donor Record',
'QRY_R02' : 'Query for results of observation',
'QRY_R03' : 'QRY/DSR Display-oriented results, query/unsol. update (for backward compatibilit',
'ORF_R04' : 'Response to query; transmission of requested observation',
'QRY_R05' : 'query for display results',
'DSR_R05' : 'query for display results',
'UDM_R06' : 'unsolicited update/display results',
'EDR_R07' : 'Enhanced Display Response',
'TBR_R08' : 'TBR - Tabular Data Response',
'ERP_R09' : 'ERP - Event Replay Response',
'ROR_R0R' : 'Pharmacy prescription order query response',
'OUL_R21' : 'Unsolicited laboratory observation',
'OUL_R22' : 'Unsolicited Specimen Oriented Observation Message',
'OUL_R23' : 'Unsolicited Specimen Container Oriented Observation Message',
'OUL_R24' : 'Unsolicited Order Oriented Observation Message',
'OPU_R25' : 'Unsolicited Population/Location-Based Laboratory Observation Message',
'OSM_R26' : 'Unsolicited Specimen Shipment Manifest Message',
'ORU_R30' : 'Unsolicited Point-Of-Care Observation Message Without Existing Order - Pla',
'ORU_R31' : 'Unsolicited New Point-Of-Care Observation Message - Search For An Order',
'ORU_R32' : 'Unsolicited Pre-Ordered Point-Of-Care Observation',
'ORU_R33' : 'Observation Report Acknowledgement',
'ORU_R40' : 'Unsolicited Report Alarm',
'ORA_R41' : 'Observation Report Alert Acknowledgement',
'RAR_RAR' : 'Pharmacy administration information query response',
'RDR_RDR' : 'Pharmacy dispense information query response',
'RER_RER' : 'Pharmacy encoded order information query response',
'RGR_RGR' : 'Pharmacy dose information query response',
'ROR_ROR' : 'Pharmacy prescription order query response',
'SRM_S01' : 'Request new appointment booking',
'SRR_S01' : 'Request new appointment booking',
'SRM_S02' : 'Request appointment rescheduling',
'SRR_S02' : 'Request appointment rescheduling',
'SRM_S03' : 'Request appointment modification',
'SRR_S03' : 'Request appointment modification',
'SRM_S04' : 'Request appointment cancellation',
'SRR_S04' : 'Request appointment cancellation',
'SRM_S05' : 'Request appointment discontinuation',
'SRM_S06' : 'Request appointment deletion',
'SRM_S07' : 'Request addition of service/resource on appointment',
'SRM_S08' : 'Request modification of service/resource on appointment',
'SRM_S09' : 'Request cancellation of servic/resource on appointment',
'SRM_S09' : 'Request cancellation of service/resource on appointment',
'SRM_S10' : 'Request discontinuation of servic/resource on appointment',
'SRM_S10' : 'Request discontinuation of service/resource on appointment',
'SRM_S11' : 'Request deletion of servic/resource on appointment',
'SRR_S11' : 'Request deletion of service/resource on appointment',
'SIU_S12' : 'Notification of new appointment booking',
'SIU_S13' : 'Notification of appointment rescheduling',
'SIU_S14' : 'Notification of appointment modification',
'SIU_S15' : 'Notification of appointment cancellation',
'SIU_S16' : 'Notification of appointment discontinuation',
'SIU_S17' : 'Notification of appointment deletion',
'SIU_S18' : 'Notification of addition of service/resource on appointment',
'SIU_S19' : 'Notification of modification of service/resource on appointment',
'SIU_S20' : 'Notification of cancellation of service/resource on appointment',
'SIU_S21' : 'Notification of discontinuation of service/resource on appointment',
'SIU_S22' : 'Notification of deletion of service/resource on appointment',
'SIU_S23' : 'Notification of blocked schedule time slot(s)',
'SIU_S24' : 'Notification of open ("unblocked") schedule time slot(s)',
'SQM_S25' : 'Query schedule information',
'SQR_S25' : 'Schedule query message and response',
'SIU_S26' : 'Notification that patient did not show up for schedule appointment',
'SIU_S27' : 'Broadcast Notification of Scheduled Appointments',
'SLR_S28' : 'Request new sterilization lot',
'SLR_S29' : 'Request Sterilization lot deletion',
'STI_S30' : 'Request item',
'SDR_S31' : 'Request anti-microbial device data',
'SMD_S32' : 'Request anti-microbial device cycle data',
'STC_S33' : 'Notification of sterilization configuration',
'SLN_S34' : 'Notification of sterilization lot',
'SLN_S35' : 'Notification of sterilization lot deletion',
'SDN_S36' : 'Notification of anti-microbial device data',
'SCN_S37' : 'Notification of anti-microbial device cycle data',
'MDM_T01' : 'Original document notification',
'MDM_T02' : 'Original document notification and content',
'MDM_T03' : 'Document status change notification',
'MDM_T04' : 'Document status change notification and content',
'MDM_T05' : 'Document addendum notification',
'MDM_T06' : 'Document addendum notification and content',
'MDM_T07' : 'Document edit notification',
'MDM_T08' : 'Document edit notification and content',
'MDM_T09' : 'Document replacement notification',
'MDM_T10' : 'Document replacement notification and content',
'MDM_T11' : 'Document cancel notification',
'MDM_T12' : 'Document query',
'ESU_U01' : 'Automated equipment status update',
'ESR_U02' : 'Automated equipment status request',
'SSU_U03' : 'Specimen status update',
'SSR_U04' : 'specimen status request',
'INU_U05' : 'Automated equipment inventory update',
'INR_U06' : 'Automated equipment inventory request',
'EAC_U07' : 'Automated equipment command',
'EAR_U08' : 'Automated equipment response',
'EAN_U09' : 'Automated equipment notification',
'TCU_U10' : 'Automated equipment test code settings update',
'TCP_U11' : 'Automated equipment test code settings request',
'LSU_U12' : 'Automated equipment log/service update',
'LSR_U13' : 'Automated equipment log/service request',
'VXQ_V01' : 'Query for vaccination record',
'VXX_V02' : 'Response to vaccination query returning multiple PID matches',
'VXR_V03' : 'Vaccination record response',
'VXU_V04' : 'Unsolicited vaccination record update',
'ORU_W01' : 'Waveform result, unsolicited transmission of requested information',
'QRF_W02' : 'Waveform result, response to query',
'PEX_X01' : 'PEX - Product experience',
'QBP_Z73' : 'Information about Phone Calls',
'NUL_Z74' : 'Information about Phone Calls (Response)',
'QBP_Z75' : 'Tabular Patient List',
'RTB_Z76' : 'Tabular Patient List (Response)',
'QBP_Z77' : 'Tabular Patient List',
'RTP_Z78' : 'Tabular Patient List (Response)',
'QBP_Z79' : 'Dispense Information',
'RDY_Z80' : 'Dispense Information (Response)',
'QBP_Z81' : 'Dispense History',
'NUL_Z82' : 'Dispense History (Response)',
'QSB_Z83' : 'ORU Subscription',
'RSP_Z84' : 'Who Am I (Response)',
'QPB_Z85' : 'Pharmacy Information Comprehensive',
'RSP_Z86' : 'Pharmacy Information Comprehensive (Response)',
'QBP_Z87' : 'Dispense Information',
'NUL_Z88' : 'Dispense Information (Response)',
'QBP_Z89' : 'Lab Results History',
'NUL_Z90' : 'Lab Results History (Response)',
'QBP_Z91' : 'Who Am I',
'RTB_Z92' : 'Who Am I (Response)',
'QBP_Z93' : 'Tabular Dispense History',
'RTB_Z94' : 'Tabular Dispense History (Response)',
'QBP_Z95' : 'Tabular Dispense History',
'RTB_Z96' : 'Tabular Dispense History (Response)',
'QBP_Z97' : 'Dispense History',
'RDY_Z98' : 'Dispense History (Response)',
'QBP_Z99' : 'Who Am I',
}

#Define HL7 message types and segment descriptions
hl7_message_types = {
    'ACK': 'Acknowledgement',
    'ADR_A19': 'Patient query',
    'ADT_A01': 'Admit/Visit Notification',
    'ADT_A02': 'Transfer Patient',
    'ADT_A03': 'Discharge/End Visit',
    'ADT_A05': 'Pre-admission',
    'ADT_A06': 'Change an outpatient to an inpatient',
    'ADT_A09': 'Patient Departed',
    'ADT_A12': 'Cancel transfer',
    'ADT_A15': 'Pending transfer',
    'ADT_A16': 'Pending Discharge',
    'ADT_A17': 'Swap patients',
    'ADT_A18': 'Merge patient information',
    'ADT_A20': 'Bed status update',
    'ADT_A21': 'Patient goes on a leave',
    'ADT_A24': 'Link patient information',
    'ADT_A30': 'Merge person information',
    'ADT_A37': 'Unlink Patient Information',
    'ADT_A38': 'Cancel pre-admit',    
    'ADT_A43': 'Move patient information',
    'ADT_A45': 'Move Visit Information',
    'ADT_A50': 'Change visit number',
    'ADT_A54': 'Change Attending Doctor',
    'ADT_A60': 'Update Allergy Information',
    'ADT_A61': 'Change consulting doctor',
    'BAR_P01': 'Add patient accounts',
    'BAR_P02': 'Add patient accounts',
    'BAR_P05': 'Update account',
    'BAR_P06': 'End account',
    'BAR_P10': 'Transmit Ambulatory Payment',
    'BAR_P12': 'Update Diagnosis/Procedure',
    'BPS_O29': 'Blood product dispense status',
    'BRP_O30': 'Blood product dispense status ACK',
    'BRT_O32': 'Blood product transfusion ACK',
    'BTS_O31': 'Blood product transfusion/disposition',
    'CRM_C01': 'Register a patient on a clinical trial',
    'CSU_C09': 'Automated time intervals for reporting',
    'DFT_P03': 'Detail Financial Transactions',
    'DFT_P11': 'Financial Details Report',
    'DOC_T12': 'Document query',
    'DSR_Q01': 'Query sent for immediate response',
    'DSR_Q03': 'Deferred response to a query',
    'EAC_U07': 'Automated equipment command',
    'EAN_U09': 'Automated equipment notification',
    'EAR_U08': 'Automated equipment response',
    'EDR_R07': 'Enhanced Display Response',
    'EQQ_Q04': 'Embedded query language query',
    'ERP_R09': 'Event Replay Response',
    'ESR_U02': 'Electronic Status Report',
    'ESU_U01': 'Electronic Status Update',
    'INR_U06': 'Automated equipment inventory request',
    'INU_U05': 'Automated equipment inventory update',
    'LSU_U12': 'Automated equipment log/service update',
    'MDM_T01': 'Original document notification',
    'MDM_T02': 'Original document notification and content',
    'MFN_M01': 'Master file not otherwise specified',
    'MFN_M02': 'Master file - staff practitioner',
    'MFN_M03': 'Master file - test/observation',
    'MFN_M04': 'Master files charge description',
    'MFN_M05': 'Patient location master file',
    'MFN_M07': 'Clinical study without phases',
    'MFN_M08': 'Test/observation (numeric) master file',
    'MFN_M09': 'Test/observation (categorical) master file',
    'MFN_M10': 'Test /observation batteries master file',
    'MFN_M11': 'Test/calculated observations master file',
    'MFN_M12': 'Master file notification message',
    'MFN_M13': 'Master file notification - general',
    'MFN_M15': 'Inventory item master file notification',    
    'NMQ_N01': 'Application management query message',   
    'OMB_O27': 'Blood product order',
    'OMD_O03': 'Diet order',
    'OMG_O19': 'General clinical order',
    'OMI_O23': 'Imaging order',
    'OML_O21': 'Laboratory order',
    'OML_O33': 'Laboratory order for multiple orders',
    'OML_O35': 'Laboratory order for a single container',
    'OMN_O07': 'Non-stock requisition order',
    'OMP_O09': 'Pharmacy/treatment order',
    'OMS_O05': 'Stock requisition order',
    'ORB_O28': ' Blood product order acknowledgment',
    'ORD_O04': 'Order Request Data',
    'ORF_R04': 'Diet order acknowledgment',
    'ORG_O20': 'General clinical order response',
    'ORI_O24': 'Imaging order response',
    'ORL_O22': 'General laboratory order response ',
    'ORL_O34': 'Laboratory order response',
    'ORL_O36': 'Laboratory order response (container)',
    'ORM_O01': 'Order Message',
    'ORN_O08': 'Non-stock requisition acknowledgment',
    'ORP_O10': 'Pharmacy/treatment order acknowledgment',
    'ORR_O02': 'Order Response',
    'ORS_O06': 'Stock requisition acknowledgment',
    'ORU_R01': 'Order Result',
    'ORU_R30': 'Unsolicited Observation Without Existing Order ',
    'OSQ_Q06': 'Order Status Query',
    'OSR_Q06': 'Order Status Response',
    'OUL_R21': 'Unsolicited laboratory observation',
    'OUL_R22': 'Unsolicited laboratory observation',
    'OUL_R23': 'Unsolicited Specimen Container',
    'OUL_R24': 'Unsolicited Order Oriented Observation',
    'PEX_P07': 'Unsolicited initial individual product rep',
    'PGL_PC6': 'PC/ Goal add',
    'PPG_PCG': 'pathway (goal-oriented) add',
    'PPP_PCB': 'PC/ pathway (problem-oriented) add',
    'PPR_PC1': 'PC/ problem add',
    'PPT_PCL': 'PC/ pathway (goal-oriented) query response',
    'PPV_PCA': 'PC/ goal response',
    'PRR_PC5': 'PC/ problem response',
    'PTR_PCF': 'PC/ pathway (problem-oriented) query response',
    'QBP_K13': 'Tabular response in response to QBP^Q13',
    'QBP_Q13': 'Query by parameter requesting an RTB',
    'QBP_Q15': 'Query Response',
    'QBP_Q21': 'Get person demographics',    
    'QCK_Q02': 'Query sent for deferred response',
    'QCN_J01': 'Cancel query/acknowledge message',
    'QRY_A19': 'Patient query',
    'QRY_PC4': 'PC/ problem query',
    'QRY_Q01': 'Query sent for immediate response',
    'QRY_R02': 'Query for results of observation',
    'QSB_Q16': 'Create subscription',
    'QVR_Q17': 'Query for previous events',
    'RAR_RAR': 'Pharmacy administration information query response',
    'RAS_O17': 'Pharmacy/treatment administration',
    'RCI_I05': 'Request for patient clinical information',
    'RCL_I06': 'Request/receipt of clinical data listing',
    'RDE_O11': 'Pharmacy/treatment encoded order',
    'RDS_O13': 'Pharmacy/treatment dispense',
    'RDY_K15': 'Display response in response to QBP^Q15',
    'REF_I12': 'Patient referral',
    'RER_RER': 'Pharmacy encoded order information query response',
    'RGR_RGR': 'Pharmacy dose information query response',
    'RGV_O15': 'Pharmacy/treatment give',
    'ROR_ROR': 'Pharmacy prescription order query response',
    'RPA_I08': 'Request for treatment authorization information',
    'RPI_I01': 'Request for insurance information',
    'RPI_I04': 'Request for patient demographic data',
    'RPL_I02': 'Request/receipt of patient selection display list',
    'RPR_I03': 'Request/receipt of patient selection list',
    'RQA_I08': 'Report Query Answer',
    'RQC_I05': 'Report Query Confirm',
    'RQI_I01': 'Request for insurance information',
    'RQP_I04': 'Request for patient demographic data',
    'RQQ_Q09': 'Event Replay Query',
    'RRA_O18': 'Pharmacy/treatment administration acknowledgment',
    'RRD_O14': 'Pharmacy/treatment dispense acknowledgment',
    'RRE_O12': 'Pharmacy/treatment encoded order acknowledgment',
    'RRG_O16': 'Pharmacy/treatment give acknowledgment',
    'RRI_I12': 'Patient referral',
    'RSP_K11': 'Segment pattern response in response to QBP^Q11',
    'RSP_K21': 'Get person demographics respons',
    'RSP_K23': 'Get corresponding identifiers response',
    'RSP_K25': 'Personnel Information by Segment Response',
    'RSP_K31': 'Dispense History Response',
    'RSP_Q11': 'Query by parameter requesting an RSP',
    'RTB_K13': 'Tabular response in response to QBP^Q13',
    'SIU_S12': 'Notification of new appointment booking',
    'SIU_S13': 'Notification of appointment rescheduling',
    'SIU_S14': 'Notification of appointment modification',
    'SIU_S15': 'Notification of appointment cancellation',
    'SIU_S16': 'Notification of appointment discontinuation',
    'SIU_S17': 'Notification of appointment deletion',
    'SIU_S18': 'Notification of addition on appointment',
    'SIU_S19': 'Notification of modification on appointment',
    'SIU_S20': 'Notification of cancellation on appointment',
    'SIU_S21': 'Notification of discontinuation on appointment',
    'SIU_S22': 'Notification of deletion on appointment',
    'SIU_S23': 'Notification of blocked schedule time slot(s)',
    'SIU_S24': 'Notification of opened ("unblocked") schedule time slot(s)',
    'SIU_S26': 'Notification that patient did not show up for schedule appointment',
    'SPQ_Q08': 'Stored procedure request',
    'SQM_S25': 'SQM/Schedule query message and response',
    'SQR_S25': 'SQR/Schedule query message and response',
    'SRM_S01': 'SRM/Request new appointment booking',
    'SRR_S01': 'SRR/Request new appointment booking',
    'SSR_U04': 'Specimen Status Request',
    'SSU_U03': 'Specimen Status Update',
    'SUR_P09': 'Summary product experience report',
    'TBR_R08': 'Tabular Data Response',
    'TCU_U10': 'Automated equipment test code settings update',
    'UDM_Q05': 'Unsolicited display update message',
    'VQQ_Q07': 'Virtual table query',
    'VXQ_V01': 'Query for vaccination record',
    'VXR_V03': 'Vaccination record response',
    'VXU_V04': 'Unsolicited vaccination record update',
    'VXX_V02': 'Response to vaccination query'
}

#segment descriptions
hl7_segment_names = {
    'MSH': 'Message Header',
    'SFT': 'Software Segment',
    'UAC': 'User Authentication',
    'MSA': 'Message Acknowledgment',
    'ERR': 'Error',
    'EVN': 'Event Type',
    'PID': 'Patient Identification',
    'PD1': 'Patient Demographics',
    'ARV': 'Authorization Information',
    'ROL': 'Role',
    'NK1': 'Next of Kin',
    'PV1': 'Patient Visit',
    'PV2': 'Additional Patient Visit Information',
    'DB1': 'Disability Information',
    'OBX': 'Observation Result',
    'AL1': 'Allergy Information',
    'DG1': 'Diagnosis',
    'DRG': 'Diagnosis Related Group',
    'GT1': 'Guarantor Information',
    'ACC': 'Accident Information',
    'UB1': 'Uniform Billing',
    'UB2': 'Uniform Billing Additional',
    'PDA': 'Patient Death',
    'MRG': 'Merge Patient',
    'NPU': 'Nursing Unit',
    'ADT': 'Admit/Discharge/Transfer',
    'ARQ': 'Appointment Request',
    'ARP': 'Appointment Response',
    'PPR': 'Pharmacy Prescription',
    'PPA': 'Pharmacy Administration',
    'RSP': 'Response',
    'SRM': 'Scheduling Request Message',
    'SPM': 'Scheduling Response Message',
    'EAC': 'Equipment Account',
    'EAP': 'Equipment Profile',
    'FAC': 'Facility',
    'GTS': 'General Timing Specifications',
    'LOC': 'Location',
    'MLL': 'Medical/Legal Information',
    'NTE': 'Notes and Comments',
    'ODT': 'Order Detail',
    'OMG': 'Order Message',
    'ORD': 'Order',
    'ORDR': 'Order Detail Response',
    'ORG': 'Order Group',
    'PMU': 'Pharmacy Medication Unit',
    'PRB': 'Problem',
    'PRD': 'Problem Detail',
    'PTR': 'Patient Treatment Request',
    'PV1-1': 'Patient Visit ID',
    'PV1-2': 'Patient Visit Type',
    'PV1-3': 'Attending Doctor',
    'RSB': 'Resource Batch',
    'SSM': 'Scheduling Status Message',
    'SSF': 'Scheduled Status Follow-up',
    'TQ1': 'Timing/Quantity Information',
    'TQ2': 'Additional Timing/Quantity Information',
    'ZDS': 'Device Segment',
    'ZDG': 'Device Group',
    'ZXX': 'General Segment',
    'ZRI': 'Requested Information',
    'ZRS': 'Requested Service'
}

#HL7 tables with description
TABLES = {
    'HL70001': ('Administrative Sex', {
        'A': 'Ambiguous', 
        'F': 'Female', 
        'M': 'Male', 
        'N': 'Not applicable', 
        'O': 'Other', 
        'U': 'Unknown'
    }),
    'HL70002': ('Marital Status', {
        'A': 'Annulled', 
        'B': 'Legally separated', 
        'C': 'Common law', 
        'D': 'Divorced', 
        'E': 'Widowed', 
        'G': 'Living together', 
        'I': 'Interlocutory', 
        'M': 'Married', 
        'N': 'Never married', 
        'O': 'Other', 
        'P': 'Domestic partner', 
        'R': 'Separated', 
        'S': 'Single', 
        'T': 'Domestic partnership', 
        'U': 'Unknown', 
        'W': 'Widowed'
    }),
    'HL70004': ('Patient Class', {
        'B': 'Birth', 
        'C': 'Clinic', 
        'E': 'Emergency', 
        'I': 'Inpatient', 
        'N': 'Newborn', 
        'O': 'Outpatient', 
        'P': 'Psychiatric', 
        'R': 'Referred', 
        'U': 'Urgent'
    }),
    'HL70005': ('Race', {
        '...': 'Other or unknown race',
        '1002-5': 'White',
        '2028-9': 'Black or African American',
        '2054-5': 'American Indian or Alaska Native',
        '2076-8': 'Asian',
        '2106-3': 'Native Hawaiian or Other Pacific Islander',
        '2131-1': 'Hispanic or Latino'
    }),
    'HL70006': ('Religion', {
        'ABC': 'Christianity', 
        'AGN': 'Agnostic', 
        'AME': 'Amish', 
        'AMT': 'Ametaphysical', 
        'ANG': 'Anglican', 
        'AOG': 'Assembly of God', 
        'ATH': 'Atheist', 
        'BAH': 'Baha\'i', 
        'BAP': 'Baptist', 
        'BMA': 'Brahma Kumaris', 
        'BOT': 'Buddhist', 
        'BTA': 'Baptist (Another)', 
        'BTH': 'Brethren', 
        'BUD': 'Buddhism', 
        'CAT': 'Catholic', 
        'CFR': 'Christian Reform', 
        'CHR': 'Christian', 
        'CHS': 'Church of the Holy Spirit', 
        'CMA': 'Celtic', 
        'CNF': 'Confucianism', 
        'COC': 'Church of Christ', 
        'COG': 'Church of God', 
        'COI': 'Church of India', 
        'COL': 'Catholic Orthodox', 
        'COM': 'Christian Moravian', 
        'COP': 'Church of Pentecost', 
        'COT': 'Church of Truth', 
        'CRR': 'Church of the Restoration', 
        'EOT': 'Episcopalian', 
        'EPI': 'Episcopal', 
        'ERL': 'Episcopalian', 
        'EVC': 'Evangelical', 
        'FRQ': 'French Orthodox', 
        'FWB': 'Free Will Baptist', 
        'GRE': 'Greek Orthodox', 
        'HIN': 'Hindu', 
        'HOT': 'Hottentot', 
        'HSH': 'Hindu-Sikh', 
        'HVA': 'Hindu-Vedic', 
        'JAI': 'Jainism', 
        'JCO': 'Jehovah\'s Witness', 
        'JEW': 'Judaism', 
        'JOR': 'Joray', 
        'JOT': 'Jotoya', 
        'JRC': 'Jehovah\'s Reformed', 
        'JRF': 'Jafari', 
        'JRN': 'Jehovah\'s Reformed', 
        'JWN': 'Jehovah\'s Witness New', 
        'LMS': 'Lutheran', 
        'LUT': 'Lutheran', 
        'MEN': 'Menonite', 
        'MET': 'Methodist', 
        'MOM': 'Mormon', 
        'MOS': 'Mossad', 
        'MOT': 'Methodist', 
        'MSH': 'Mormon', 
        'MSU': 'Muslim', 
        'NAM': 'Native American', 
        'NAZ': 'Nazarenes', 
        'NOE': 'None', 
        'NRL': 'Non-religious', 
        'ORT': 'Orthodox', 
        'OTH': 'Other', 
        'PEN': 'Pentecostal', 
        'PRC': 'Protestant', 
        'PRE': 'Presbyterian', 
        'PRO': 'Protestant Reformed', 
        'QUA': 'Quaker', 
        'REC': 'Reformed', 
        'REO': 'Reformed Orthodox', 
        'SAA': 'Sikh', 
        'SEV': 'Seventh-Day Adventist', 
        'SHN': 'Shinto', 
        'SIK': 'Sikh', 
        'SOU': 'Southern Baptist', 
        'SPI': 'Spiritist', 
        'UCC': 'United Church of Christ', 
        'UMD': 'United Methodist', 
        'UNI': 'Unity', 
        'UNU': 'Unitarian Universalist', 
        'VAR': 'Varieties of Religion', 
        'WES': 'Wesleyan', 
        'WMC': 'Wycliffe'
    }),
    'HL70007': ('Admission Type', {
        'A': 'Admit', 
        'C': 'Consult', 
        'E': 'Emergency', 
        'L': 'Elective', 
        'N': 'Newborn', 
        'R': 'Referred', 
        'U': 'Urgent'
    }),
    'HL70008': ('Acknowledgment code', {
        'AA': 'Application acknowledgment', 
        'AE': 'Application error', 
        'AR': 'Application reject', 
        'CA': 'Conditional acknowledgment', 
        'CE': 'Conditional error', 
        'CR': 'Conditional reject'
    }),
    'HL70009': ('Ambulatory Status', {
        'A0': 'Ambulatory patient (Non-admitted)', 
        'A1': 'Ambulatory patient with minor issues', 
        'A2': 'Ambulatory patient with moderate issues', 
        'A3': 'Ambulatory patient with serious issues', 
        'A4': 'Ambulatory patient, post-surgery', 
        'A5': 'Ambulatory patient with unknown status', 
        'A6': 'Ambulatory patient', 
        'A7': 'Ambulatory patient at risk', 
        'A8': 'Ambulatory patient for follow-up', 
        'A9': 'Ambulatory patient, discharged', 
        'B1': 'Non-ambulatory patient (Inpatients)', 
        'B2': 'Patient moved', 
        'B3': 'Patient improved', 
        'B4': 'Patient re-admitted', 
        'B5': 'Non-ambulatory patient, admitted', 
        'B6': 'Non-ambulatory patient, discharged'
    }),
    'HL70017': ('Transaction Type', {
        'AJ': 'Admission', 
        'CD': 'Cancel Discharge', 
        'CG': 'Consultation General', 
        'CO': 'Consultation Original', 
        'PY': 'Payment'
    }),
    'HL70023': ('Admit Source', {
        '1': 'Physician Referral', 
        '2': 'Clinic Referral', 
        '3': 'HMO Referral', 
        '4': 'Transfer from a hospital', 
        '5': 'Transfer from a skilled nursing facility', 
        '6': 'Transfer from another healthcare facility', 
        '7': 'Emergency room', 
        '8': 'Direct admit', 
        '9': 'Unknown'
    }),
    'HL70027': ('Priority', {
        'A': 'Routine', 
        'P': 'Urgent', 
        'R': 'Immediate', 
        'S': 'Stat', 
        'T': 'Scheduled'
    }),
    'HL70038': ('Order Status', {
        'A': 'Active', 
        'CA': 'Cancelled', 
        'CM': 'Completed', 
        'DC': 'Discontinued', 
        'ER': 'Error', 
        'HD': 'On hold', 
        'IP': 'In progress', 
        'RP': 'Replaced', 
        'SC': 'Scheduled'
    }),
    'HL70052': ('Diagnosis Type', {
        'A': 'Admitting diagnosis', 
        'F': 'Final diagnosis', 
        'W': 'Working diagnosis'
    }),
    'HL70061': ('Check Digit Scheme', {
        'ISO': 'ISO standard', 
        'M10': '10 digit number', 
        'M11': '11 digit number', 
        'NPI': 'National Provider Identifier'
    }),
    'HL70062': ('Event Reason', {
        '01': 'Scheduled procedure', 
        '02': 'Scheduled admission', 
        '03': 'Scheduled procedure/admission cancelled', 
        'O': 'Other', 
        'U': 'Unscheduled'
    }),
    'HL70065': ('Specimen Action Code', {
        'A': 'Add',
        'G': 'Gross', 
        'L': 'Lab', 
        'O': 'Order', 
        'P': 'Preliminary', 
        'R': 'Reprint', 
        'S': 'Specimen'
    }),

    'HL70066': ('Employment Status', {
        '1': 'Employed', 
        '2': 'Unemployed', 
        '3': 'Self-employed', 
        '4': 'Student', 
        '5': 'Retired', 
        '6': 'Other', 
        '9': 'Unknown', 
        'C': 'Contract', 
        'L': 'Leave of absence', 
        'O': 'On break', 
        'T': 'Temporarily out of work'
    }),

    'HL70069': ('Hospital Service', {
        'CAR': 'Cardiology', 
        'MED': 'Medicine', 
        'PUL': 'Pulmonology', 
        'SUR': 'Surgery', 
        'URO': 'Urology'
    }),

    'HL70078': ('Abnormal flags', {
        '<': 'Less than reference range',
        '>': 'Greater than reference range',
        'A': 'Abnormal',
        'AA': 'Abnormal with warning',
        'B': 'Below reference range',
        'D': 'Delayed result',
        'H': 'High',
        'HH': 'Very high',
        'I': 'Invalid',
        'L': 'Low',
        'LL': 'Very low',
        'MS': 'Multiple samples',
        'N': 'Normal',
        'null': 'No result',
        'R': 'Rejected',
        'S': 'Significant',
        'U': 'Unknown',
        'VS': 'Very significant',
        'W': 'Warning'
    }),

    'HL70080': ('Nature of Abnormal Testing', {
        'A': 'Anomalous', 
        'B': 'Borderline', 
        'N': 'Normal', 
        'R': 'Recheck', 
        'S': 'Significant', 
        'SP': 'Specific', 
        'ST': 'Statistical'
    }),

    'HL70083': ('Outlier Type', {
        'C': 'Clinically significant', 
        'D': 'Distant'
    }),

    'HL70085': ('Observation result status codes interpretation', {
        'C': 'Complete', 
        'D': 'Discarded', 
        'F': 'Final', 
        'I': 'Invalid', 
        'N': 'Not done', 
        'O': 'Ordered', 
        'P': 'Pending', 
        'R': 'Rejected', 
        'S': 'Started', 
        'U': 'Uninterpretable', 
        'W': 'Waiting', 
        'X': 'Special'
    }),

    'HL70091': ('Query priority', {
        'D': 'Deferred', 
        'I': 'Immediate'
    }),

    'HL70092': ('Re-Admission Indicator', {
        'R': 'Re-admitted'
    }),

    'HL70093': ('Release Information', {
        '_': 'No release of information', 
        'N': 'Not released', 
        'Y': 'Released'
    }),

    'HL70098': ('Type of Agreement', {
        'M': 'Mutual', 
        'S': 'Single', 
        'U': 'Unknown'
    }),

    'HL70100': ('Invocation event', {
        'D': 'Data', 
        'O': 'Operational', 
        'R': 'Reschedule', 
        'S': 'System', 
        'T': 'Test'
    }),

    'HL70103': ('Processing ID', {
        'D': 'Debugging', 
        'P': 'Production', 
        'T': 'Training'
    }),
    'HL70105': ('Source of Comment', {
        'L': 'Local',  # Comment is from a local source
        'O': 'Other',  # Comment is from another unspecified source
        'P': 'Patient'  # Comment is from the patient
    }),

    'HL70106': ('Query/Response Format Code', {
        'D': 'Data (Query is requesting data)',
        'R': 'Response (Query is a response to an earlier request)',
        'T': 'Transaction (Query is part of a transaction)'
    }),

    'HL70107': ('Deferred Response Type', {
        'B': 'By request (response deferred by request)',
        'L': 'Late (response provided later than expected)'
    }),

    'HL70108': ('Query Results Level', {
        'O': 'Order-level response',
        'R': 'Result-level response',
        'S': 'Summary-level response',
        'T': 'Transaction-level response'
    }),

    'HL70109': ('Report Priority', {
        'R': 'Routine report',
        'S': 'Statistical or urgent report'
    }),
        'HL70116': ('Bed Status', {
        'C': 'Closed',  # Bed is closed (not in use)
        'H': 'Held',  # Bed is held for a specific patient or purpose
        'I': 'In Use',  # Bed is currently in use
        'K': 'Unavailable',  # Bed is unavailable due to maintenance or other reasons
        'O': 'Open',  # Bed is open and available
        'U': 'Unknown'  # Bed status is unknown
    }),

    'HL70121': ('Response Flag', {
        'D': 'Deferred',  # Response is deferred
        'E': 'Error',  # Error in response
        'F': 'Failure',  # Failure in response
        'N': 'No Response',  # No response given
        'R': 'Response',  # Valid response
    }),

    'HL70122': ('Charge Type', {
        'CH': 'Chargeable',  # Item is chargeable
        'CO': 'Contractual',  # Charge is contractual
        'CR': 'Credit',  # Charge is credited
        'DP': 'Deposit',  # Charge is a deposit
        'GR': 'Group',  # Charge is grouped with other charges
        'NC': 'Not Chargeable',  # Item is not chargeable
        'PC': 'Prepayment',  # Charge is prepaid
        'RS': 'Reimbursement',  # Charge is reimbursed
    }),

    'HL70123': ('Result Status', {
        'A': 'Accepted',  # Result is accepted
        'C': 'Complete',  # Result is complete
        'F': 'Final',  # Finalized result
        'I': 'In Progress',  # Result is still in progress
        'O': 'Ordered',  # Result is ordered but not yet completed
        'P': 'Preliminary',  # Preliminary result
        'R': 'Released',  # Result has been released
        'S': 'Suspended',  # Result is suspended
        'X': 'Cancelled',  # Result is cancelled
        'Y': 'Accepted with Modification',  # Result is accepted with modifications
        'Z': 'Unrecognized',  # Result is unrecognized or failed
    }),

    'HL70124': ('Transportation Mode', {
        'CART': 'Cart',  # Cart transportation
        'PORT': 'Portable',  # Portable transportation (e.g., wheelchair)
        'WALK': 'Walking',  # Walking mode of transportation
        'WHLC': 'Wheelchair',  # Wheelchair transportation
    }),

    'HL70125': ('Value Type', {
        'AD': 'Address',  # Address (typically for an address field)
        'CE': 'Coded Entry',  # Coded entry (value has a defined code system)
        'CF': 'Coded Format',  # Coded format (related to coded content)
        'CK': 'Check',  # Check (typically used for numeric or verification values)
        'CN': 'Composite Name',  # Composite Name (e.g., full name with components)
        'CP': 'Coded Price',  # Coded price (typically for pricing fields)
        'CX': 'Extended Composite Identifier',  # Extended identifier with multiple components
        'DT': 'Date',  # Date (date type value)
        'ED': 'Encapsulated Data',  # Encapsulated data (binary or complex data)
        'FT': 'File Type',  # File (file data type)
        'MO': 'Money',  # Monetary value
        'NM': 'Numeric',  # Numeric value (integer or decimal)
        'PN': 'Person Name',  # Person’s name (e.g., first name, last name)
        'RP': 'Reference Pointer',  # Reference pointer (reference to another object)
        'SN': 'Structured Numeric',  # Structured numeric value
        'ST': 'String',  # String (text value)
        'TM': 'Time',  # Time (time value)
        'TN': 'Telephone Number',  # Telephone number (string format)
        'TS': 'Time Stamp',  # Time stamp (combines time and date)
        'TX': 'Text',  # Text (freeform text value)
        'XAD': 'Extended Address',  # Extended address (address with more components)
        'XCN': 'Extended Composite Name',  # Extended composite name with extra components
        'XON': 'Extended Composite Organization Name',  # Extended organization name
        'XPN': 'Extended Person Name',  # Extended person name (multiple name components)
        'XTN': 'Extended Telephone Number',  # Extended telephone number (multiple components)
    }),

    'HL70126': ('Quantity Limited Request', {
        'CH': 'Check',  # Check (quantity check)
        'LI': 'Limited',  # Limited quantity request
        'PG': 'Page',  # Paging request for limited quantities
        'RD': 'Reduced',  # Reduced request for quantities
        'ZO': 'Zero',  # Zero quantity requested
    }),

    'HL70127': ('Allergen Type', {
        'AA': 'Allergy Antigen',  # Allergy antigen (specific substance causing allergy)
        'DA': 'Drug Allergy',  # Drug allergy (reaction to a medication)
        'EA': 'Environmental Allergy',  # Allergy caused by environmental factors (dust, pollen)
        'FA': 'Food Allergy',  # Food allergy (reaction to specific food items)
        'LA': 'Latex Allergy',  # Allergy to latex
        'MA': 'Medical Allergy',  # Medical allergy (reactions to medical procedures or devices)
        'MC': 'Miscellaneous Allergy',  # Miscellaneous allergy (not falling under specific categories)
        'PA': 'Pollen Allergy',  # Pollen allergy (reaction to pollen)
    }),

    'HL70128': ('Allergy Severity', {
        'MI': 'Mild',  # Mild severity allergy
        'MO': 'Moderate',  # Moderate severity allergy
        'SV': 'Severe',  # Severe allergy reaction
        'U': 'Unknown',  # Severity is unknown
    }),

    'HL70130': ('Visit User Code', {
        'HO': 'Hospital',  # Hospital visit user code
        'MO': 'Medical Office',  # Medical office visit user code
        'PH': 'Physical Health',  # Physical health visit user code
        'TE': 'Telehealth',  # Telehealth visit user code
    }),

    'HL70131': ('Contact Role', {
        'C': 'Contact',  # The role of a contact person
        'E': 'Emergency',  # Emergency contact role
        'F': 'Family',  # Family contact role
        'I': 'Institution',  # Institution-related contact role
        'N': 'Next of Kin',  # Next of kin contact role
        'O': 'Other',  # Other contact role
        'S': 'Spouse',  # Spouse contact role
        'U': 'Unknown',  # Unknown contact role
    }),

    'HL70133': ('Procedure Practitioner Identifier Code Type', {
        'AN': 'Account Number',  # Account number of the practitioner
        'AS': 'Assigned',  # Assigned practitioner code
        'CM': 'Clinical Module',  # Clinical module identifier
        'NP': 'Nurse Practitioner',  # Nurse Practitioner identifier code
        'PR': 'Physician',  # Physician identifier code
        'PS': 'Physician Assistant',  # Physician Assistant identifier code
        'RD': 'Radiologist',  # Radiologist identifier code
        'RS': 'Resident',  # Resident practitioner identifier code
        'SN': 'Specialist',  # Specialist practitioner identifier code
    }),

    'HL70135': ('Assignment of Benefits', {
        'M': 'Medically Necessary',  # Medically necessary benefit
        'N': 'Not Medically Necessary',  # Not medically necessary benefit
        'Y': 'Yes, benefit assigned',  # Benefit assigned
    }),

    'HL70136': ('Yes/No Indicator', {
        'N': 'No',  # No
        'Y': 'Yes',  # Yes
    }),

    'HL70137': ('Mail Claim Party', {
        'E': 'Employer',  # Employer is the claim party
        'G': 'Government',  # Government is the claim party
        'I': 'Insured',  # Insured person is the claim party
        'O': 'Other',  # Other entity is the claim party
        'P': 'Physician',  # Physician is the claim party
    }),

    'HL70140': ('Military Service', {
        'AUSA': 'Army of the United States Army',  # Army
        'AUSAF': 'United States Air Force',  # Air Force
        'AUSN': 'United States Navy',  # Navy
        'NATO': 'North Atlantic Treaty Organization',  # NATO service
        'NOAA': 'National Oceanic and Atmospheric Administration',  # NOAA service
        'USA': 'United States Army',  # U.S. Army
        'USAF': 'United States Air Force',  # U.S. Air Force
        'USCG': 'United States Coast Guard',  # Coast Guard
        'USMC': 'United States Marine Corps',  # Marine Corps
        'USN': 'United States Navy',  # U.S. Navy
        'USPHS': 'U.S. Public Health Service',  # Public Health Service
    }),

    'HL70141': ('Military Rank/Grade', {
        'E1... E9': 'Enlisted Ranks E1 to E9',  # Enlisted ranks (E1 to E9)
        'O1 ... O9': 'Officer Ranks O1 to O9',  # Officer ranks (O1 to O9)
        'W1 ... W4': 'Warrant Officer Ranks W1 to W4',  # Warrant officer ranks
    }),

    'HL70142': ('Military Status', {
        'ACT': 'Active Duty',  # Active duty status
        'DEC': 'Deceased',  # Deceased military personnel
        'RET': 'Retired',  # Retired from service
    }),
    'HL70178': ('File Level Event Code', {
        'REP': 'Replace',  # File-level event code for replacement
        'UPD': 'Update',  # File-level event code for updating
    }),

    'HL70179': ('Response Level', {
        'AL': 'Alert',  # Response level for alert
        'ER': 'Error',  # Response level for error
        'NE': 'Normal',  # Response level for normal
        'SU': 'Suspended',  # Response level for suspended status
    }),

    'HL70180': ('Record-Level Event Code', {
        'MAC': 'Master Added',  # Record-level event for master added
        'MAD': 'Master Deleted',  # Record-level event for master deleted
        'MDC': 'Master Changed',  # Record-level event for master changed
        'MDL': 'Master Locked',  # Record-level event for master locked
        'MUP': 'Master Unlocked',  # Record-level event for master unlocked
    }),

    'HL70181': ('MFN Record-Level Error Return', {
        'S': 'Successful',  # Indicates the operation was successful
        'U': 'Unsuccessful',  # Indicates the operation was unsuccessful
    }),

    'HL70182': ('Staff Type', {
        # No predefined values, this would be defined based on the context
    }),

    'HL70183': ('Active/Inactive', {
        'A': 'Active',  # Indicates the status is active
        'I': 'Inactive',  # Indicates the status is inactive
    }),

    'HL70184': ('Department', {
        # No predefined values, this would depend on the organization or system
    }),

    'HL70185': ('Preferred Method of Contact', {
        'B': 'By Phone',  # Preferred contact method is by phone
        'C': 'By Cell Phone',  # Preferred contact method is by cell phone
        'E': 'By Email',  # Preferred contact method is by email
        'F': 'By Fax',  # Preferred contact method is by fax
        'H': 'By Home Phone',  # Preferred contact method is by home phone
        'O': 'By Office Phone',  # Preferred contact method is by office phone
    }),

    'HL70187': ('Provider Billing', {
        'I': 'Institutional',  # Billing is institutional
        'P': 'Professional',  # Billing is professional
    }),

    'HL70189': ('Ethnic Group', {
        '...': 'Not defined',  # Ethnic group not specified
        'H': 'Hispanic',  # Ethnic group: Hispanic
        'N': 'Native American',  # Ethnic group: Native American
        'U': 'Unknown',  # Ethnic group: Unknown
    }),

    'HL70190': ('Address Type', {
        'B': 'Billing Address',  # Billing address type
        'BA': 'Business Address',  # Business address type
        'BDL': 'Billing Delivery Address',  # Billing delivery address
        'BR': 'Branch Address',  # Branch office address
        'C': 'Clinical Address',  # Clinical address type
        'F': 'Family Address',  # Family address
        'H': 'Home Address',  # Home address type
        'L': 'Laboratory Address',  # Laboratory address type
        'M': 'Mailing Address',  # Mailing address type
        'N': 'Nursing Address',  # Nursing address type
        'O': 'Other Address',  # Other type of address
        'P': 'Postal Address',  # Postal address
        'RH': 'Residential Address',  # Residential address type
    }),

    'HL70191': ('Type of Referenced Data', {
        'AP': 'Application Data',  # Application-related data type
        'AU': 'Audio Data',  # Audio data type
        'FT': 'File Transfer',  # File transfer data type
        'IM': 'Image Data',  # Image-related data type
        'multipart': 'Multipart Data',  # Multipart (binary) data type
        'NS': 'Name String',  # Name data type
        'SD': 'Structured Data',  # Structured data type
        'SI': 'Signal Data',  # Signal data type
        'TEXT': 'Text Data',  # Text data type
        'TX': 'Text',  # Text-based data type
    }),

    'HL70193': ('Amount Class', {
        'AT': 'Amount Total',  # Total amount
        'LM': 'List Method',  # List-based method
        'PC': 'Price per Charge',  # Price per charge method
        'UL': 'Unit of Labor',  # Unit of labor-based method
    }),

    'HL70200': ('Name Type', {
        'A': 'Alias',  # Name is an alias
        'B': 'Birth Name',  # Name is a birth name
        'C': 'Common Name',  # Name is a common name
        'D': 'Display Name',  # Name for display purposes
        'I': 'Institutional Name',  # Institutional name
        'L': 'Legal Name',  # Legal name
        'M': 'Maiden Name',  # Maiden name
        'N': 'Nickname',  # Nickname
        'P': 'Preferred Name',  # Preferred name
        'R': 'Religious Name',  # Religious name
        'S': 'Stage Name',  # Stage name
        'T': 'Temporary Name',  # Temporary name
        'U': 'Unknown',  # Unknown name type
    }),

    'HL70201': ('Telecommunication Use Code', {
        'ASN': 'Assigned',  # Assigned use of telecommunication
        'BPN': 'Business Partner Network',  # Business partner network
        'EMR': 'Electronic Medical Record',  # Electronic medical records
        'NET': 'Network',  # General network use
        'ORN': 'Order',  # Order-related telecommunication
        'PRN': 'Personal',  # Personal telecommunication
        'VHN': 'Voice Mail',  # Voice mail
        'WPN': 'Work Phone Number',  # Work phone number
    }),

    'HL70202': ('Telecommunication Equipment Type', {
        'BP': 'Business Phone',  # Business phone equipment type
        'CP': 'Cell Phone',  # Cell phone equipment type
        'FX': 'Fax',  # Fax equipment type
        'Internet': 'Internet Communication',  # Internet-based communication
        'MD': 'Modem',  # Modem equipment type
        'PH': 'Phone',  # Standard phone equipment type
        'TDD': 'Telecommunications Device for the Deaf',  # TDD equipment
        'TTY': 'Teletypewriter',  # Teletypewriter equipment
        'X.400': 'X.400 Protocol',  # X.400 standard for message handling
    }),

    'HL70204': ('Organizational Name Type', {
        'A': 'Association',  # Organizational name for an association
        'D': 'Department',  # Organizational name for a department
        'L': 'Laboratory',  # Organizational name for a laboratory
        'SL': 'Subordinate Organization',  # Subordinate organizational unit
    }),

    'HL70205': ('Price Type', {
        'AP': 'Amount Price',  # Amount-based price
        'DC': 'Discount Price',  # Discounted price
        'IC': 'Internal Charge',  # Internal charge price
        'PF': 'Profit Price',  # Profit-based price
        'TF': 'Taxable Fee',  # Taxable fee price
        'TP': 'Total Price',  # Total price
        'UP': 'Unit Price',  # Price per unit
    }),

    'HL70206': ('Segment Action Code', {
        'A': 'Add',  # Action: Add new record
        'D': 'Delete',  # Action: Delete record
        'U': 'Update',  # Action: Update existing record
    }),

    'HL70207': ('Processing Mode', {
        'A': 'Active',  # Mode: Active processing
        'I': 'Inactive',  # Mode: Inactive processing
        'Not present': 'Not Present',  # Mode: Not applicable or absent
        'R': 'Ready',  # Mode: Ready for processing
        'T': 'Test',  # Mode: Test processing
    }),

    'HL70208': ('Query Response Status', {
        'AE': 'Application Error',  # Application error in response
        'AR': 'Application Reject',  # Application rejected the query
        'NF': 'Not Found',  # Data not found in response
        'OK': 'Success',  # Successful response
    }),

    'HL70209': ('Relational Operator', {
        'CT': 'Contains',  # Operator: Contains value
        'EQ': 'Equal',  # Operator: Equal to
        'GE': 'Greater than or Equal',  # Operator: Greater than or equal to
        'GN': 'Greater than',  # Operator: Greater than
        'GT': 'Greater Than',  # Operator: Greater than
        'LE': 'Less than or Equal',  # Operator: Less than or equal to
        'LT': 'Less Than',  # Operator: Less than
        'NE': 'Not Equal',  # Operator: Not equal to
    }),

    'HL70210': ('Relational Conjunction', {
        'AND': 'Logical AND',  # Conjunction: AND
        'OR': 'Logical OR',  # Conjunction: OR
    }),
    'HL70213': ('Purge Status Code', {
        'D': 'Data Purged',  # Indicates that the data has been purged
        'I': 'Data Inactive',  # Indicates that the data is inactive but not purged
        'P': 'Data Pending Purge',  # Indicates that the data is pending to be purged
    }),

    'HL70214': ('Special Program Code', {
        'CH': 'Chronic Care',  # Special program for chronic care
        'ES': 'Emergency Services',  # Special program for emergency services
        'FP': 'Family Planning',  # Special program for family planning
        'O': 'Other',  # Special program classified as other
        'U': 'Urgent Care',  # Special program for urgent care
    }),

    'HL70215': ('Publicity Code', {
        'F': 'Public',  # Public publicity status
        'N': 'Not Public',  # Not for public access
        'O': 'Outreach',  # Outreach publicity status
        'U': 'Under Review',  # Publicity status under review
    }),

    'HL70216': ('Patient Status Code', {
        'AI': 'Admitted Inpatient',  # Status for admitted inpatient
        'DI': 'Discharged Inpatient',  # Status for discharged inpatient
    }),

    'HL70217': ('Visit Priority Code', {
        '1': 'High',  # Visit priority level 1: High priority
        '2': 'Medium',  # Visit priority level 2: Medium priority
        '3': 'Low',  # Visit priority level 3: Low priority
    }),

    'HL70220': ('Living Arrangement', {
        'A': 'Alone',  # Living alone
        'F': 'With Family',  # Living with family
        'I': 'Institutional',  # Living in an institution (e.g., care home)
        'R': 'Residential',  # Living in residential accommodation
        'S': 'Shared Housing',  # Shared housing arrangement
        'U': 'Unknown',  # Living arrangement is unknown
    }),

    'HL70223': ('Living Dependency', {
        'C': 'Complete',  # Complete dependency (requires full assistance)
        'M': 'Moderate',  # Moderate dependency (requires some assistance)
        'O': 'None',  # No dependency (independent)
        'S': 'Supportive',  # Requires supportive assistance (e.g., help with daily activities)
        'U': 'Unknown',  # Living dependency is unknown
    }),

    'HL70224': ('Transport Arranged', {
        'A': 'Arranged',  # Transport is arranged
        'N': 'Not Arranged',  # Transport is not arranged
        'U': 'Unknown',  # Transport arrangement status is unknown
    }),

    'HL70225': ('Escort Required', {
        'N': 'No Escort Required',  # No escort is required
        'R': 'Escort Required',  # Escort is required
        'U': 'Unknown',  # Escort requirement is unknown
    }),

    'HL70228': ('Diagnosis Classification', {
        'C': 'Clinical',  # Diagnosis type is clinical
        'D': 'Diagnostic',  # Diagnosis type is diagnostic
        'I': 'Infectious',  # Diagnosis type is infectious
        'M': 'Malignant',  # Diagnosis type is malignant
        'O': 'Other',  # Diagnosis type is classified as other
        'R': 'Recurrent',  # Diagnosis type is recurrent
        'S': 'Syndromic',  # Diagnosis type is syndromic
        'T': 'Traumatic',  # Diagnosis type is traumatic
    }),

    'HL70229': ('DRG Payor', {
        'C': 'Commercial',  # Payor is a commercial insurer
        'G': 'Government',  # Payor is a government entity
        'M': 'Medicare',  # Payor is Medicare
    }),

    'HL70230': ('Procedure Functional Type', {
        'A': 'Ablation',  # Procedure type is ablation
        'D': 'Diagnostic',  # Procedure type is diagnostic
        'I': 'Interventional',  # Procedure type is interventional
        'P': 'Prophylactic',  # Procedure type is prophylactic
    }),

    'HL70231': ('Student Status', {
        'F': 'Full-time',  # Student is full-time
        'N': 'Not a Student',  # Not a student
        'P': 'Part-time',  # Student is part-time
    }),

    'HL70232': ('Insurance Company Contact Reason', {
        '01': 'Coverage Inquiry',  # Reason for contact: Coverage inquiry
        '02': 'Claims Inquiry',  # Reason for contact: Claims inquiry
        '03': 'Eligibility Verification',  # Reason for contact: Eligibility verification
    }),
     'HL70155': ('Accept/application acknowledgment conditions', {
        'AL': 'Application Level Acknowledgment',  # Acknowledgment at the application level
        'ER': 'Error',  # Indicates an error in the acknowledgment
        'NE': 'No Error',  # Indicates no error occurred during the acknowledgment
        'SU': 'Success',  # Indicates that the acknowledgment is successful
    }),
    'HL70391': ('Segment group', {
        'OBRG': 'Order/Result Group',  # Group of segments related to an order or result
        'ORCG': 'Order Container Group',  # Group of segments related to an order container
        'PIDG': 'Patient Identifier Group',  # Group of segments identifying a patient
        'RXAG': 'Pharmacy Order Group',  # Group of segments related to a pharmacy order
        'RXDG': 'Pharmacy Drug Group',  # Group of segments related to a drug in a pharmacy order
        'RXEG': 'Pharmacy Order Event Group',  # Group of segments related to a pharmacy order event
        'RXOG': 'Pharmacy Order Group (Generic)',  # Generic group for pharmacy orders
    }),
      'HL70445': ('Identity Reliability Code', {
        'AL': 'Always valid',  # The identity is always valid and reliable.
        'UA': 'Unverified accuracy',  # The identity is not verified, but presumed accurate.
        'UD': 'Unverified data',  # The identity has not been verified, and the data is of unknown reliability.
        'US': 'Unreliable source',  # The identity is from an unreliable source and may not be trustworthy.
    })
}

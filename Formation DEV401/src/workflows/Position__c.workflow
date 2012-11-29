<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Assign_New_Position_to_Recruiter_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Recruiter_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Assign New Position to Recruiter Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Opened_to_Today</fullName>
        <field>Date_Opened__c</field>
        <formula>NOW()</formula>
        <name>Date Opened to Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Owner_to_Recruiter_Queue_on_Approval</fullName>
        <field>OwnerId</field>
        <lookupValue>Recruiter_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Owner to Recruiter Queue on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Close_on_Not_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Status to Close on Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Open_on_Approval</fullName>
        <field>Status__c</field>
        <literalValue>Open</literalValue>
        <name>Status to Open on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sub_Status_for_Positions_in_Progress</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Sub-Status for Positions in Progress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sub_Status_to_Approved_on_Approval</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Sub-Status to Approved on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sub_Status_to_Not_Approved_on_Reject</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Sub-Status to Not Approved on Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>New Position Rule</fullName>
        <actions>
            <name>Assign_New_Position_to_Recruiter_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Position__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <description>Run this rule if the following criterias are met</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>

public class VCC_DataImportUtil {

    //TODO: Create a Constructor that creates all of these ID's as a Map Dynamically
    public static Id personAccountRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('PersonAccount').getRecordTypeId();
    public static Id businessAccountRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('IndustriesBusiness').getRecordTypeId();
    public static Id vccCodeSetRecordTypeId = Schema.SObjectType.CodeSet.getRecordTypeInfosByDeveloperName().get('VCC_Code_Set').getRecordTypeId();
    public static Id locationRecordTypeId = Schema.SObjectType.Location.getRecordTypeInfosByDeveloperName().get('VAF_VA_Facility').getRecordTypeId();
    public static Id healthcareFaciltyId = Schema.SObjectType.HealthcareFacility.getRecordTypeInfosByDeveloperName().get('VAHC_Healthcare_Facility').getRecordTypeId();    
    // Profile
    private static Id vavetBaseProfile		       	= [SELECT Id FROM Profile WHERE Name                                        = 'VAVET Base Profile'].id;
    private static Id sysAdminProfile 			  	= [SELECT Id FROM Profile WHERE Name 									    = 'System Administrator'].id;
    // Permission Sets
	private static Id permissionSetHealthCloud     	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'HealthCloudFoundation'].id;
    private static Id permissionSetConnectsAgent   	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'Connects_Agent'].id;
    private static Id permissionSetConnectsSupe    	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'Connects_Supervisor'].id;
	private static Id permissionSetPACTDetails     	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'VAHC_View_PACT_Details'].id;
	private static Id permissionSetAccountTab      	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'Accounts_Tab_Salesforce'].id;
    private static Id permissionSetTaskTab         	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'Tasks_Tab_Salesforce'].id;
    private static Id permissionSetSbToolUser      	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'VAHC_Sandbox_Tool_User'].id;
    private static Id permissionSetVAHCService     	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'VAHC_Assign_as_Service_Resource'].id;
    private static Id permissionSetMSAQueue        	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'VCC_VAHC_View_MSA_Queues'].id;
 // private static Id vahcHeartbeatToolUser        	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name                    = 'VAHC_API_Heartbeat_App_User'].id;
 	private static Id permissionSetvahcWriteTierIPN	 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name					 = 'VAHC_Write_Tier_I_Progress_Note'].id;
    private static Id permissionSetvahcWriteTierIIPN = [SELECT Id FROM PermissionSet WHERE PermissionSet.name					 = 'VAHC_Write_Tier_II_Progress_Note'].id;
    private static Id permissionSetTeleEcCcrn		 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name					 = 'TED_CCRN'].id;	
    private static Id permissionSetSotUser			 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name					 =  'VCC_VAHC_SOT_User'].id;
    private static Id permissionSetVccTrainer		 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name					 = 'VCC_Trainer'].id;
    private static Id permissionSetVccTrainee		 = [SELECT Id FROM PermissionSet WHERE PermissionSet.name					 = 'VCC_Trainee'].id;
    // Permission Set Licenses  
    private static Id salesforceScheduler          = [SELECT Id FROM PermissionSetLicense WHERE DeveloperName 				   = 'LightningSchedulerPsl'].id;
    private static Id healthCloud		           = [SELECT Id FROM PermissionSetLicense WHERE DeveloperName 				   = 'HealthCloudGA_HealthCloudPsl'].id;
    private static Id healthCloudPlatformPSL	   = [SELECT Id FROM PermissionSetLicense WHERE DeveloperName				   = 'HealthCloudPlatformPsl'].id;
    // Permission Set Groups
    private static Id permissionSetGroupRN         = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Registered_Nurse'].id;
    private static Id permissionSetSuperUser       = [SELECT Id from PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VAHC_Super_User'].id;
    private static Id permissionSetGroupMSA        = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Advanced_Medical_Support_Assistant'].id;
    private static Id permissionSetGroupPharmI     = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Pharmacy_I'].id;
    private static Id permissionSetGroupPharmII    = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Pharmacy_II'].id;
    private static Id permissionSetGroupPharmIII   = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Pharmacy_III'].id;
    private static Id permissionSetGroupMP         = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Medical_Provider'].id;
    private static Id permissionSetGroupSupervisor = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Clinical_Supervisor'].id;
    private static Id permissionSetGroupMSAAdmin   = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VAHC_MSA_Administrative_Officer'].id;
    private static Id permissionSetGroupTierIAdmin = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VAHC_Tier_I_Administrative_Officer'].id;
    private static Id permissionSetGroupTeleMP     = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'TED_Medical_Provider_Group'].id;
    private static Id permissionSetGroupVCVMPAppt  = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_VCV_Appointment_Viewer_Medical_Provider'].id;
    private static Id permissionSetGroupCA         = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_VCV_Appointment_Viewer_Administrator'].id;
    private static Id permissionSetGroupMSAAppt    = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_VCV_Appointment_Viewer_MSA'].id; 
    private static Id permissionSetGroupCCRNTeleEc = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'CCCRN_TeleEC_Permissions'].id;    
    private static Id permissionSetGroupITUU 	   = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Integration_Test_Utility_User'].id;
    private static Id permissionSetGroupITUUAdmin  = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Integration_Test_Utility_Admin_User'].id;
    private static Id permissionSetGroupWellhive   = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VAHC_Wellhive_Scheduler_User'].id;
    private static Id permissionSetGroupTeleECRN   = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'TED_Registered_Nurse_Group'].id;
  //private static Id permissionSetGroupVCCTierISup = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Tier_I_Supervisor'].id;
  //private static Id permissionSetGroupVCCTierIISup = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Tier_II_Supervisor'].id;
  //private static Id permissionSetGroupVCCTierIIISup = [SELECT Id FROM PermissionSetGroup WHERE PermissionSetGroup.DeveloperName = 'VCC_Tier_III_Supervisor'].id;
    // Public Groups
    private static Id vahcBaseUsersPublicGroup     = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC Base Users'].id;
    private static Id vahcLeadersPublicGroup       = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC Leaders'].id;
    private static Id vahcMPPublicGroup            = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC Medical Providers'].id;
    private static Id teleECPublicGroup            = [SELECT Id FROM Group WHERE Group.name                                    = 'Tele EC Public Group'].id;
    private static Id teleECNational               = [SELECT Id FROM Group WHERE Group.name                                    = 'TED National'].id;
    private static Id visn1VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 1 VCV Appointment Viewer'].id;
    private static Id visn2VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 2 VCV Appointment Viewer'].id;
    private static Id visn7VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 7 VCV Appointment Viewer'].id;
    private static Id visn8VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 8 VCV Appointment Viewer'].id;
    private static Id visn17VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 17 VCV Appointment Viewer'].id;
    private static Id visn21VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 21 VCV Appointment Viewer'].id;
    private static Id visn99VCV          		   = [SELECT Id FROM Group WHERE Group.name                                    = 'VAHC VISN 99 VCV Appointment Viewer'].id;
    private static Id pharmacySupePublicGroup	   = [SELECT Id FROM Group WHERE Group.name									   = 'VAHC Pharmacy Supervisors'].id;
    private static Id sotUsersPublicGroup		   = [SELECT Id FROM Group WHERE Group.name									   = 'SOT Group'].id;        
    private static Id userRoleId = [SELECT Id FROM UserRole Where name = 'VCC'].id;
    private static Id callCenterId = [Select Id From CallCenter Where Name = 'Connects for Cisco Contact Center V9'].id;
    private static Id userLicenseId = [SELECT Id FROM UserLicense WHERE Name = 'Salesforce'].id;
    
    private static String USERNAME_SUFFIX = '.' + sandboxNameInvocable.sandboxName()[0];

    @AuraEnabled(cacheable=false)
    public static void AccountLocationFacilityImport() {
        StaticResource accSr      = [SELECT Id, Body FROM StaticResource WHERE Name = 'Account' LIMIT 1];
        StaticResource locationSr = [SELECT Id, Body FROM StaticResource WHERE Name = 'Location' LIMIT 1];
        StaticResource facilitySr = [SELECT Id, Body FROM StaticResource WHERE Name = 'HealthcareFacility' LIMIT 1];
        String accJsonInput = accSr.Body.toString();
        String locationJsonInput = locationSr.Body.toString();
        String facilityJsonInput = facilitySr.Body.toString();
        System.debug('accSr' + accSr);
        System.debug('locationSr' + locationSr);
        System.debug('facilitySr' + facilitySr);
        

        Map<String, Account> accMapping = (Map<String, Account>)System.JSON.deserialize(accJsonInput, Map<String, Account>.class);
        Map<String, Schema.Location> locationMapping = (Map<String, Schema.Location>)System.JSON.deserialize(locationJsonInput, Map<String, Schema.Location>.class);
        List<HealthcareFacility> facilityList = (List<HealthcareFacility>)System.JSON.deserialize(facilityJsonInput, List<HealthcareFacility>.class);
        System.debug('accountMapping ' + accMapping.keySet());
        System.debug('locationMapping ' + locationMapping);
        System.debug('facilityList' + facilityList);
        List<Account> existingAccs = [Select Id, VCC_MVI_External_Id__pc From Account];
        Map<String,Account> existingAccsMap = new Map<String,Account>();
        for (Account acc : existingAccs) {
            existingAccsMap.put(acc.VCC_MVI_External_Id__pc, acc);
        }
        List<Account> accList = new List<Account>();
        System.debug('accList ' + accList);
        for (String key : accMapping.keySet()) { 
            if (!existingAccsMap.containsKey((String)accMapping.get(key).VCC_MVI_External_Id__pc)) {
                if ((String)accMapping.get(key).RecordTypeId == 'PersonAccount') {
                    accMapping.get(key).RecordTypeId = personAccountRecordTypeId;
                }
                else if ((String)accMapping.get(key).RecordTypeId == 'Business') {
                    accMapping.get(key).RecordTypeId = businessAccountRecordTypeId;
                }
                accList.add(accMapping.get(key));
                System.debug('accList ' + accList);
                System.debug('accList size ' + accList.size());
            }
		}
        
        try{
        	if (accList.size() != 0) {
            	insert accList;
                System.debug('acclist ' + accList);
       		}
        }
        catch (Exception ex){
            throw new AuraHandledException(ex.getMessage());
        }
        
        List<Schema.Location> existingLocation = [Select Id, Name From Location];
        Map<String,Schema.Location> existingLocationMap = new Map<String,Schema.Location>();
        for (Schema.Location loc : existingLocation) {
            existingLocationMap.put(loc.Name, loc);
        }
        List<Schema.Location> locationList = new List<Schema.Location>();
        for (String key : locationMapping.keySet()) { 
            if (!existingLocationMap.containsKey(locationMapping.get(key).Name)) {
                if ((String)locationMapping.get(key).RecordTypeId == 'VAF_VA_Facility') {
                    locationMapping.get(key).RecordTypeId = locationRecordTypeId;
                }
                locationList.add(locationMapping.get(key));
            }
		}
        
        if (locationList.size() != 0) {
            insert locationList;
        }
        
        List<HealthcareFacility> existingFacility = [Select Id, Name From HealthcareFacility];
        System.debug('existingFacility = ' + existingFacility);
        Map<String,HealthcareFacility> existingFacilityMap = new Map<String,HealthcareFacility>();
        for (HealthcareFacility hcf : existingFacility) {
            existingFacilityMap.put(hcf.Name, hcf);
            System.debug('existingFacilityMap ====> ' + existingFacilityMap);
        }
        
        List<HealthcareFacility> newFacilityList = new List<HealthcareFacility>();
        for (HealthcareFacility hcf : facilityList) {
            if (!existingFacilityMap.containsKey(hcf.Name)) {
                if ((String)hcf.RecordTypeId == 'VAHC_Healthcare_Facility') {
                    hcf.RecordTypeId = healthcareFaciltyId;
                    System.debug('hcf.RecordTypeId =' + hcf.RecordTypeId);
                    System.debug('AccountId ' + hcf.AccountId);

                }
                if (hcf.AccountId != null) {
                    hcf.AccountId = accMapping.get(hcf.AccountId).id;
                    System.debug('hcf ' + hcf);
                    System.debug('AccountId ' + hcf.AccountId);
                }
                if (hcf.LocationId != null) {
                    hcf.LocationId = locationMapping.get(hcf.LocationId).id;
                    System.debug('LocationId ' + hcf.LocationId);
                }
                newFacilityList.add(hcf);
                System.debug('newFacilityList size ' + newFacilityList.size());
                System.debug('newFacilityList ' + newFacilityList);

            }
        }
        
        if (newFacilityList.size() != 0) {
                        System.debug('newFacilityList ' + newFacilityList);

            insert newFacilityList;

        }
    }

    public static void accountLocationFacilityDelete() {
        massFacilityDelete();
        massLocationDelete();
        massAccountDelete();
    }
    
    private static void massLocationDelete() {
        Delete [Select Id From location];
    }
    
    private static void massFacilityDelete() {
        Delete [Select Id From HealthcareFacility];
    }
 
    private static void massAccountDelete() {
        List<Account> accountList = [Select Id From Account];
        List<Id> accountIds = new List<Id>();
        for (Account a : accountList) {
            accountIds.add(a.id);
        }
        List<Case> casesToDelete = [Select Id From Case Where accountId In :accountIds];
        List<Id> caseIds = new List<Id>();
        for (Case c : casesToDelete) {
            caseIds.add(c.Id);
        }
        List<VCC_Progress_Note__c> progressNotes = [Select Id, VCC_Signed__c From VCC_Progress_Note__c Where VCC_Case__c In :caseIds];
        List<Id> pnIds = new List<Id>();
        for (VCC_Progress_Note__c pn : progressNotes) {
            pnIds.add(pn.Id);
        }
        List<VCC_Signers__c> signers = [Select Id From VCC_Signers__c Where VCC_Progress_Note__c In :pnIds];
        List<VCC_Addendum__c> addendums = [Select Id From VCC_Addendum__c Where VCC_Related_Note__c In :pnIds];
        Delete signers;
        Delete addendums;
        Delete casesToDelete;
        Delete accountList;
    }
    
    @AuraEnabled(cacheable=false)
    public static void massSignersImport() {    
        StaticResource sr = [SELECT Id, Body, ContentType FROM StaticResource WHERE Name = 'VCC_Signers' LIMIT 1];
		String jsonInput = sr.Body.toString();
        List<VCC_Signers__c> signerParse = (List<VCC_Signers__c>)System.JSON.deserialize(jsonInput, List<VCC_Signers__c>.class);
        
        if (signerParse.size() != 0) {
            
            List<VCC_Signers__c> existingSigner = [Select Id, Name From VCC_Signers__c];
            Map<String,VCC_Signers__c> existingSignerMap = new Map<String,VCC_Signers__c>();
            for (VCC_Signers__c signer : existingSigner) {
                existingSignerMap.put(signer.Name, signer);
            }
            
            List<VCC_Signers__c> signersList = new List<VCC_Signers__c>();
            
            for (VCC_Signers__c signer : signerParse) {
                if (!existingSignerMap.containsKey(signer.Name)) {
                    signersList.add(signer);
                }
            }
            
            try{
                if (signersList.size() != 0) {
                    insert signersList;
                    system.debug('-----Number of Signers Added:' + signersList.size());
                }        
            } 
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }  
        }     
    }
    
    public static void massSignersDelete() {
    	List<VCC_Signers__c> signersDelete = [SELECT ID From VCC_Signers__c];
        if(!signersDelete.isEmpty()) Database.delete(signersDelete);
    } 

    /*
		This method accepts a string value for the name ofthe static resource to query
		Needs to call a future method to avoid heap size error
		Can query for code sets to check for method success
	*/
    @AuraEnabled(cacheable=false)
    	public static void massCodeSetImport(String staticResourceName) {
       	StaticResource sr = [SELECT Id, Body, ContentType FROM StaticResource WHERE Name = :staticResourceName LIMIT 1];
		String jsonInput = sr.Body.toString();
        asyncCodeSetInsert(jsonInput);
    }  
    
    @future
	public static void asyncCodeSetInsert(String codeSetString) {
        try {
            List<CodeSet> existingCodeSet = [Select Id, Name From CodeSet];
            Map<String,CodeSet> existingCodeSetMap = new Map<String,CodeSet>();
            for (CodeSet cs : existingCodeSet) {
                existingCodeSetMap.put(cs.Name, cs);
            }
            
            List<CodeSet> codeSetList = new List<CodeSet>();
        	List<CodeSet> codeSetParse = (List<CodeSet>)System.JSON.deserialize(codeSetString, List<CodeSet>.class);        
            for (CodeSet cs : codeSetParse) {
                if (!existingCodeSetMap.containsKey(cs.Name)) {
                    if ((String)cs.RecordTypeId == 'VCC_Code_Set') {
                        cs.RecordTypeId = vccCodeSetRecordTypeId;
                    }
                    codeSetList.add(cs);
                }
            }
            
            if (codeSetList.size() != 0) {
            	insert codeSetList;    
            }
                                
            List<Code_Set_Event__e> codeSetEvents = new List<Code_Set_Event__e>();
            codeSetEvents.add(new Code_Set_Event__e(Status__c='Success'));
            List<Database.SaveResult> results = EventBus.publish(codeSetEvents);            
        } 
        catch(DmlException e){
        	    
            List<Code_Set_Event__e> codeSetEvents = new List<Code_Set_Event__e>();
            codeSetEvents.add(new Code_Set_Event__e(Status__c='Failure', Message__c=e.getMessage().Left(255)));
            List<Database.SaveResult> results = EventBus.publish(codeSetEvents);
        }
    }
    
    public static void deleteCodeSet() {
        List<CodeSet> deleteCodeSet = [Select Id From CodeSet];
        if(!deleteCodeSet.isEmpty()) Database.delete(deleteCodeSet);
    }
    
    @future
    public static void asyncDeleteCodeSet() {
        deleteCodeSet();
    }  

    @AuraEnabled(cacheable=false)
    public static void massCptToProgressNoteMappingImport() {    
        StaticResource sr = [SELECT Id, Body, ContentType FROM StaticResource WHERE Name = 'CPT_To_Progress_Note' LIMIT 1];
		String jsonInput = sr.Body.toString();
        Map<String, CPT_to_Progress_Note_Mapping__c> pnMapping = (Map<String, CPT_to_Progress_Note_Mapping__c>)System.JSON.deserialize(jsonInput, Map<String, CPT_to_Progress_Note_Mapping__c>.class);
        List<String> codeSetNames = new List<String>();
        for (String key : pnMapping.keySet()) {
			codeSetNames.add(key);
		}
        
        Map<String,CodeSet> codeSetMap = new Map<String,CodeSet>();
        for (CodeSet cs : [Select Name From CodeSet Where Name In :codeSetNames]) {
            codeSetMap.put(cs.Name, cs);
        }
        
        List<CPT_to_Progress_Note_Mapping__c> pnMappingList = new List<CPT_to_Progress_Note_Mapping__c>();
        
        List<CPT_to_Progress_Note_Mapping__c> cptToPnmSet = [Select Id, CPT_Code__c From CPT_to_Progress_Note_Mapping__c];
        Map<String,CPT_to_Progress_Note_Mapping__c> cptToPnmSetMap = new Map<String,CPT_to_Progress_Note_Mapping__c>();
        for (CPT_to_Progress_Note_Mapping__c pnm : cptToPnmSet) {
            cptToPnmSetMap.put(pnm.CPT_Code__c, pnm);
        }
        
        List<CPT_to_Progress_Note_Mapping__c> pnmList = new List<CPT_to_Progress_Note_Mapping__c>();

        for (String key : pnMapping.keySet()) {
            if (!cptToPnmSetMap.containsKey(codeSetMap.get(key).id)) {
                pnMapping.get(key).CPT_Code__c = codeSetMap.get(key).id;
                pnMappingList.add(pnMapping.get(key));
            }
		}
        
        try{
        	If (pnMappingList.size() != 0) {
            	insert pnMappingList;
        	}
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        } 
    }
    
    public static void massCptToProgressNoteMappingDelete() {
    	List<CPT_to_Progress_Note_Mapping__c> pnMappingList = [SELECT ID From CPT_to_Progress_Note_Mapping__c];
        if(!pnMappingList.isEmpty()) Database.delete(pnMappingList);
    }
    
    @AuraEnabled(cacheable=false)
    public static void customSettingAddendumImport() {   
    	StaticResource addSr = [SELECT Id, Body FROM StaticResource WHERE Name = 'VCC_Location_To_Addendum' LIMIT 1];          
    	String addJsonInput = addSr.Body.toString();
    	List<VCC_Location_to_Addendum_IEN_Mapping__c> addendumImportList = (List<VCC_Location_to_Addendum_IEN_Mapping__c>)System.JSON.deserialize(addJsonInput, List<VCC_Location_to_Addendum_IEN_Mapping__c>.class); 
    	Map<String, VCC_Location_to_Addendum_IEN_Mapping__c> addendumImportNameMap = new Map<String, VCC_Location_to_Addendum_IEN_Mapping__c>();
    	for(VCC_Location_to_Addendum_IEN_Mapping__c locToAdd : addendumImportList) {	 
     	addendumImportNameMap.put(locToAdd.Name, locToAdd);                                                                   
        system.debug('&&&&&&-+-Addendum List to Map: ' + addendumImportNameMap.keyset());                    
	    }
        List<String> addendumNamesList = new List <String>();                                                     
        for (String key : addendumImportNameMap.keyset()) {
          if(addendumImportNameMap.containsKey(key)) {
             addendumNamesList.add(key); 
             system.debug('%%%%%%%%% ' + addendumNamesList);
          }
        }                
        Map<String, VCC_Location_to_Addendum_IEN_Mapping__c> addendumExistingNameMap = new Map<String, VCC_Location_to_Addendum_IEN_Mapping__c>();                          
     	for (VCC_Location_to_Addendum_IEN_Mapping__c addendumsInOrg : [SELECT Name FROM VCC_Location_to_Addendum_IEN_Mapping__c WHERE Name In :addendumNamesList]) {       
             addendumExistingNameMap.put(addendumsInOrg.Name, addendumsInOrg);                  																	       
             system.debug('***********_ Size is: ' + addendumExistingNameMap.size());        										                                  	
        }
     	List<VCC_Location_to_Addendum_IEN_Mapping__c> addendumNameMappingList = new List<VCC_Location_to_Addendum_IEN_Mapping__c>();                                            
     	for (String key : addendumImportNameMap.keyset())  	{
        	if (!addendumExistingNameMap.containsKey(key)) {
              	addendumNameMappingList.add(addendumImportNameMap.get(key));   
      		} 												                    
     	}
        try{
			if (addendumNameMappingList.size() != 0) {
            	insert addendumNameMappingList;
     			system.debug('Number of Location to Addendum IEN Records Imported: ' + addendumNameMappingList.size());   
    		}
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
    }     
    
    @AuraEnabled(cacheable=false)
    public static void customSettingNoteImport() {
      	StaticResource noteSr = [SELECT Id, Body FROM StaticResource WHERE Name = 'Location_To_Note' LIMIT 1];
      	String noteJsonInput = noteSr.Body.toString();
      	List<Location_to_Note_IEN_Mapping__c> noteImportList = (List<Location_to_Note_IEN_Mapping__c>)System.JSON.deserialize(noteJsonInput, List<Location_to_Note_IEN_Mapping__c>.class);
      	Map<String, Location_to_Note_IEN_Mapping__c> noteImportNameMap = new Map<String, Location_to_Note_IEN_Mapping__c>();
      	for(Location_to_Note_IEN_Mapping__c locToNote : noteImportList) {	 
     		noteImportNameMap.put(locToNote.Name, locToNote);                                                                
        	system.debug('&&&&&&-+-Note List to Map: ' + noteImportNameMap.keyset());  
      	}
      	List<String> noteNamesList = new List <String>();                                                     
      	for (String key : noteImportNameMap.keyset()) {         
        	if (noteImportNameMap.containsKey(key)) {
              noteNamesList.add(key); 
              system.debug('%%%%%%%%% ' + noteNamesList);
      		}
      	}
      	Map<String, Location_to_Note_IEN_Mapping__c> noteExistingNameMap = new Map<String, Location_to_Note_IEN_Mapping__c>();                         
      	for (Location_to_Note_IEN_Mapping__c notesInOrg : [SELECT Name FROM Location_to_Note_IEN_Mapping__c WHERE Name In :noteNamesList]) {       
        	noteExistingNameMap.put(notesInOrg.Name, notesInOrg);                  																	       
        	system.debug('***********_ Size is: ' + noteExistingNameMap.size());        										                                	
      	}
      	List<Location_to_Note_IEN_Mapping__c> noteNameMappingList = new List<Location_to_Note_IEN_Mapping__c>();
      	for (String key : noteImportNameMap.keyset())  {
        	if (!noteExistingNameMap.containsKey(key)) {
            	noteNameMappingList.add(noteImportNameMap.get(key));          
      		} 												                    
      	}
        try{
      		if (noteNameMappingList.size() != 0) {
            	insert noteNameMappingList;
     			system.debug('Number of Location to Note IEN Records Imported: ' + noteNameMappingList.size());   
    		}
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
        
	}
    
    @AuraEnabled(cacheable=false)
    public static void massVistaUserImport() {    
        StaticResource sr = [SELECT Id, Body, ContentType FROM StaticResource WHERE Name = 'VCC_Vista_User' LIMIT 1];
		String jsonInput = sr.Body.toString();
        List<VCC_Vista_User__c> vistaUserParse = (List<VCC_Vista_User__c>)System.JSON.deserialize(jsonInput, List<VCC_Vista_User__c>.class);
        
        try{
            List<VCC_Vista_User__c> existingVistaUsers = [Select Id, VCC_StaffName__c From VCC_Vista_User__c];
            Map<String,VCC_Vista_User__c> existingVistaUsersMap = new Map<String,VCC_Vista_User__c>();
            for (VCC_Vista_User__c vu : existingVistaUsers) {
                existingVistaUsersMap.put(vu.VCC_StaffName__c, vu);
            }
            
       		List<VCC_Vista_User__c> newVistaUsers = new List<VCC_Vista_User__c>();
            
            for (VCC_Vista_User__c vu : vistaUserParse) {
                if (!existingVistaUsersMap.containsKey(vu.VCC_StaffName__c)) {
                    newVistaUsers.add(vu);
                }
            }
            
        	if (newVistaUsers.size() != 0) {
            	insert newVistaUsers;
            	system.debug('-----Number of Vista Users Added:' + newVistaUsers.size());
        	}    
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
    }
    
    public static void massVistaUserDelete() {
    	List<VCC_Vista_User__c> vistaUserDelete = [SELECT ID From VCC_Vista_User__c LIMIT 10000];
        
        if (vistaUserDelete.size() !=0) {
            delete vistaUserDelete;
            system.debug('----Number of Vista Users Deleted:' + vistaUserDelete.size());
        }
        else { 
            system.debug('All Vista Users have already been deleted');       
        }
    } 
    
    @AuraEnabled(cacheable=false)
    public static void createCustomSettingRecord() {
        List<VCC_Create_User_Personas__c> customSettingRecords = [SELECT Id from VCC_Create_User_Personas__c];
        if (customSettingRecords.isEmpty()) {
        	VCC_Create_User_Personas__c newCustomSettingRecord = new VCC_Create_User_Personas__c();
       		newCustomSettingRecord.Name = 'UserCheck';
        insert newCustomSettingRecord;
        }
    }
    
    @AuraEnabled(cacheable=false)
    public static void createTestUsers() {
        List<VCC_Create_User_Personas__c> createUserPersona = [Select Id, Create_User_Personas__c  From VCC_Create_User_Personas__c Limit 1];
        if (createUserPersona.size() != 0) {
    		if (!createUserPersona[0].Create_User_Personas__c) {
                System.Domain d      					   = System.DomainParser.parse(URL.getOrgDomainUrl());  //getting sandbox info
                // Manual Test Users
                User amsaPersona						   = new User(LastName = 'Test AMSA VAHC User', Email = 'mills_ryan@bah.com', Alias = 'testamsa', UserName = 'test.useramsa@vavet.gov.' + d.getSandboxName());
                User pharmIPersona						   = new User(LastName = 'Test PharmI VAHC User', Email = 'mills_ryan@bah.com', Alias = 'PharmI', UserName = 'test.userpharmi@vavet.gov.' + d.getSandboxName());
                User pharmIIPersona						   = new User(LastName = 'Test PharmII VAHC User', Email = 'mills_ryan@bah.com', Alias = 'PharmII', UserName = 'test.userpharmii@vavet.gov.' + d.getSandboxName());
                User pharmIIIPersona					   = new User(LastName = 'Test PharmIII VAHC User', Email = 'mills_ryan@bah.com', Alias = 'PharmIII', UserName = 'test.userpharmiii@vavet.gov.' + d.getSandboxName());                
                User rnPersona							   = new User(LastName = 'Test RN VAHC User', Email = 'mills_ryan@bah.com', Alias = 'TestRN', UserName = 'test.userrn@vavet.gov.' + d.getSandboxName());
                User supervisorPersona					   = new User(LastName = 'Test VAHC Clinical Supervisor', Email = 'mills_ryan@bah.com', Alias = 'ttest', UserName = 'test.userclinicalsupervisor@vavet.gov.' + d.getSandboxName());
                User msaAdminPersona                       = new User(LastName = 'Test VAHC MSA Adm Officer', Email = 'mills_ryan@bah.com', Alias = 'admofc', UserName = 'test.useradmofc@vavet.gov.' + d.getSandboxName());
                User tierIPersona                          = new User(LastName = 'Test VAHC TierI Adm Officer', Email = 'mills_ryan@bah.com', Alias = 'tier1adm', UserName = 'test.usertier1@vavet.gov.' + d.getSandboxName());
                User pharmISupervisorPersona			   = new User(LastName = 'Test PharmI Supervisor VAHC User', Email = 'mills_ryan@bah.com', Alias = 'PharmI S', UserName = 'test.userpharmisupervisor@vavet.gov.' + d.getSandboxName());
                User pharmIISupervisorPersona			   = new User(LastName = 'Test PharmII Supervisor VAHC User', Email = 'mills_ryan@bah.com', Alias = 'PharmIIS', UserName = 'test.userpharmiisupervisor@vavet.gov.' + d.getSandboxName());
                User pharmIIISupervisorPersona			   = new User(LastName = 'Test PharmIII Supervisor VAHC User', Email = 'mills_ryan@bah.com', Alias = 'PhrmIIIS', UserName = 'test.userpharmiiisupervisor@vavet.gov.' + d.getSandboxName());
                User testSotVahcPersona					   = new User(LastName = 'Test SOT VAHC User', Email = 'mills_ryan@bah.com', Alias = 'TSOT', UserName = 'test.sot@vavet.gov.' + d.getSandboxName());
                //Tele EC Users
                User teleECMPPersona                       = new User(FirstName = 'Tele EC', LastName = 'Doctor Test', Email = 'testuatt.doctor@bah.com', UserName = 'testuatt.doctor@bah.com' + d.getSandboxName(), Alias = 'TECMP');
                User teleECRNPersona                       = new User(FirstName = 'Tele EC', LastName = 'Nurse Test', Email = 'testuatt.nurse@bah.com', UserName = 'testuatt.nurse@bah.com' + d.getSandboxName(), Alias = 'TECRN');
                
                
                List<User> testUserList                    = new List<User>();
                testUserList.add(amsaPersona);
                testUserList.add(pharmIPersona);
                testUserList.add(pharmIIPersona);
                testUserList.add(pharmIIIPersona);
                testUserList.add(rnPersona);
                testUserList.add(supervisorPersona);
                testUserList.add(msaAdminPersona);
                testUserList.add(tierIPersona);
                testUserList.add(pharmISupervisorPersona);
                testUserList.add(pharmIISupervisorPersona);
                testUserList.add(pharmIIISupervisorPersona);
                testUserList.add(testSotVahcPersona);
                testUserList.add(teleECMPPersona);
                testUserList.add(teleECRNPersona);


                for (User u : testUserList) {
                    u.ProfileId				    		   = vavetBaseProfile;
                    u.FederationIdentifier 				   = u.Username;
                    u.CommunityNickname          		   = u.Alias;
                    u.CallCenterId 						   = callCenterId;
                    u.IsActive  			       		   = true;
                    u.Division  				   		   = 'VISN 8'; 
                    u.TimeZoneSidKey               		   = 'America/New_York';
                    u.EmailEncodingKey             		   = 'ISO-8859-1';
                    u.LocaleSidKey                 	       = 'en_US';
                    u.LanguageLocaleKey            	       = 'en_US';
                    u.UserPermissionsSFContentUser 		   = true;	
                }               
                
                try{
                    List<User> existingTestUsers = [SELECT Id, UserName FROM User];
                    Map<String, User> existingTestUsersMap = new Map<String, User>();
                    System.debug('existingTestUsers ====> ' + existingTestUsers);
                    for (User testUser : existingTestUsers) {
                        existingTestUsersMap.put(testUser.UserName, testUser);
                    }
                    
                    List<User> newTestUsers = new List<User>();
                    for (User testUsers : testUserList) {
                        if (!existingTestUsersMap.containsKey(testUsers.UserName)) {
                            newTestUsers.add(testUsers);
                        }
                    }
                    
                    if (newTestUsers.size() != 0) {
                        insert newTestUsers;
                        System.debug('Number of Test Users Added: ' + newTestUsers.size());
                        System.debug('newTestUsers ====> ' + newTestUsers);
                    }
                } 
                catch (Exception ex) {
                    system.debug('ERROR:' + ex.getMessage());
                    throw new AuraHandledException(ex.getMessage());
                }
            }
        }
    }
    
    @AuraEnabled(cacheable=false)
	public static void assignTestUsersPermissions() {
                List<User> testPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Test AMSA VAHC User', 'Test PharmI VAHC User', 'Test PharmII VAHC User', 'Test PharmIII VAHC User', 'Test VAHC Clinical Supervisor',
                                             'Test VAHC MSA Adm Officer', 'Test VAHC TierI Adm Officer', 'Test PharmI Supervisor VAHC User', 'Test PharmII Supervisor VAHC User', 'Test PharmIII Supervisor VAHC User')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testPersonaList) {
                    userNameToUserMap.put(u.LastName, u);
                }
				                
                //grab users and names I need to assign data to, create a map the key user the user name new List <User> testAmsaPersona hard code list of permission set ids and public group ids
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test AMSA VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetTaskTab, permissionSetPACTDetails}, 
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupWellhive, permissionSetGroupITUU}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmI VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIPN},
                                         new List<Id>{permissionSetGroupPharmI, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmII VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIIPN},
                                         new List<Id>{permissionSetGroupPharmII, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmIII VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{permissionSetGroupPharmIII, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC Clinical Supervisor')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupSupervisor, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, vahcLeadersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC MSA Adm Officer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupMSAAdmin, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                System.debug('userNameToUserMap ====> ' + userNameToUserMap);
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC TierI Adm Officer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupMSAAdmin, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());   		
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmI Supervisor VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{permissionSetGroupITUU}, //permissionSetGroupVCCTierISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());                             
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmII Supervisor VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{permissionSetGroupITUU}, //permissionSetGroupVCCTierIISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());  
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmIII Supervisor VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{permissionSetGroupITUU}, //permissionSetGroupVCCTierIIISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());     
    }
        
    @AuraEnabled(cacheable=false)
	public static void assignTestSotRnMdUserPermissions() {
                List<User> testPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Test SOT VAHC User', 'Test RN VAHC User') OR Alias IN ('TECMP', 'TECRN')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testPersonaList) {
                    userNameToUserMap.put(u.LastName, u);
                }        
        
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test SOT VAHC User')}, new List<Id>{permissionSetSotUser}, //DTC View Setup and Config
                                        new List<Id>{permissionSetGroupITUUAdmin},
                                        new List<Id>{sotUsersPublicGroup},
                                        new List<Id>());   
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Doctor Test')}, new List<Id>{permissionSetHealthCloud},
                                        new List<Id>{permissionSetGroupTeleMP},
                                        new List<Id>{vahcBaseUsersPublicGroup, teleECNational, teleECPublicGroup},
                                        new List<Id>{healthCloudPlatformPSL, healthCloud});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Nurse Test')}, new List<Id>{permissionSetHealthCloud},
                                        new List<Id>{permissionSetGroupTeleECRN},
                                        new List<Id>{vahcBaseUsersPublicGroup, teleECNational, teleECPublicGroup},
                                        new List<Id>{healthCloudPlatformPSL, healthCloud});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test RN VAHC User')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetTeleEcCcrn},
                                        new List<Id>{permissionSetGroupRN, permissionSetGroupITUU},
                                        new List<Id>{vahcBaseUsersPublicGroup},
                                        new List<Id>());
    }        
    
    @AuraEnabled(cacheable=false)
    public static void createAutomationTestUsers() {
        List<VCC_Create_User_Personas__c> createUserPersona = [SELECT Id, Create_User_Personas__c  FROM VCC_Create_User_Personas__c Limit 1];
        if (createUserPersona.size() != 0) {
    		if (!createUserPersona[0].Create_User_Personas__c) {
                System.Domain d      					   = System.DomainParser.parse(URL.getOrgDomainUrl()); 
                // Automation Test User Field Mapping
                User automationAmsaVahcPersona			     = new User(LastName = 'Automation AMSA VAHC', UserName = 'automation.amsa@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT AMSA');
                User automationMpVahcPersona			     = new User(LastName = 'Automation MP VAHC', UserName = 'automation.mp@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT MP');
                User automationPharmIVahcPersona		     = new User(LastName = 'Automation Pharm I VAHC', UserName = 'automation.pharmi@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT PhI');
                User automationRnVahcPersona			     = new User(LastName = 'Automation RN VAHC', UserName = 'automation.rn@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT RN');
                User automationClinicalSupervisorPersona     = new User(LastName = 'Automation Clinical Supervisor', UserName = 'automation.clinsuper@vavet.gov' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT CLINS');
                User automationMsaAdmOfficerPersona		     = new User(LastName = 'Automation MSA Adm Officer', UserName = 'automation.msaadmofficer@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT MADOF');
                User automationTierIAdmOfficerPersona	     = new User(LastName = 'Automation Tier I Adm Officer', UserName = 'automation.tieriadmofficer@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT TierI');
                User automationSysAdminPersona               = new User(LastName = 'Automation Sys Admin', UserName = 'automation.sysadm@vavet.gov.' + d.getSandboxName(), ProfileId = sysAdminProfile, Alias = 'AT SysAd');
				User automationVISN8CAPersona			     = new User(LastName = 'Automation CA VISN8', UserName = 'automation.cavisn8@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'ATCA');
                User automationPharmIIVahcPersona		     = new User(LastName = 'Automation Pharm II VAHC', UserName = 'automation.pharmii@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT PhII');
                User automationPharmIIIVahcPersona		     = new User(LastName = 'Automation Pharm III VAHC', UserName = 'automation.pharmiii@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT PhIII');
                User automationPharmISupervisorVahcPersona   = new User(LastName = 'Automation Pharm I Supervisor VAHC', UserName = 'automation.pharmisupervisor@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT PIS');
                User automationPharmIISupervisorVahcPersona  = new User(LastName = 'Automation Pharm II Supervisor VAHC', UserName = 'automation.pharmiisupervisor@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT PIIS');
                User automationPharmIIISupervisorVahcPersona = new User(LastName = 'Automation Pharm III Supervisor VAHC', UserName = 'automation.pharmiiisupervisor@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT PIIIS');
                User automationSotUser						 = new User(LastName = 'Automation SOT User', UserName = 'automation.sot@vavet.gov.' + d.getSandboxName(), ProfileId = vavetBaseProfile, Alias = 'AT SOT');
        
                
                List<User> testAutomationUserList          = new List<User>();
                testAutomationUserList.add(automationAmsaVahcPersona);
                testAutomationUserList.add(automationMpVahcPersona);
                testAutomationUserList.add(automationPharmIVahcPersona);
                testAutomationUserList.add(automationRnVahcPersona);
                testAutomationUserList.add(automationClinicalSupervisorPersona);
                testAutomationUserList.add(automationMsaAdmOfficerPersona);
                testAutomationUserList.add(automationTierIAdmOfficerPersona);
                testAutomationUserList.add(automationSysAdminPersona);
                testAutomationUserList.add(automationVISN8CAPersona);
                testAutomationUserList.add(automationPharmIIVahcPersona);
                testAutomationUserList.add(automationPharmIIIVahcPersona);
                testAutomationUserList.add(automationPharmISupervisorVahcPersona);
                testAutomationUserList.add(automationPharmIISupervisorVahcPersona);
                testAutomationUserList.add(automationPharmIIISupervisorVahcPersona);
                testAutomationUserList.add(automationSotUser);

 
                for (User u : testAutomationUserList) {
                    u.FederationIdentifier 				   = u.Username;
                    u.Email 							   = 'carrion_carlos@bah.com';
                    u.CommunityNickname          		   = u.Alias;
                    u.CallCenterId 						   = callCenterId;
                    u.IsActive  			       		   = true;
                    u.Division  				   		   = 'VISN 8'; 
                    u.TimeZoneSidKey               		   = 'America/New_York';
                    u.EmailEncodingKey             		   = 'ISO-8859-1';
                    u.LocaleSidKey                 		   = 'en_US';
                    u.LanguageLocaleKey            		   = 'en_US';
                    u.UserPermissionsSFContentUser 		   = true;
                    
                }
                
                try{
                    List<User> existingAutomationTestUsers = [SELECT Id, UserName FROM User];
                    Map<String, User> existingAutomationTestUsersMap = new Map<String, User>();
                    System.debug('existingAutomationTestUsers ====> ' + existingAutomationTestUsers);
                    for (User automationTestUser : existingAutomationTestUsers) {
                        existingAutomationTestUsersMap.put(automationTestUser.UserName, automationTestUser);
                    }
                    
                    List<User> newAutomationTestUsers = new List<User>();
                    for (User automationTestUsers : testAutomationUserList) {
                        if (!existingAutomationTestUsersMap.containsKey(automationTestUsers.UserName)) {
                            newAutomationTestUsers.add(automationTestUsers);
                        }
                    }
                    
                    if (newAutomationTestUsers.size() != 0) {
                        insert newAutomationTestUsers;
                        System.debug('Number of AutomationTest Users Added: ' + newAutomationTestUsers.size());
                        System.debug('newAutomationTestUsers ====> ' + newAutomationTestUsers);
                    }
                }
                
                catch (Exception ex) {
                    system.debug('ERROR:' + ex.getMessage());
                    throw new AuraHandledException(ex.getMessage());
                }
            }
        }
    }
    
    @AuraEnabled(cacheable=false)
	public static void assignAutomationUserPermissions() {               
               List<User> testAutomationPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Automation AMSA VAHC', 'Automation RN VAHC', 'Automation Clinical Supervisor',
                               'Automation MSA Adm Officer', 'Automation Tier I Adm Officer', 'Automation MP VAHC', 'Automation Sys Admin', 'Automation CA VISN8', 'Automation SOT User')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testAutomationPersonaList) {
                    userNameToUserMap.put(u.LastName, u);
                }
                
                //grab users and names I need to assign data to, create a map the key user the user name new List <User> testAmsaPersona hard code list of permission set ids and public group ids
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation AMSA VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetTaskTab, permissionSetPACTDetails}, 
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupWellhive}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation RN VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetTeleEcCcrn},
                                         new List<Id>{permissionSetGroupRN},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Clinical Supervisor')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupSupervisor},
                                         new List<Id>{vahcBaseUsersPublicGroup, vahcLeadersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation MSA Adm Officer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupMSAAdmin},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Tier I Adm Officer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupMSAAdmin},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());                
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation MP VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupMP, permissionSetGroupVCVMPAppt}, //permissionSetGroupVCCTierIISup
                                         new List<Id>{vahcBaseUsersPublicGroup, vahcMPPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});   
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Sys Admin')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMP, permissionSetGroupMSAAdmin, permissionSetGroupRN, permissionSetGroupSupervisor, permissionSetGroupPharmI, permissionSetGroupTierIAdmin, permissionSetGroupPharmII, permissionSetGroupPharmIII},
                                         new List<Id>(),
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation CA VISN8')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupCA},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation SOT User')}, new List<Id>{permissionSetSotUser},
                                         new List<Id>{}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());
    }
    
    @AuraEnabled(cacheable=false)
	public static void assignPharmAutomationUserPermissions() {               
               List<User> testAutomationPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Automation Pharm I VAHC', 'Automation Pharm II VAHC', 'Automation Pharm III VAHC', 'Automation Pharm I Supervisor VAHC', 
                                'Automation Pharm II Supervisor VAHC', 'Automation Pharm III Supervisor VAHC')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testAutomationPersonaList) {
                    userNameToUserMap.put(u.LastName, u);
                }
        
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Pharm III VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{permissionSetGroupPharmIII},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Pharm I Supervisor VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{}, //permissionSetGroupVCCTierISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Pharm II Supervisor VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{}, //permissionSetGroupVCCTierIISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Pharm III Supervisor VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>{}, //permissionSetGroupVCCTierIIISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Pharm II VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails},
                                         new List<Id>(), //permissionSetGroupVCCTierIISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());   
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Automation Pharm I VAHC')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIPN},
                                         new List<Id>{permissionSetGroupPharmI},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
    }    


  // VCV Users 
    @AuraEnabled(cacheable=false)
    public static void createVCVAndQueueTestUsers() {
        List<VCC_Create_User_Personas__c> createUserPersona = [SELECT Id, Create_User_Personas__c  FROM VCC_Create_User_Personas__c Limit 1];
        if (createUserPersona.size() != 0) {
    		if (!createUserPersona[0].Create_User_Personas__c) {
                System.Domain d = System.DomainParser.parse(URL.getOrgDomainUrl());
                // CA Users               
                User visn8TestCA    	= new User(FirstName = 'VISN 8 Test',  LastName = 'Calendar Administrator', Email = 'visn8ca@bah.com.' + d.getSandboxName(),  Alias = 'VISN8CA',  Division = 'VISN 8');
                User visn99TestCA   	= new User(FirstName = 'VISN 99 Test', LastName = 'Calendar Administrator', Email = 'visn99@bah.com.' + d.getSandboxName(), Alias = 'VISN99CA', Division = 'VISN 99');
                User visn7TestCA		= new User(FirstName = 'VISN 7 Test', LastName = 'Calendar Administrator', Email = 'visn7ca@bah.com.' + d.getSandboxName(), Alias = 'VISN7CA', Division = 'VISN 7');
                User visn2TestCA		= new User(FirstName = 'VISN 2 Test', LastName = 'Calendar Administrator', Email = 'visn2ca@bah.com.' + d.getSandboxName(), Alias = 'VISN2CA', Division = 'VISN 2');
                User visn1TestCA		= new User(FirstName = 'VISN 1 Test', LastName = 'Calendar Administrator', Email = 'visn1ca@bah.com.' + d.getSandboxName(), Alias = 'VISN1CA', Division = 'VISN 1');
                // MSA Users
                User visn8TestMSA		= new User(FirstName = 'VISN 8 Test',  LastName = 'MSA', Email = 'visn8.testmsa@bah.com.'  + d.getSandboxName(), Alias = 'VISN8MSA',  Division = 'VISN 8' );
                User visn99TestMSA  	= new User(FirstName = 'VISN 99 Test', LastName = 'MSA', Email = 'visn99.testmsa@bah.com.' + d.getSandboxName(), Alias = 'VIS99MSA', Division = 'VISN 99');
                // MP Users
                User visn8TestMP    	= new User(FirstName = 'VISN 8 Test',  LastName = 'MP User', Email = 'test.visn8mp@bah.com.' + d.getSandboxName(),  Alias = 'VISN8MP',  Division = 'VISN 8',  Department = 'VAHC Medical Provider');
                User visn99TestMP       = new User(FirstName = 'VISN 99 Test', LastName = 'MP User', Email = 'test.visn99mp@bah.com.' + d.getSandboxName(),  Alias = 'VISN99MP', Division = 'VISN 99', Department = 'VAHC Medical Provider');
                //User visn12TestMP		= new User(FirstName = 'VISN 1 and 2 Test',  LastName = 'MP User', Email = 'test.multivisn12@bah.com.' + d.getSandboxName(),  Alias = 'VISN12MP',  Division = 'VISN 2', Department = 'VAHC Medical Provider');
                User visn87TestMP  	= new User(FirstName = 'VISN 8 and 7 Test',  LastName = 'MP User', Email = 'test.multivisn78@bah.com.' + d.getSandboxName(),  Alias = 'VISN78MP',  Division = 'VISN 8', Department = 'VAHC Medical Provider');
                // Lead MSA Users
                User visn8TestLeadMSA	= new User(FirstName = 'VISN 8 Test',  LastName = 'Lead MSA', Email = 'visn8.testleadmsa@bah.com',  Alias = 'VIS8LEAD',  Division = 'VISN 8' );
                User visn99TestLeadMSA  = new User(FirstName = 'VISN 99 Test', LastName = 'Lead MSA', Email = 'visn99.testleadmsa@bah.com', Alias = 'VI99LEAD', Division = 'VISN 99');
                
                // QUEUE Users
    		    User rnQueue = new User(FirstName = 'RN Queue', LastName = 'Test User', Email = 'test.rnqueue@bah.com.reg', Alias = 'RNQT');
    	        User msaQueue = new User(FirstName = 'MSA Queue', LastName = 'Test User', Email = 'test.msaqueue@bah.com.reg', Alias = 'MSAQT');
                
                // Total VCV User List for Shared User Field Values/Perm Set Licenses
                List<User> testVCVUserList               = new List<User>();
                testVCVUserList.add(visn8TestCA);
                testVCVUserList.add(visn99TestCA);
                testVCVUserList.add(visn7TestCA);
                testVCVUserList.add(visn2TestCA);
                testVCVUserList.add(visn1TestCA);
                testVCVUserList.add(visn99TestMSA);
                testVCVUserList.add(visn8TestMSA);
                testVCVUserList.add(visn8TestLeadMSA);
                testVCVUserList.add(visn99TestLeadMSA);
                testVCVUserList.add(visn8TestMP);
                testVCVUserList.add(visn99TestMP);
                //testVCVUserList.add(visn12TestMP);
                testVCVUserList.add(visn87TestMP);
                testVCVUserList.add(rnQueue);
		        testVCVUserList.add(msaQueue);

                for (User u : testVCVUserList) {
                    u.Username							   = u.Email;
                    System.debug('username' + u.Username);
					u.ProfileId							   = vavetBaseProfile;
					u.FederationIdentifier 				   = u.Username;
                    u.CommunityNickname          		   = u.Alias;
                    u.CallCenterId 						   = callCenterId;
                    u.IsActive  			       		   = true; 
                    u.TimeZoneSidKey               		   = 'America/New_York';
                    u.EmailEncodingKey             		   = 'ISO-8859-1';
                    u.LocaleSidKey                 		   = 'en_US';
                    u.LanguageLocaleKey            		   = 'en_US';
                    u.UserPermissionsSFContentUser 		   = true;             
                }
                
                try{
                    List<User> existingVCVUsers = [SELECT Id, UserName FROM User];
                    Map<String, User> existingVCVUsersMap = new Map<String, User>();
                    System.debug('existingVCVUsers ====> ' + existingVCVUsers);
                    for (User vcvUser : existingVCVUsers) {
                        existingVCVUsersMap.put(vcvUser.UserName, vcvUser);
                    }
                    
                    List<User> newVCVUsers = new List<User>();
                    for (User newVCVUser : testVCVUserList) {
                        if (!existingVCVUsersMap.containsKey(newVCVUser.UserName)) {
                        System.debug('existingVCVUsersMap ====> ' + existingVCVUsersMap);
						newVCVUsers.add(newVCVUser);
                        }
                    }
                    
                    if (newVCVUsers.size() != 0) {
                        System.debug('newVCVUsers ====> ' + newVCVUsers);
                        insert newVCVUsers;
                        System.debug('Number of VCV Users Added: ' + newVCVUsers.size());
                    }
                } 
                catch (Exception ex) {
                    system.debug('ERROR:' + ex.getMessage());
                    throw new AuraHandledException(ex.getMessage());
                }
            }
        }
    }
    
    //Create Training Mode Test Users
    @AuraEnabled(cacheable=false)
    public static void createTrainingModeTestUsers() {
        List<VCC_Create_User_Personas__c> createUserPersona = [Select Id, Create_User_Personas__c  From VCC_Create_User_Personas__c Limit 1];
        if (createUserPersona.size() != 0) {
    		if (!createUserPersona[0].Create_User_Personas__c) {
                System.Domain d      					= System.DomainParser.parse(URL.getOrgDomainUrl());  //getting sandbox info
                // Manual Test Users
                User amsaTrainerPersona					= new User(LastName = 'Test AMSA VAHC Trainer', Alias = 'trnramsa', UserName = 'test.useramsatrainer@vavet.gov.' + d.getSandboxName());
                User amsaTraineePersona					= new User(LastName = 'Test AMSA VAHC Trainee', Alias = 'trneamsa', UserName = 'test.useramsatrainee@vavet.gov.' + d.getSandboxName());
                User pharmITrainerPersona				= new User(LastName = 'Test PharmI VAHC Trainer', Alias = 'Pitrnr', UserName = 'test.pharmitrainer@vavet.gov.' + d.getSandboxName());
                User pharmITraineePersona				= new User(LastName = 'Test PharmI VAHC Trainee', Alias = 'Pitrnee', UserName = 'test.pharmitrainee@vavet.gov.' + d.getSandboxName());
                User pharmIITrainerPersona				= new User(LastName = 'Test PharmII VAHC Trainer', Alias = 'Piitrnr', UserName = 'test.pharmiitrainer@vavet.gov.' + d.getSandboxName());
                User pharmIITraineePersona				= new User(LastName = 'Test PharmII VAHC Trainee', Alias = 'Piitrnee', UserName = 'test.pharmiitrainee@vavet.gov.' + d.getSandboxName());
                User pharmIIITrainerPersona				= new User(LastName = 'Test PharmIII VAHC Trainer', Alias = 'Piiitrnr', UserName = 'test.pharmiiitrainer@vavet.gov.' + d.getSandboxName()); 
                User pharmIIITraineePersona				= new User(LastName = 'Test PharmIII VAHC Trainee', Alias = 'Piiitrne', UserName = 'test.pharmiiitrainee@vavet.gov.' + d.getSandboxName()); 
                User rnTrainerPersona					= new User(LastName = 'Test RN VAHC Trainer', Alias = 'RNtrnr', UserName = 'test.rntrainer@vavet.gov.' + d.getSandboxName());
                User rnTraineePersona					= new User(LastName = 'Test RN VAHC Trainee', Alias = 'RNtrnee', UserName = 'test.rntrainee@vavet.gov.' + d.getSandboxName());
                User supervisorTrainerPersona			= new User(LastName = 'Test VAHC Clinical Supervisor Trainer', Alias = 'CStrnr', UserName = 'test.csupervisortrainer@vavet.gov.' + d.getSandboxName());
                User supervisorTraineePersona			= new User(LastName = 'Test VAHC Clinical Supervisor Trainee', Alias = 'CStrnee', UserName = 'test.csupervisortrainee@vavet.gov.' + d.getSandboxName());
                User msaAdminTrainerPersona				= new User(LastName = 'Test VAHC MSA Adm Off Trainer', Alias = 'AdOFtrnr', UserName = 'test.admofctrainer@vavet.gov.' + d.getSandboxName());
                User msaAdminTraineePersona				= new User(LastName = 'Test VAHC MSA Adm Off Trainee', Alias = 'AdOFtrne', UserName = 'test.admofctrainee@vavet.gov.' + d.getSandboxName());
                User tierITrainerPersona				= new User(LastName = 'Test VAHC T1 Adm Off Trainer', Alias = 't1atrnr', UserName = 'test.tier1trainer@vavet.gov.' + d.getSandboxName());
                User tierITraineePersona				= new User(LastName = 'Test VAHC T1 Adm Off Trainee', Alias = 't1atrnee', UserName = 'test.tier1trainee@vavet.gov.' + d.getSandboxName());
                User pharmISupervisorTrainerPersona		= new User(LastName = 'Test PharmI Supervisor VAHC Trainer', Alias = 'Pistrnr', UserName = 'test.pharmisupertrnr@vavet.gov.' + d.getSandboxName());
                User pharmISupervisorTraineePersona		= new User(LastName = 'Test PharmI Supervisor VAHC Trainee', Alias = 'Pistrnee', UserName = 'test.pharmisupertrnee@vavet.gov.' + d.getSandboxName());
                User mpTrainerPersona			   		= new User(LastName = 'Test MP VAHC Trainer', Alias = 'MPtrnr', UserName = 'test.mptrainer@vavet.gov.' + d.getSandboxName());
                User mpTraineePersona			   		= new User(LastName = 'Test MP VAHC Trainee', Alias = 'MPtrnee', UserName = 'test.mptrainee@vavet.gov.' + d.getSandboxName());
                User caTrainerPersona					= new User(LastName = 'Test CA VAHC Trainer',  Alias = 'CAtrnr', UserName = 'test.catrainer@vavet.gov.' + d.getSandboxName());
                User caTraineePersona					= new User(LastName = 'Test CA VAHC Trainee',  Alias = 'Catrne', UserName = 'test.catrainee@vavet.gov.' + d.getSandboxName());

                List<User> trainingModeTestUsersList                    = new List<User>();
                trainingModeTestUsersList.add(amsaTrainerPersona);
                trainingModeTestUsersList.add(amsaTraineePersona);
                trainingModeTestUsersList.add(pharmITrainerPersona);
                trainingModeTestUsersList.add(pharmITraineePersona);
                trainingModeTestUsersList.add(pharmIITrainerPersona);
                trainingModeTestUsersList.add(pharmIITraineePersona);
                trainingModeTestUsersList.add(pharmIIITrainerPersona);
                trainingModeTestUsersList.add(pharmIIITraineePersona);
                trainingModeTestUsersList.add(rnTrainerPersona);
                trainingModeTestUsersList.add(rnTraineePersona);
                trainingModeTestUsersList.add(supervisorTrainerPersona);
                trainingModeTestUsersList.add(supervisorTraineePersona);                
                trainingModeTestUsersList.add(msaAdminTrainerPersona);
                trainingModeTestUsersList.add(msaAdminTraineePersona);
                trainingModeTestUsersList.add(tierITrainerPersona);
                trainingModeTestUsersList.add(tierITraineePersona);
                trainingModeTestUsersList.add(pharmISupervisorTrainerPersona);
                trainingModeTestUsersList.add(pharmISupervisorTraineePersona);
                trainingModeTestUsersList.add(mpTrainerPersona);
                trainingModeTestUsersList.add(mpTraineePersona);
                trainingModeTestUsersList.add(caTrainerPersona);
                trainingModeTestUsersList.add(caTraineePersona);


                for (User u : trainingModeTestUsersList) {
                    u.Email     					       = 'mills_ryan@bah.com'; 
                    u.ProfileId				    		   = vavetBaseProfile;
                    u.FederationIdentifier 				   = u.Username;
                    u.CommunityNickname          		   = u.Alias;
                    u.CallCenterId 						   = callCenterId;
                    u.IsActive  			       		   = true;
                    u.Division  				   		   = 'VISN 8'; 
                    u.TimeZoneSidKey               		   = 'America/New_York';
                    u.EmailEncodingKey             		   = 'ISO-8859-1';
                    u.LocaleSidKey                 	       = 'en_US';
                    u.LanguageLocaleKey            	       = 'en_US';
                    u.UserPermissionsSFContentUser 		   = true;	
                }               
                
                try{
                    List<User> existingTestUsers = [SELECT Id, UserName FROM User];
                    Map<String, User> existingTestUsersMap = new Map<String, User>();
                    System.debug('existingTestUsers ====> ' + existingTestUsers);
                    for (User testUser : existingTestUsers) {
                        existingTestUsersMap.put(testUser.UserName, testUser);
                    }
                    
                    List<User> newTestUsers = new List<User>();
                    for (User testUsers : trainingModeTestUsersList) {
                        if (!existingTestUsersMap.containsKey(testUsers.UserName)) {
                            newTestUsers.add(testUsers);
                        }
                    }
                    
                    if (newTestUsers.size() != 0) {
                        insert newTestUsers;
                        System.debug('Number of Test Users Added: ' + newTestUsers.size());
                        System.debug('newTestUsers ====> ' + newTestUsers);
                    }
                } 
                catch (Exception ex) {
                    system.debug('ERROR:' + ex.getMessage());
                    throw new AuraHandledException(ex.getMessage());
                }
            }
        }
    }
    
    @AuraEnabled(cacheable=false)
	public static void assignTrainingModeTestUsersPermissions() {
                List<User> trainingModeTestUsersPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Test AMSA VAHC Trainer', 'Test AMSA VAHC Trainee', 'Test VAHC Clinical Supervisor Trainer', 'Test VAHC Clinical Supervisor Trainee', 'Test VAHC MSA Adm Off Trainer', 
                                                                                                                'Test VAHC MSA Adm Off Trainee', 'Test VAHC T1 Adm Off Trainer', 'Test VAHC T1 Adm Off Trainee')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : trainingModeTestUsersPersonaList) {
                    userNameToUserMap.put(u.LastName, u);
                }
				                
                //grab users and names I need to assign data to, create a map the key user the user name new List <User> testAmsaPersona hard code list of permission set ids and public group ids
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test AMSA VAHC Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetTaskTab, permissionSetPACTDetails, permissionSetVccTrainer}, 
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupWellhive, permissionSetGroupITUU}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test AMSA VAHC Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetTaskTab, permissionSetPACTDetails, permissionSetVccTrainee}, 
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupWellhive, permissionSetGroupITUU}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC Clinical Supervisor Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupSupervisor, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, vahcLeadersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC Clinical Supervisor Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupSupervisor, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, vahcLeadersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC MSA Adm Off Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupMSAAdmin, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC MSA Adm Off Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupMSAAdmin, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC T1 Adm Off Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupMSAAdmin, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());   		
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test VAHC T1 Adm Off Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetAccountTab, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupMSAAdmin, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());   
    }
    
    @AuraEnabled(cacheable=false)
	public static void assignPharmTrainingModeTestUsersPermissions() {
                List<User> trainingModePharmTestUsersPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Test AMSA VAHC Trainer', 'Test AMSA VAHC Trainee', 'Test PharmI VAHC Trainer', 'Test PharmI VAHC Trainee', 'Test PharmII VAHC Trainer', 'Test PharmII VAHC Trainee', 'Test PharmIII VAHC Trainer',
                                             'Test PharmIII VAHC Trainee', 'Test RN VAHC Trainer', 'Test RN VAHC Trainee', 'Test VAHC Clinical Supervisor Trainer', 'Test VAHC Clinical Supervisor Trainee', 'Test VAHC MSA Adm Off Trainer', 'Test VAHC MSA Adm Off Trainee', 'Test VAHC T1 Adm Off Trainer',
                                              'Test VAHC T1 Adm Off Trainee', 'Test PharmI Supervisor VAHC Trainer', 'Test PharmI Supervisor VAHC Trainee')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User pu : trainingModePharmTestUsersPersonaList) {
                    userNameToUserMap.put(pu.LastName, pu);
                }
       
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmI VAHC Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIPN, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupPharmI, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmI VAHC Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIPN, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupPharmI, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmII VAHC Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIIPN, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupPharmII, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmII VAHC Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetvahcWriteTierIIPN, permissionSetVCCTrainee},
                                         new List<Id>{permissionSetGroupPharmII, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmIII VAHC Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupPharmIII, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmIII VAHC Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupPharmIII, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmI Supervisor VAHC Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupITUU}, //permissionSetGroupVCCTierISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test PharmI Supervisor VAHC Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupITUU}, //permissionSetGroupVCCTierISup
                                         new List<Id>{vahcBaseUsersPublicGroup, pharmacySupePublicGroup},
                                         new List<Id>()); 
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test RN VAHC Trainer')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetTeleEcCcrn, permissionSetVccTrainer},
                                         new List<Id>{permissionSetGroupRN, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test RN VAHC Trainee')}, new List<Id>{permissionSetHealthCloud, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetPACTDetails, permissionSetTeleEcCcrn, permissionSetVccTrainee},
                                         new List<Id>{permissionSetGroupRN, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup},
                                         new List<Id>());
    }
    
    @AuraEnabled(cacheable=false)
	public static void assignMPandCATrainingModeTestUsersPermissions() {
                List<User> trainingModeMPandCATestUsersPersonaList = [SELECT Id, LastName FROM User WHERE LastName IN ('Test MP VAHC Trainer', 'Test MP VAHC Trainee', 'Test CA VAHC Trainer', 'Test CA VAHC Trainee')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User pu : trainingModeMPandCATestUsersPersonaList) {
                    userNameToUserMap.put(pu.LastName, pu);
                }
        
               assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test MP VAHC Trainer')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainer, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupMP, permissionSetGroupVCVMPAppt, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});    
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test MP VAHC Trainee')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainee, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupMP, permissionSetGroupVCVMPAppt, permissionSetGroupITUU}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});  
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test CA VAHC Trainer')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainer, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupCA}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});  
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('Test CA VAHC Trainee')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVccTrainee, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupCA}, 
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{salesforceScheduler, healthCloudPlatformPSL, healthCloud });
    }
        
    @Future
    @AuraEnabled(cacheable=false)
    public static void updateUserPersonaCheckbox() {
    	List<VCC_Create_User_Personas__c> createUserPersona = [SELECT Id, Create_User_Personas__c  FROM VCC_Create_User_Personas__c Limit 1];
        List<User> testUserCheck 							= [SELECT Id FROM User WHERE Alias In ('testamsa', 'VISN8CA', 'VIS78MP', 'TECRN', 'AT AMSA', 'trnramsa')];
        if (testUserCheck.size() == 5) {
        try {
             createUserPersona[0].Create_User_Personas__c = TRUE;
             update createUserPersona[0];
            }
            catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
            }  
        }
    } 
                
    @AuraEnabled(cacheable=false)
    public static void assignVCVTestUsersPermissions() {
                List<User> testVCVPersonaList = [SELECT Id, Alias FROM User WHERE Alias IN ('VISN8CA', 'VISN99CA', 'VISN7CA', 'VISN2CA', 'VISN1CA', 'VISN8MP', 'VISN99MP')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testVCVPersonaList) {
                    userNameToUserMap.put(u.Alias, u);
                }
                //CA Permission Assignments
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN8CA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupCA, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN99CA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupCA, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn99VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN7CA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupCA, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn7VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN2CA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupCA, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn2VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN1CA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupCA, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn1VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
   
                //MP Assignments
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN8MP')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupMP, permissionSetGroupVCVMPAppt, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV, vahcMPPublicGroup},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});    
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN99MP')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetVAHCService},
                                         new List<Id>{permissionSetGroupMP, permissionSetGroupVCVMPAppt, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn99VCV, vahcMPPublicGroup},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});       
            } 
    
    @AuraEnabled(cacheable=false)
    public static void assignVCVTestUsersMSALeadMSAPermissions() {
                List<User> testVCVPersonaList = [SELECT Id, Alias FROM User WHERE Alias IN ('VISN8MSA', 'VIS99MSA', 'VIS8LEAD', 'VI99LEAD')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testVCVPersonaList) {
                    userNameToUserMap.put(u.Alias, u);
                }

                //MSA/AMSA Assignments
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VISN8MSA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupWellhive, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VIS99MSA')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupWellhive, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn99VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});     
                //Lead MSA Assignments
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VIS8LEAD')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetMSAQueue},
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn8VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});       
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('VI99LEAD')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe, permissionSetMSAQueue},
                                         new List<Id>{permissionSetGroupMSA, permissionSetGroupMSAAppt, permissionSetGroupITUU},
                                         new List<Id>{vahcBaseUsersPublicGroup, visn99VCV},
                                         new List<Id>{healthCloudPlatformPSL, healthCloud, salesforceScheduler});  
            } 
    
    @AuraEnabled(cacheable=false)
    public static void assignQueueTestUsersPermissions() {
                List<User> testVCVPersonaList = [SELECT Id, Alias FROM User WHERE Alias IN ('RNQT', 'MSAQT')];
                Map<String, User> userNameToUserMap = new Map<String, User>();
                for (User u : testVCVPersonaList) {
                    userNameToUserMap.put(u.Alias, u);
                }        
                //Queue User Assignments
                assignUserPermissionSets(new List<User>{userNameToUserMap.get('RNQT')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                        new List<Id>{permissionSetGroupRN, permissionSetGroupCCRNTeleEc},
                                        new List<Id>{vahcBaseUsersPublicGroup},
                                        new List<Id>());
               assignUserPermissionSets(new List<User>{userNameToUserMap.get('MSAQT')}, new List<Id>{permissionSetAccountTab, permissionSetHealthCloud, permissionSetTaskTab, permissionSetConnectsAgent, permissionSetConnectsSupe},
                                        new List<Id>{permissionSetGroupMSA},
                                        new List<Id>{vahcBaseUsersPublicGroup},
                                        new List<Id>());     
    }
    
	public static void deactivateTestUsers() {
       List <User> testUserList = [SELECT Id FROM User WHERE FirstName LIKE 'Test-%'];
       for (User u : testUserList) {
           u.IsActive = false;
       }
       update testUserList;
       system.debug('%%%%%Number of Users deactivated: ' + testUserList.size()); 
    }
    
    @AuraEnabled(cacheable=false)
    public static void bsConfig() {
		
        List<cnx__Connects_Configuration__c> checkVISNConfigExists = [SELECT Id From cnx__Connects_Configuration__c WHERE Name IN ('PRODUCTION VISN 8 Server','PRODUCTION VISN 20 Server')];
        if (checkVISNConfigExists.size() == 0) { 
        	cnx__Connects_Configuration__c visn8  = new cnx__Connects_Configuration__c(Name = 'PRODUCTION VISN 8 Server',  CNX__IS_DEFAULT__C = FALSE, CNX__FINESSE_URL_A_V2__C  = 'https://vapnnfonco83030.fon.va.gov:8445', CNX__FINESSE_URL_B_V2__C = 'https://vapnefonco83031.fon.va.gov:8445');
        	cnx__Connects_Configuration__c visn20 = new cnx__Connects_Configuration__c(Name = 'PRODUCTION VISN 20 Server', CNX__IS_DEFAULT__C = TRUE, CNX__FINESSE_URL_A_V2__C = 'https://vapnwfonco81032.fon.va.gov:8445', CNX__FINESSE_URL_B_V2__C = 'https://vapnsfonco81033.fon.va.gov:8445');
        	List<cnx__Connects_Configuration__c> visnConfigList = new List<cnx__Connects_Configuration__c>();
        	visnConfigList.add(visn8);
        	visnConfigList.add(visn20);
        	System.Domain d = System.DomainParser.parse(URL.getOrgDomainUrl());
        	for ( cnx__Connects_Configuration__c cnx : visnConfigList) { 
            	cnx.CNX__AGENT_MEDIA_PROFILE__C = 'sfdc_external_routing';
            	cnx.cnx__Agent_Work_Layout__c   = '[{"key":"Case","value":"Subject,Priority,Status,CaseNumber"},{"key":"LiveChatTranscript","value":"Name,LiveChatButton.MasterLabel,LiveChatDeployment.MasterLabel,IpAddress"}]';
            	cnx.CNX__ALLOW_AGENTS_TO_DECLINE_REQUESTS__C = FALSE;
            	cnx.CNX__CALL_DATA_DISPLAY_OPTIONS__C = '[{"key":"Dialed Number","value":"{DialedNumber}"}]';
            	cnx.CNX__CALL_ITEM_HEIGHT__C = 300;
            	cnx.CNX__CALL_LOG_TYPE__C    = 'callActivityRecord';
            	cnx.CNX__CALL_LOG_VARIABLE_MAPPING__C = '[{"key":"Subject","value":"{Direction}, {DialedNumber}, {QueueName}, {DATE:YYYY-MM-DD HH:mm:ss}"},{"key":"VCC_Dialed_Number__c","value":"{DialedNumber}"},{"key":"VCC_Caller_ID__c","value":"{PV1}"},{"key":"VCC_Language__c","value":"{PV8}"},{"key":"VCC_Queue__c","value":"{PV5}"},{"key":"VCC_Priority_1_10__c","value":"{PV2}"},{"key":"VCC_Caller_Wait_Time__c","value":"{PV6}"},{"key":"VCC_Location__c","value":"{PV4}"},{"key":"VCC_Call_Type__c","value":"{PV3}"},{"key":"VCC_Call_Identifier__c","value":"{PV9}"},{"key":"VCC_Call_Direction__c","value":"{Direction}"},{"key":"CallKeyCallID__c","value":"{CallKeyCallId}"},{"key":"CallKeySequenceNum__c","value":"{CallKeySequenceNum}"}]';
            	cnx.CNX__CHATS_TO_SET_VOICE_NR__C = 0;
            	cnx.CNX__CISCO_MEDIA_ROUTING_DOMAINS__C = '[]';
            	cnx.CNX__COPY_CALL_DISPOSITION_TO_WRAP_UP_REASON__C = FALSE;
            	cnx.CNX__COUNT_OFFERED_CHATS_TO_SET_VOICE_NR__C = TRUE;
            	cnx.CNX__DEPLOYMENT_TYPE__C = '1-voice';
            	cnx.CNX__DESCRIPTION__C = 'Currently the setup has a test queue that we can access by hitting # and then a pre-defined extension.';
            	cnx.CNX__DIALING_RULES__C = '[{"key":"","value":"91"}]';
            	cnx.CNX__DISPLAY_TEAM_MESSAGES__C = 'Never';
            	cnx.CNX__EDIT_NUMBER_ON_CLICK_TO_DIAL__C = FALSE;
            	cnx.CNX__ENABLE_HTML5_DESKTOP_NOTIFICATIONS__C = TRUE;
            	cnx.CNX__ENABLE_HIGH_VELOCITY_SALES__C = FALSE;
            	cnx.CNX__ENABLE_INTEGRATION_API_IN_LIGHTNING__C = TRUE;
            	cnx.CNX__ENABLE_ISSUE_REPORT__C = FALSE;
            	cnx.CNX__ENABLE_MOBILE_AGENT_SUPPORT__C = FALSE;
            	cnx.CNX__ENABLE_REDIAL_BUTTON__C = FALSE;
            	cnx.CNX__FINESSE_SERVER_TIMEOUT__C = 60000;
            	cnx.CNX__FORCE_MOBILE_AGENT_CONNECTION__C = 'AGENT_CHOOSES';
            	cnx.CNX__HIDE_CHAT_AFTER_ACCEPTING__C = FALSE;
				cnx.CNX__HIDE_OMNI_CHANNEL_WORK_ITEM__C = FALSE;
            	cnx.CNX__INTEGRATION_SETTINGS__C = '[]';
            	cnx.CNX__INTEGRATIONS_CUSTOM_TOOLBARS__C = '[{"location":"BOTTOM","url":"https://va-vet--' + d.getSandboxName() + '--c.visualforce.com/apex/VCC_PhoneDirectorySearch","height":"300"}]';
            	cnx.CNX__ISSUE_REPORT_URL_V2__C = 'mailto:support@mycompany.com?subject=Connects issue report&body={message}';
            	cnx.CNX__LOOKUP_RULES__C = '[]';
            	cnx.CNX__MAX_DIRECTORY_LOOKUP_SUGGESTIONS__C = 5;
            	cnx.CNX__MAX_NUMBER_OF_CRM_LOOKUP_SUGGESTIONS__C = 5;
            	cnx.CNX__MEDIA_NEW_RECORD_URL__C = '[{"key": "", "value": "00Q/e?Email={Sender}"},{"key": "", "value": "001/e?Email={Sender}"},{"key": "", "value": "003/e?Email={Sender}"}]';
            	cnx.CNX__MEDIA_SERVICE_URL__C = 'https://myConnectsMediaServer:8090/connects/';
            	cnx.CNX__NOT_READY_REASON_CODE_WHILE_CHAT__C = 'ReasonCode';
            	cnx.CNX__RT_CC_USER_LOGIN_REQUIRED__C = FALSE;
            	cnx.CNX__RT_CP_USER_LOGIN_REQUIRED__C = FALSE;
            	cnx.CNX__RT_VP_USER_LOGIN_REQUIRED__C = FALSE;
            	cnx.CNX__REALTIME_CALLAGENTID__C = FALSE;
            	cnx.CNX__REALTIME_CLICK_TO_DIAL_QUEUE__C = '[]';
            	cnx.CNX__REALTIME_CRITICALNUMOFCALLSTHRESHOLD__C = 10;
            	cnx.CNX__REALTIME_CRITICALWAITTIMETHRESHOLD__C = 60;
            	cnx.CNX__REALTIME_HIDEQUEUEVIEW__C = FALSE;
            	cnx.CNX__REALTIME_HIDETEAMVIEW__C = FALSE; 
            	cnx.CNX__REALTIME_HIGHNUMOFCALLSTHRESHOLD__C = 5;
            	cnx.CNX__REALTIME_HIGHWAITTIMETHRESHOLD__C = 15;
            	cnx.CNX__REALTIME_REFRESHTIMEQUEUE__C = 2;
            	cnx.CNX__REALTIME_REFRESHTIMETEAM__C = 0.5;
            	cnx.CNX__REALTIME_SHOWSTATECHANGETIME__C = TRUE;
            	cnx.CNX__REALTIME_SORTAGENTNAMEBY__C = 'First Name';
            	cnx.CNX__REDIAL_LIST_SIZE__C = 20;
            	cnx.CNX__REQUIRE_CALL_DISPOSITION__C = FALSE;
            	cnx.CNX__SCREEN_POP_FOR_CALL_EVENTS__C = '[]';
            	cnx.CNX__SHOW_CALL_LOG_COMMENT_FIELD__C = TRUE;
            	cnx.CNX__SHOW_SUPERVISOR_MONITORING_TO_AGENT__C = TRUE;
            	cnx.CNX__SHOWN_TEAM_MESSAGE_LINES__C = 'Header';
            	cnx.CNX__SOFTPHONE_HEIGHT__C = 600;
            	cnx.CNX__SOFTPHONE_WIDTH__C  = 300;
            	cnx.CNX__SUPPORT_CHAT_BUTTON_STATE__C = FALSE;
            	cnx.CNX__SWITCH_TO_TALKING_STATE_ON_RESERVED__C = TRUE;
            	cnx.CNX__USE_LEGACY_MEDIA_ROUTING__C = FALSE;
            	cnx.CNX__VARIABLE_FOR_RECORD_SHARING__C = 'PV10';
            	cnx.CNX__VOICE_NEW_RECORD_URL__C = '[{"key": "", "value": "00Q/e?Phone={ANI}"},{"key": "", "value": "001/e?Phone={ANI}"},{"key": "", "value": "003/e?Phone={ANI}"}]';
            	cnx.cnx__Integration_Settings__c = '[{"key":"softphoneDirectorySettings","value":"{\\"searchContainerHeightInPixels\\":\\"210px\\", \\"searchMethod\\": \\"SOQL\\"}"}]';     
        	} 
			system.debug('%%%%%%%%%% - Number of VISN Configs: ' + visnConfigList.size());
           
        	try {
        		insert visnConfigList;
        	} 
        	catch (Exception ex) {
            system.debug('ERROR:' + ex.getMessage());
            throw new AuraHandledException(ex.getMessage());
        	}
        } else {
            system.debug('VISN 8 & 20 Configs have already been loaded into the Sandbox');
        }
    }
    
    public static void deleteBSConFig() {
        cnx__Connects_Configuration__c visnX = new cnx__Connects_Configuration__c(Name = 'Placeholder ' + String.valueOf( Integer.valueOf(Math.random() * 1000) ) + ' Server',  CNX__IS_DEFAULT__C = TRUE, CNX__DESCRIPTION__C = 'Non-working Config Placeholder');
        visnX.cnx__Is_Default__c = TRUE;
        insert visnX;
        List<cnx__Connects_Configuration__c> deleteBSConfigs = [Select Id From cnx__Connects_Configuration__c WHERE Name IN ('PRODUCTION VISN 8 Server', 'PRODUCTION VISN 20 Server')];
        if(!deleteBSConfigs.isEmpty()) Database.delete(deleteBSConfigs);      
    }   

	@AuraEnabled(cacheable=false)
    public static void bsAssignedUser() {
        
        // Test Personas
        User rnTestPersona       = [SELECT Id FROM User WHERE FirstName  = 'Test-RN-VAHC']; 
        User msaTestPersona      = [SELECT Id FROM User WHERE FirstName  = 'Test-MSA-VAHC'];
        User pharmITestPersona   = [SELECT Id FROM User WHERE FirstName  = 'Test-PharmI-VAHC'];
        User pharmIITestPersona  = [SELECT Id FROM User WHERE FirstName  = 'Test-PharmII-VAHC'];
        User pharmIIITestPersona = [SELECT Id FROM User WHERE FirstName  = 'Test-PharmIII-VAHC'];
        User mpTestPersona       = [SELECT Id FROM User WHERE FirstName  = 'Test-MP-VAHC'];
        User tierITestPersona    = [SELECT Id FROM User WHERE FirstName  = 'Test-TierI-Admin-Officer-VAHC']; 
        User supTestPersona      = [SELECT Id FROM User WHERE FirstName  = 'Test-Clinical-Supervisor-VAHC']; 
        User msaAdminTestPersona = [SELECT Id FROM User WHERE FirstName  = 'Test-MSA-Admin-Officer-VAHC']; 
        
        cnx__Connects_Configuration__c visn20BucherConfig = [SELECT Id FROM cnx__Connects_Configuration__c WHERE Name = 'PRODUCTION VISN 20 Server'];
        
        // Assigning Test Personas to VISN 20 B+S Configuration   
        List<cnx__Connects_Configuration_Assignment__c> bsConfigAssignList = [SELECT Id FROM cnx__Connects_Configuration_Assignment__c WHERE cnx__Assigned_Connects_Configuration__c = :visn20BucherConfig.id ];
        if (bsConfigAssignList.size() == 0) {
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = rnTestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = msaTestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = pharmITestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = pharmIITestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = pharmIIITestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = mpTestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = tierITestPersona.Id)); 
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = supTestPersona.Id));
        	bsConfigAssignList.add(new cnx__Connects_Configuration_Assignment__c (cnx__Assigned_Connects_Configuration__c = visn20BucherConfig.Id, cnx__Assigned_User__c = msaAdminTestPersona.Id)); 
        
        	try {
        		insert bsConfigAssignList;
        	} 
        	catch (Exception ex) {
            	system.debug('ERROR:' + ex.getMessage());
            	throw new AuraHandledException(ex.getMessage());
         	}
        } else {
            system.debug('VISN 20 B+S Config Assigned have already been loaded');
        }     
     }
    
     public static void deleteBSAssignedUsers() {
        List<cnx__Connects_Configuration_Assignment__c> deleteBSUsers = [Select Id From cnx__Connects_Configuration_Assignment__c];
        if(!deleteBSUsers.isEmpty()) Database.delete(deleteBSUsers);     
    }   
    
    @future
    public static void addDuzNumbers(Set<Id> userIdList) {
        System.debug(userIdList);
        List<IAM_SSOi_Vista_Instance_to_User_DUZ__c> existingDuz = [Select Name, User_Id__c, VistA_Instance__c From IAM_SSOi_Vista_Instance_to_User_DUZ__c Where (User_Id__c In :userIdList AND (VistA_Instance__c = '983' OR VistA_Instance__c = '984'))];
        Map<Id, Map<String,String>> duzMap = new Map<Id, Map<String,String>>();
        for (IAM_SSOi_Vista_Instance_to_User_DUZ__c ed : existingDuz) {
            if (duzMap.containsKey(ed.User_Id__c)) {
                duzMap.get(ed.User_Id__c).put(ed.VistA_Instance__c,ed.VistA_Instance__c);
            }
            else {
                duzMap.put(ed.User_Id__c, new Map<String,String>());
                duzMap.get(ed.User_Id__c).put(ed.VistA_Instance__c,ed.VistA_Instance__c);
            }
        }
        
        List<IAM_SSOi_Vista_Instance_to_User_DUZ__c> vistaList = new List< IAM_SSOi_Vista_Instance_to_User_DUZ__c>();
        for (Id userId : userIdList) {
            System.debug(duzMap);
            if (duzMap.containsKey(userId)) {
                if (!duzMap.get(userId).containsKey('983')) {
                    IAM_SSOi_Vista_Instance_to_User_DUZ__c inst983 = new IAM_SSOi_Vista_Instance_to_User_DUZ__c();
                    inst983.Name = 'mockSSO.' + userId + '_983';
                    inst983.DUZ__c = '520648375';
                    inst983.User_Id__c = userId;
                    inst983.VistA_Instance__c = '983';
                    vistaList.add(inst983);
                }
            }
            else {
                IAM_SSOi_Vista_Instance_to_User_DUZ__c inst983 = new IAM_SSOi_Vista_Instance_to_User_DUZ__c();
                inst983.Name = 'mockSSO.' + userId + '_983';
                inst983.DUZ__c = '520648375';
                inst983.User_Id__c = userId;
                inst983.VistA_Instance__c = '983';
                vistaList.add(inst983); 
            }
        }
        try{
        	if (vistaList.size() != 0) {
            	insert vistaList;
			}
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
    }
    
    @AuraEnabled
    public static userWrapper userCreationFileReader(Id idContentDocument){
        List<User> lstUsersToCreate = new List<User>();
        List<User> lstUsersToUpdate = new List<User>();
        
        System.Domain orgName = System.DomainParser.parse(URL.getOrgDomainUrl());
        
        if(idContentDocument != null) {
            //getting File Data based on document id
            ContentVersion objVersion = [SELECT Id, VersionData FROM ContentVersion WHERE ContentDocumentId =:idContentDocument];
            //split the file data
            List<String> lstCSVLines = objVersion.VersionData.toString().split('\n');

            List<User> existingUsers = [Select Id, Username, FederationIdentifier, CommunityNickname From User Where ProfileId = :sysAdminProfile OR Email Like '%.invalid%'];
            Map<String, User> emailToUserMap = new Map<String, User>();
            for (User u : existingUsers) {
                emailToUserMap.put(u.Username, u);
            }

            Database.DMLOptions dmo = new Database.DMLOptions();
            dmo.EmailHeader.triggerUserEmail = true;       
            dmo.EmailHeader.triggerOtherEmail = true;
            dmo.EmailHeader.triggerAutoResponseEmail = true;       
            dmo.optAllOrNone = false;

            for(Integer i = 1; i < lstCSVLines.size(); i++){
                List<String> csvRowData = lstCSVLines[i].split(',');
                User newUser = new User();
                newUser.FirstName = csvRowData[0];
                newUser.LastName = csvRowData[1];
                newUser.Email = csvRowData[2].trim();
                newUser.ProfileId = sysAdminProfile;
                newUser.IsActive = true;
                newUser.UserRoleId = userRoleId;
                newUser.CallCenterId = callCenterId;
                newUser.Username = newUser.Email + USERNAME_SUFFIX;
                newUser.Title = newUser.FirstName + newUser.LastName;
                newUser.Division = 'VISN 8';
                newUser.Alias = newUser.FirstName.substring(0,1) + newUser.LastName.substring(0,1);
                newUser.CommunityNickname = newUser.FirstName + '.' + String.valueOf( Integer.valueOf(Math.random() * 1000000000) );
                newUser.TimeZoneSidKey = 'America/New_York';
                newUser.EmailEncodingKey = 'ISO-8859-1';
                newUser.LocaleSidKey = 'en_US';
                newUser.LanguageLocaleKey = 'en_US';
                newUser.UserPermissionsSFContentUser = true;      
                newUser.setOptions(dmo);
                
                if (emailToUserMap.containsKey(newUser.Username)) {
                    newUser.Id = emailToUserMap.get(newUser.Username).id;
                    SYstem.debug(newUser.Id);
                    if (newUser.Email.contains('.invalid')) {
                        newUser.Email.replace('.invalid', '');
                    }
                    lstUsersToUpdate.add(newUser);
                }
                else {                                        
                    lstUsersToCreate.add(newUser);
                }              
            }

            try{
                if(!lstUsersToUpdate.isEmpty()){
                    update lstUsersToUpdate;
                    System.debug('lstUserstoUpdate ====> ' +lstUserstoUpdate);
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }

            try{
                if(!lstUsersToCreate.isEmpty()){
                    insert lstUsersToCreate;
                    System.debug('lstUserstoCreate ====> ' +lstUserstoCreate);
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
            
            Set<Id> UserIds = new Set<Id>();
            
            for (User u : lstUsersToUpdate) {
                UserIds.add(u.id);
            }
            
            for (User u : lstUsersToCreate) {
                UserIds.add(u.id);
            }
            
            VCC_DataImportUtil.addDuzNumbers(UserIds);
            List<PermissionSetAssignment> existingPermSetAssignment = [Select AssigneeId, PermissionSetId From PermissionSetAssignment Where (PermissionSetId = :permissionSetHealthCloud)];
            List<PermissionSetAssignment> existingPermSetGroupAssignment = [Select AssigneeId, PermissionSetGroupId From PermissionSetAssignment Where (PermissionSetGroupId = :permissionSetSuperUser OR PermissionSetGroupId = :permissionSetGroupRN)];
            List<GroupMember> existingGroupMembers = [Select UserOrGroupId, GroupId From GroupMember Where (GroupId = :vahcBaseUsersPublicGroup OR GroupId = :vahcLeadersPublicGroup)];

            Map<Id, Map<Id,Id>> userToAssignmentMap = new Map<Id, Map<Id,Id>>();

            for (PermissionSetAssignment psa : existingPermSetAssignment) {
                if (userToAssignmentMap.containsKey(psa.AssigneeId)) {
                    userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetId,psa.PermissionSetId);
                }
                else {
                    userToAssignmentMap.put(psa.AssigneeId, new Map<Id,Id>());
                    userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetId,psa.PermissionSetId); 
                }
            }
            
            for (PermissionSetAssignment psa : existingPermSetGroupAssignment) {
                if (userToAssignmentMap.containsKey(psa.AssigneeId)) {
                    userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetGroupId,psa.PermissionSetGroupId);                  
                }
                else {
                    userToAssignmentMap.put(psa.AssigneeId, new Map<Id,Id>());
                    userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetGroupId,psa.PermissionSetGroupId);
                }     
            }
            
            for (GroupMember gm : existingGroupMembers) {
                if (userToAssignmentMap.containsKey(gm.UserOrGroupId)) {
                    userToAssignmentMap.get(gm.UserOrGroupId).put(gm.GroupId,gm.GroupId);
                }
                else {
                    userToAssignmentMap.put(gm.UserOrGroupId, new Map<Id,Id>());
                    userToAssignmentMap.get(gm.UserOrGroupId).put(gm.GroupId,gm.GroupId);
                }
            }

            List<PermissionSetAssignment> psaList = new List<PermissionSetAssignment>();
            List<GroupMember> publicGroupList = new List<GroupMember>();
             
            for (User newUser : lstUsersToCreate) {
                psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetId = permissionSetHealthCloud));
 //               psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetId = vahcHeartbeatToolUser));                
                psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetGroupId = permissionSetSuperUser));
                psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetGroupId = permissionSetGroupRN));
                publicGroupList.add(new GroupMember(UserOrGroupId = newUser.id, GroupId = vahcBaseUsersPublicGroup));
                publicGroupList.add(new GroupMember(UserOrGroupId = newUser.id, GroupId = vahcLeadersPublicGroup));
            }
            
            for (User newUser : lstUsersToUpdate) {
                if(userToAssignmentMap.containsKey(newUser.id)) {
                    if(!userToAssignmentMap.get(newUser.id).containsKey(permissionSetHealthCloud)) {
                    	psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetId = permissionSetHealthCloud));
                    }
  //                  if(!userToAssignmentMap.get(newUser.id).containsKey(vahcHeartbeatToolUser)) {
  //                  	psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetId = vahcHeartbeatToolUser));
  //                  }
                    if(!userToAssignmentMap.get(newUser.id).containsKey(permissionSetSuperUser)) {
                    	psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetGroupId = permissionSetSuperUser));
                    }
                    if(!userToAssignmentMap.get(newUser.id).containsKey(permissionSetGroupRN)) {
                    	psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetGroupId = permissionSetGroupRN));
                    }
                    if(!userToAssignmentMap.get(newUser.id).containsKey(vahcBaseUsersPublicGroup)) {
                    	publicGroupList.add(new GroupMember(UserOrGroupId = newUser.id, GroupId = vahcBaseUsersPublicGroup));
                    }
                    if(!userToAssignmentMap.get(newUser.id).containsKey(vahcLeadersPublicGroup)) {
                    	publicGroupList.add(new GroupMember(UserOrGroupId = newUser.id, GroupId = vahcLeadersPublicGroup));
                    }
                }
            }

            try{
                if(!psaList.isEmpty()){
                    insert psaList;
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
            try{
            	if(!publicGroupList.isEmpty()){
                    insert publicGroupList;
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
        }
        userWrapper userWrap = new userWrapper();
        userWrap.usersToCreateList = lstUsersToCreate;
        userWrap.usersToUpdateList = lstUsersToUpdate;
        return userWrap;
    }
    
    public class userWrapper {
        @AuraEnabled
        public List<User> usersToCreateList {
            get; set; 
        }
        
        @AuraEnabled
        public List<User> usersToUpdateList {
            get; set;
        }
        
        public userWrapper(){
            this.usersToCreateList = new List<User>();
            this.usersToUpdateList = new List<User>();
        }
    }
    
    public static void assignUserPermissionSets(List<User> userList, List<Id> permSetIds, List<Id> permSetGroupIds, List<Id> publicGroupIds, List<Id> permSetLicenseIds) {
        List<PermissionSetLicenseAssign> existingPermSetLicenseAssignment = [SELECT AssigneeId, PermissionSetLicenseId FROM PermissionSetLicenseAssign WHERE (PermissionSetLicenseId IN :permSetLicenseIds AND AssigneeId IN :userList)];
        List<PermissionSetAssignment> existingPermSetAssignment = [Select AssigneeId, PermissionSetId From PermissionSetAssignment Where (PermissionSetId IN :permSetIds AND AssigneeId In :userList)];
        List<PermissionSetAssignment> existingPermSetGroupAssignment = [Select AssigneeId, PermissionSetGroupId From PermissionSetAssignment Where (PermissionSetGroupId IN :permSetGroupIds AND AssigneeId In :userList)];
        List<GroupMember> existingGroupMembers = [Select UserOrGroupId, GroupId From GroupMember Where (GroupId IN :publicGroupIds AND UserOrGroupId In :userList)];
        System.debug(permSetIds);
        System.debug(permSetGroupIds);
        System.debug(permSetLicenseIds);
        System.debug(userList);
        Map<Id, Map<Id,Id>> userToAssignmentMap = new Map<Id, Map<Id,Id>>();
        
        for(PermissionSetLicenseAssign psl : existingPermSetLicenseAssignment) {
            if (userToAssignmentMap.containsKey(psl.AssigneeId)) {
                userToAssignmentMap.get(psl.AssigneeId).put(psl.PermissionSetLicenseId, psl.PermissionSetLicenseId);
            }
            else {
                userToAssignmentMap.put(psl.AssigneeId, new Map<Id, Id>());
                userToAssignmentMap.get(psl.AssigneeId).put(psl.PermissionSetLicenseId, psl.PermissionSetLicenseId);
            }
        }
        System.debug('userToAssignmentMap ====>' + userToAssignmentMap);
        
        for (PermissionSetAssignment psa : existingPermSetAssignment) {
            if (userToAssignmentMap.containsKey(psa.AssigneeId)) {
                userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetId,psa.PermissionSetId);
            }
            else {
                userToAssignmentMap.put(psa.AssigneeId, new Map<Id,Id>());
                userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetId,psa.PermissionSetId); 
            }
        }
                System.debug('userToAssignmentMap ====>' + userToAssignmentMap);

        for (PermissionSetAssignment psa : existingPermSetGroupAssignment) {
            if (userToAssignmentMap.containsKey(psa.AssigneeId)) {
                userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetGroupId,psa.PermissionSetGroupId);                  
            }
            else {
                userToAssignmentMap.put(psa.AssigneeId, new Map<Id,Id>());
                userToAssignmentMap.get(psa.AssigneeId).put(psa.PermissionSetGroupId,psa.PermissionSetGroupId);
            }     
        }
        
        for (GroupMember gm : existingGroupMembers) {
            if (userToAssignmentMap.containsKey(gm.UserOrGroupId)) {
                userToAssignmentMap.get(gm.UserOrGroupId).put(gm.GroupId,gm.GroupId);
            }
            else {
                userToAssignmentMap.put(gm.UserOrGroupId, new Map<Id,Id>());
                userToAssignmentMap.get(gm.UserOrGroupId).put(gm.GroupId,gm.GroupId);
            }
        }
        
        List<PermissionSetLicenseAssign> pslList = new List<PermissionSetLicenseAssign>();
        List<PermissionSetAssignment> psaList = new List<PermissionSetAssignment>();
        List<GroupMember> publicGroupList = new List<GroupMember>();
        
        for (User newUser : userList) {
            System.debug(permSetLicenseIds);
            if(userToAssignmentMap.containsKey(newUser.id)) {
                System.debug(permSetLicenseIds);
                for (Id permSetLicenseId : permSetLicenseIds) {
                    if(!userToAssignmentMap.get(newUser.id).containsKey(permSetLicenseId)) {
                        pslList.add(new PermissionSetLicenseAssign(AssigneeId = newUser.id, PermissionSetLicenseId = permSetLicenseId));
                    }
                }
                
                for (Id permSetId : permSetIds) {
                    if(!userToAssignmentMap.get(newUser.id).containsKey(permSetId)) {
                    	psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetId = permSetId));
                	}	
                }
                for (Id permSetGroupId : permSetGroupIds) {
                    if(!userToAssignmentMap.get(newUser.id).containsKey(permSetGroupId)) {
                    	psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetGroupId = permSetGroupId));
                	}	
                }
                for (Id publicGroupId : publicGroupIds) {
                    if(!userToAssignmentMap.get(newUser.id).containsKey(publicGroupId)) {
                   		publicGroupList.add(new GroupMember(UserOrGroupId = newUser.id, GroupId = publicGroupId));
                	}
                } 
            }
            else {
                for (Id permSetId : permSetIds) {
                    psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetId = permSetId));
                }
                for (Id permSetGroupId : permSetGroupIds) {
                    psaList.add(new PermissionSetAssignment(AssigneeId = newUser.id, PermissionSetGroupId = permSetGroupId));
                }
                for (Id publicGroupId : publicGroupIds) {
                    publicGroupList.add(new GroupMember(UserOrGroupId = newUser.id, GroupId = publicGroupId));
                }
                for (Id permSetLicenseId : permSetLicenseIds) {
                    pslList.add(new PermissionSetLicenseAssign(AssigneeId = newUser.id, PermissionSetLicenseId = permSetLicenseId));
                }
            }
            
        }
        System.debug(pslList);
        try{
            if(!pslList.isEmpty()){
                insert pslList;
                System.debug('pslList ====> ' +pslList);
            }
        }
            catch (Exception ex) {
            	throw new AuraHandledException(ex.getMessage());
        }
                        System.debug('psaList ===>' + psaList);

        try{
            if(!psaList.isEmpty()){
                insert psaList;
            }
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
        try{
            if(!publicGroupList.isEmpty()){
                insert publicGroupList;
            }
        }
        catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
    }

    @AuraEnabled
    public static String  updateSSO(VCC_TokenWrapper tokenWrapper) {
        System.debug(tokenWrapper);
        VCC_Mock_SSO_Settings__c ssoSettings = VCC_Mock_SSO_Settings__c.getOrgDefaults();
        ssoSettings.VCC_SSO_Token__c = tokenWrapper.tokenVar;
        ssoSettings.VCC_DUZ__c = tokenWrapper.duzVar;
        ssoSettings.VCC_VistA_Instance__c = tokenWrapper.vistaVar;
        String response = '';

        try {
            update ssoSettings;
            response = 'SUCCESS';
        }catch(Exception e) {
            response = String.valueOf(e.getMessage());
            System.debug(e);
        }

        return response;
    }

    @AuraEnabled
    public static String toastMessage(String title, String message, String variant) {
        String standardVariant = 'info';
        if(variant != standardVariant) {
            standardVariant = variant;
        }
        List<String> listData = new List<String> {title, message, standardVariant};

        String data = JSON.serialize(listData);
        return data;
    }

    /*
       @AuraEnabled        
    public static contactWrapper contactCreationFileReader(Id idContentDocument,  String recordId){
    List<VCC_CRM_VISN_Service_Assignment__c> serviceVISN = [SELECT Id, Account__c, CRM_Service__c FROM VCC_CRM_VISN_Service_Assignment__c WHERE Id = :recordId];
        if (serviceVISN.size() == 0) {
            system.debug('Record Id is not valid');
            return null;
        }
        Id serviceVISNAssignId = serviceVISN[0].Id;
        Id visnId = serviceVISN[0].Account__c;
        Id serviceId = serviceVISN[0].CRM_Service__c;
        
        RecordType vaEmployee = [SELECT Id From RecordType Where Name = 'VA Employees'];
        List<Contact> lstContactToCreate = new List<Contact>();
        List<Contact> lstContactToUpdate = new List<Contact>();
          
        if(idContentDocument != null) {
            //getting File Data based on document id
            ContentVersion objVersion = [SELECT Id, VersionData FROM ContentVersion WHERE ContentDocumentId =:idContentDocument];
            //split the file data
            List<String> lstCSVLines = objVersion.VersionData.toString().split('\n');
            
			List<Account> accLst = [SELECT Id, Name FROM Account];
			Map<String, Account> accNameToIdMap = new Map<String, Account>();
            for (Account a : accLst) {
                accNameToIdMap.put(a.Name, a);
            }

            List<Contact> conLst = [SELECT Id, Email FROM Contact];
            Map<String, Contact> conExistingEmailMap = new Map<String, Contact>();
            for (Contact c : conLst) {
                conExistingEmailMap.put(c.Email, c);
            }
            // Maps for Service User Assignment Duplication Check
            Map<Id, Account> accExistingIdMap = new Map<Id, Account>();
            for (Account a : accLst) {
                accExistingIdMap.put(a.Id, a);
            } 
            
            Map<Id, Contact> conExistingIdMap = new Map<Id, Contact>();
            for (Contact c : conLst) {
                conExistingIdMap.put(c.Id, c);
            }

            List<VCC_CRM_Service__c> serviceLst = [SELECT Id FROM VCC_CRM_Service__c];
            Map<Id, VCC_CRM_Service__c> serviceExistingIdMap = new Map<Id, VCC_CRM_Service__c>();
            for (VCC_CRM_Service__c s : serviceLst) {
                serviceExistingIdMap.put(s.Id, s);
            }
            

            for(Integer i = 1; i < lstCSVLines.size(); i++) {
                List<String> csvRowData    = lstCSVLines[i].split(',');
                Contact newContact 		   = new Contact();
                newContact.FirstName 	   = csvRowData[0];
                newContact.LastName 	   = csvRowData[1];
                newContact.Email 		   = csvRowData[3].trim();
                newContact.TMS_Email__c    = csvRowData[4].trim();
                newContact.SEC_ID__c       = csvRowData[5].trim();
                newContact.Extension__c	   = csvRowData[6].trim();
                newContact.Persona__c	   = csvRowData[7].trim();
                newContact.RecordTypeId    = vaEmployee.Id;
                newContact.SOT_Contact__c  = TRUE;
                
                
                if (accNameToIdMap.containsKey(csvRowData[2].trim())) {
                    newContact.Facility__c = accNameToIdMap.get(csvRowData[2].trim()).id;
                } 
                //If Email in CSV exists in Contact Email Map, then add record to Update List, else add to Create List...
                if (conExistingEmailMap.containsKey(newContact.Email)) {
                    newContact.Id = conExistingEmailMap.get(newContact.Email).Id;
                    lstContactToUpdate.add(newContact);
                } else {
                    lstContactToCreate.add(newContact);  
                } 
                                                     
            }
            //Inserting or Updating Contact Records
            try{
                if(!lstContactToUpdate.isEmpty()){
                    update lstContactToUpdate;
                    System.debug('lstContactToUpdate ====> ' +lstContactToUpdate);
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }

            try{
                if(!lstContactToCreate.isEmpty()){
                    insert lstContactToCreate;
                    System.debug('lstContactToCreate ====> ' +lstContactToCreate);
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
            // Service User Assignment Creation
            List<Service_User_Assignment__c> createServiceUserList = new List<Service_User_Assignment__c>();
            List<Service_User_Assignment__c> updateServiceUserList = new List<Service_User_Assignment__c>(); 
            for(Contact c : lstContactToCreate ){              
                Service_User_Assignment__c createContactServiceAssign =  new Service_User_Assignment__c();
                createContactServiceAssign.Contact__c 	  = c.Id;
                createContactServiceAssign.CRM_Service__c = serviceId;
                createContactServiceAssign.VISN__c 		  = visnId;
                createContactServiceAssign.CRM_VISN_Service_Assignment__c = serviceVISNAssignId;
                
                
                createServiceUserList.add(createContactServiceAssign);           
            }
            for(Contact u : lstContactToUpdate ){

                Service_User_Assignment__c updateContactServiceAssign =  new Service_User_Assignment__c();
                updateContactServiceAssign.Contact__c 	  = u.Id;
                updateContactServiceAssign.CRM_Service__c = serviceId;
                updateContactServiceAssign.VISN__c 		  = visnId;
                updateContactServiceAssign.CRM_VISN_Service_Assignment__c = serviceVISNAssignId;
                
                
               // createServiceUserList.add(updateContactServiceAssign);
                
                if (conExistingIdMap.containsKey(updateContactServiceAssign.Contact__c) && accExistingIdMap.containsKey(updateContactServiceAssign.VISN__c) && serviceExistingIdMap.containsKey(updateContactServiceAssign.CRM_Service__c)) {
                	system.debug('Duplicate Service User Assignment Detected: Skipping Record'); 
                } else {
                  	updateServiceUserList.add(updateContactServiceAssign);  
                }
            } 

            try {
  				if (!createServiceUserList.isEmpty()) {
                	Database.insert(createServiceUserList);
                    system.debug(createServiceUserList);
            	}
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
            
            try {
  				if (!updateServiceUserList.isEmpty()) {
                	Database.insert(updateServiceUserList);
                    system.debug(updateServiceUserList);
            	}
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
           
      }   
    	contactWrapper contactWrap = new contactWrapper();
        contactWrap.contactsToCreateList = lstContactToCreate;
        contactWrap.contactsToUpdateList = lstContactToUpdate;
        return contactWrap; 
    }

    public class contactWrapper {
        @AuraEnabled
        public List<Contact> contactsToCreateList {
            get; set; 
        }
        
        @AuraEnabled
        public List<Contact> contactsToUpdateList {
            get; set;
        }
        
        public contactWrapper(){
            this.contactsToCreateList = new List<Contact>();
            this.contactsToUpdateList = new List<Contact>();
        }
    }

     */

    /*
    @AuraEnabled
    public static pnWrapper pnCreationFileReader(Id idContentDocument,  String recordId){
        RecordType pnSigning = [SELECT Id From RecordType Where Name = 'Progress Note Signing'];
        
        List<VCC_Onboarding_Activity__c> onboardingActivity = [Select Id, CRM_VISN_Service_Assignment__c FROM VCC_Onboarding_Activity__c WHERE Id = :recordId];
        if (onboardingActivity.size() == 0) {
            system.debug('Record Id is not valid');
            return null;
        }
        Id onboardingId = onboardingActivity[0].Id;
        Id visnServiceAssignment = onboardingActivity[0].CRM_VISN_Service_Assignment__c; 
        
        List<VCC_Readiness_Activity__c> lstPNToCreate = new List<VCC_Readiness_Activity__c>();
        List<VCC_Readiness_Activity__c> lstPNToUpdate = new List<VCC_Readiness_Activity__c>();
          
        if(idContentDocument != null) {
            //getting File Data based on document id
            ContentVersion objVersion = [SELECT Id, VersionData FROM ContentVersion WHERE ContentDocumentId =:idContentDocument];
            //split the file data
            List<String> lstCSVLines = objVersion.VersionData.toString().split('\n');
            
            
            List<Contact> contactNameLst = [SELECT Id, Name FROM Contact];
            Map<String, Contact> contactExistingNameMap = new Map<String, Contact>();
            for (Contact c : contactNameLst) {
                contactExistingNameMap.put(c.Name, c);
            } 			
            
            List<Account> accLst = [SELECT Id, Name FROM Account];
			Map<String, Account> accFacilityNameToIdMap = new Map<String, Account>();
            for (Account a : accLst) {
                accFacilityNameToIdMap.put(a.Name, a);
            } 

            for(Integer i = 1; i < lstCSVLines.size(); i++) {
                List<String> csvRowData = lstCSVLines[i].split(',', 5);
                VCC_Readiness_Activity__c newPN = new VCC_Readiness_Activity__c();
                newPN.RecordTypeId = pnSigning.Id;
                
                if (contactExistingNameMap.containsKey(csvRowData[0])) {
                    newPn.Contact__c  = contactExistingNameMap.get(csvRowData[0]).id;    
                }
                
                newPN.Onboarding_Activity__c = onboardingId;
                newPN.Site_Number__c =  csvRowData[1].trim();                 
                newPN.Progress_Note_Connectivity_Status__c  = csvRowData[2];
                newPN.SubCategory__c = csvRowData[3].replace('"','').trim();
               
                newPn.Name = 'PN Sign Testing: ' + csvRowData[0] + ' Site: ' + csvRowData[1].trim();
                
                if (newPN.Progress_Note_Connectivity_Status__c == 'NEW') {
                    newPN.Status__c = 'Not Started';
                }
                if (newPN.Progress_Note_Connectivity_Status__c == 'RUNNING') {
                    newPN.Status__c = 'In Progress';
                }
                if (newPN.Progress_Note_Connectivity_Status__c == 'PASS') {
                    newPN.Status__c = 'Completed';
                }
                if (newPN.Progress_Note_Connectivity_Status__c == 'FAIL') {
                    newPN.Status__c = 'Error';
                }
                
                if (newPN.SubCategory__c == 'Create encounter, note, and sign') {
                   newPN.Signing_Type__c = 'Progress Note';
                }
                if (newPN.SubCategory__c == 'Create note, addendum, and sign') {
                   newPN.Signing_Type__c = 'Addendum';
                } 
                
                lstPNToCreate.add(newPN);
            }
           
            try{
                if(!lstPNToUpdate.isEmpty()){
                    update lstPNToUpdate;
                    System.debug('lstPNToUpdate ====> ' +lstPNToUpdate);
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }

            try{
                if(!lstPNToCreate.isEmpty()){
                    insert lstPNToCreate;
                    System.debug('lstPNToCreate ====> ' +lstPNToCreate);
                }
            }
            catch (Exception ex) {
                throw new AuraHandledException(ex.getMessage());
            }
            
      }
   
    	pnWrapper pnWrap       = new pnWrapper();
        pnWrap.pnsToCreateList = lstPNToCreate;
        pnWrap.pnsToUpdateList = lstPNToUpdate;
        return pnWrap; 
    }


    public class pnWrapper {
        @AuraEnabled
        public List<VCC_Readiness_Activity__c> pnsToCreateList {
            get; set; 
        }
        
        @AuraEnabled
        public List<VCC_Readiness_Activity__c> pnsToUpdateList {
            get; set;
        }
        
        public pnWrapper(){
            this.pnsToCreateList = new List<VCC_Readiness_Activity__c>();
            this.pnsToUpdateList = new List<VCC_Readiness_Activity__c>();
        }
    }

     */

    /********************************************************************************************************************/
    /************************************* PRIVATE CLASSES **************************************************************/
    /******************************************* AND ********************************************************************/
    /******************************** PRIVATE CONSTRUCTORS **************************************************************/
    /********************************************************************************************************************/
    private class UtilObject {
        public Id KeyValue { get; set; }
        public String DeveloperName { get; set; }
        public SobjectType ObjectType { get; set; }

        public UtilObject(Id keyValue, String developerName, SObjectType objectType) {
            this.KeyValue = keyValue;
            this.DeveloperName = developerName;
            this.ObjectType = objectType;
        }
    }

    public Map<String, UtilObject> loadBaseUtilObjectData() {
        Map<String, UtilObject> data = new Map<String, UtilObject>();
        Map<String,String> queryString = new Map<String, String>{
            'vavetBaseProfile' => 'VAVET Base Profile',
            'sysAdminProfile' =>'System Administrator',
            'permissionSetHealthCloud'=>'HealthCloudFoundation',
            'permissionSetConnectsAgent'=>'Connects_Agent',
            'permissionSetConnectsSupe'=>'Connects_Supervisor',
            'permissionSetPACTDetails'=>'VAHC_View_PACT_Details',
            'permissionSetAccountTab'=>'Accounts_Tab_Salesforce',
            'permissionSetTaskTab'=>'Tasks_Tab_Salesforce',
            'permissionSetSbToolUser'=>'VAHC_Sandbox_Tool_User',
            'permissionSetGroupRN'=>'VCC_Registered_Nurse',
            'permissionSetSuperUser'=>'VAHC_Super_User',
            'permissionSetGroupMSA'=>'VCC_Advanced_Medical_Support_Assistant',
            'permissionSetGroupPharmI'=>'VCC_Pharmacy_I',
            'permissionSetGroupPharmII'=>'VCC_Pharmacy_II',
            'permissionSetGroupPharmIII'=>'VCC_Pharmacy_III',
            'permissionSetGroupMP'=>'VCC_Medical_Provider',
            'permissionSetGroupSupervisor'=>'VCC_Clinical_Supervisor',
            'permissionSetGroupMSAAdmin'=>'VAHC_MSA_Administrative_Officer',
            'permissionSetGroupTierIAdmin'=>'VAHC_Tier_I_Administrative_Officer',
            'permissionSetGroupTeleMP'=>'TED_Medical_Provider_Group',
            'vahcBaseUsersPublicGroup'=>'VAHC Base Users',
            'vahcLeadersPublicGroup'=>'VAHC Leaders',
            'vahcMPPublicGroup'=>'VAHC Medical Providers',
            'teleECPublicGroup'=>'Tele EC Public Group',
            'userRoleId'=> 'VCC' ,
            'callCenterId'=> 'callCenterId'
        };
        for(Profile value : [SELECT Id, Name FROM Profile WHERE Name IN: queryString.values()]) {
            for(String key : queryString.keySet()) {
                String str = queryString.get(key);
                if(value.Name.equals(str)){
                    data.put(key, new UtilObject(value.Id, str, Profile.SObjectType));
                }
            }
        }

        for(PermissionSet value : [SELECT Id, Name FROM PermissionSet WHERE Name IN: queryString.values()]) {
            for(String key : queryString.keySet()) {
                String str = queryString.get(key);
                if(value.Name.equals(str)){
                    data.put(key, new UtilObject(value.Id, str, Profile.SObjectType));
                }
            }
        }

        for(PermissionSetGroup value : [SELECT Id, DeveloperName FROM PermissionSetGroup WHERE DeveloperName IN: queryString.values()]) {
            for(String key : queryString.keySet()) {
                String str = queryString.get(key);
                if(value.DeveloperName.equals(str)){
                    data.put(key, new UtilObject(value.Id, str, Profile.SObjectType));
                }
            }
        }

        for(Group value : [SELECT Id, Name FROM Group WHERE Name IN: queryString.values()]) {
            for(String key : queryString.keySet()) {
                String str = queryString.get(key);
                if(value.Name.equals(str)){
                    data.put(key, new UtilObject(value.Id, str, Profile.SObjectType));
                }
            }
        }

        for(UserRole value : [SELECT Id, Name FROM UserRole WHERE Name IN: queryString.values()]){
            for(String key : queryString.keySet()) {
                String str = queryString.get(key);
                if(value.Name.equals(str)){
                    data.put(key, new UtilObject(value.Id, str, Profile.SObjectType));
                }
            }
        }

        for(CallCenter value : [SELECT Id, Name FROM CallCenter WHERE Name IN: queryString.values()]) {
            for(String key : queryString.keySet()) {
                String str = queryString.get(key);
                if(value.Name.equals(str)){
                    data.put(key, new UtilObject(value.Id, str, Profile.SObjectType));
                }
            }
        }

        return data;
    }     

}


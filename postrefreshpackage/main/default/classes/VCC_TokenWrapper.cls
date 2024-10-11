/**
 * 
 * Class Description
 *
 * @author barne
 * @version 1.0.0
 */

public with sharing class VCC_TokenWrapper {
    @AuraEnabled
    public String tokenVar { get; set; }
    @AuraEnabled
    public String duzVar { get; set; }
    @AuraEnabled
    public String vistaVar { get ; set ; }

}
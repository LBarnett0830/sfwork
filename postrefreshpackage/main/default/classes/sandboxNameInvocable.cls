public class sandboxNameInvocable { 
  @InvocableMethod(label='Get Sandbox Name' description='Returns name of sandbox')
  public static List<String> sandboxName() {
  List<String> listNames = new List<String>();
  System.Domain d = System.DomainParser.parse(URL.getOrgDomainUrl());
  listNames.add(d.getSandboxName());
  return listNames;
  }
}
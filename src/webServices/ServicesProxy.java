package webServices;

public class ServicesProxy implements webServices.Services {
  private String _endpoint = null;
  private webServices.Services services = null;
  
  public ServicesProxy() {
    _initServicesProxy();
  }
  
  public ServicesProxy(String endpoint) {
    _endpoint = endpoint;
    _initServicesProxy();
  }
  
  private void _initServicesProxy() {
    try {
      services = (new webServices.ServicesServiceLocator()).getServices();
      if (services != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)services)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)services)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (services != null)
      ((javax.xml.rpc.Stub)services)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webServices.Services getServices() {
    if (services == null)
      _initServicesProxy();
    return services;
  }
  
  public java.lang.String func(int a, int b) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.func(a, b);
  }
  
  public void stationOneRegister(java.lang.String vin, java.lang.String model, java.lang.String brand, int weight) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    services.stationOneRegister(vin, model, brand, weight);
  }
  
  public void stationTwoRegister(java.lang.String partName, java.lang.String partType, double weight, java.lang.String vin, int palletID) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    services.stationTwoRegister(partName, partType, weight, vin, palletID);
  }
  
  
}
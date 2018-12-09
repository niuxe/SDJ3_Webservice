/**
 * Services.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webServices;

public interface Services extends java.rmi.Remote {
    public java.lang.String func(int a, int b) throws java.rmi.RemoteException;
    public void stationOneRegister(java.lang.String vin, java.lang.String model, java.lang.String brand, int weight) throws java.rmi.RemoteException;
    public void stationTwoRegister(java.lang.String partName, java.lang.String partType, double weight, java.lang.String vin, int palletID) throws java.rmi.RemoteException;
}

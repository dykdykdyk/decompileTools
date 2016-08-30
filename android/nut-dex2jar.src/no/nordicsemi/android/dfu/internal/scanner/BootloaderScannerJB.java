package no.nordicsemi.android.dfu.internal.scanner;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;

public class BootloaderScannerJB
  implements BluetoothAdapter.LeScanCallback, BootloaderScanner
{
  private String mBootloaderAddress;
  private String mDeviceAddress;
  private String mDeviceAddressIncremented;
  private boolean mFound;
  private final Object mLock = new Object();

  public void onLeScan(BluetoothDevice arg1, int paramInt, byte[] paramArrayOfByte)
  {
    ??? = ???.getAddress();
    if ((this.mDeviceAddress.equals(???)) || (this.mDeviceAddressIncremented.equals(???)))
    {
      this.mBootloaderAddress = ???;
      this.mFound = true;
      synchronized (this.mLock)
      {
        this.mLock.notifyAll();
        return;
      }
    }
  }

  public String searchFor(String paramString)
  {
    ??? = paramString.substring(0, 15);
    String str = String.format("%02X", new Object[] { Integer.valueOf(Integer.valueOf(paramString.substring(15), 16).intValue() + 1 & 0xFF) });
    this.mDeviceAddress = paramString;
    this.mDeviceAddressIncremented = ((String)??? + str);
    this.mBootloaderAddress = null;
    this.mFound = false;
    new Thread(new BootloaderScannerJB.1(this), "Scanner timer").start();
    paramString = BluetoothAdapter.getDefaultAdapter();
    paramString.startLeScan(this);
    try
    {
      synchronized (this.mLock)
      {
        if (!this.mFound)
          this.mLock.wait();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    while (true)
    {
      paramString.stopLeScan(this);
      return this.mBootloaderAddress;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.scanner.BootloaderScannerJB
 * JD-Core Version:    0.6.2
 */
package no.nordicsemi.android.dfu.internal.scanner;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings.Builder;

@TargetApi(21)
public class BootloaderScannerLollipop extends ScanCallback
  implements BootloaderScanner
{
  private String mBootloaderAddress;
  private String mDeviceAddress;
  private String mDeviceAddressIncremented;
  private boolean mFound;
  private final Object mLock = new Object();

  public void onScanResult(int paramInt, ScanResult arg2)
  {
    ??? = ???.getDevice().getAddress();
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
    new Thread(new BootloaderScannerLollipop.1(this), "Scanner timer").start();
    paramString = BluetoothAdapter.getDefaultAdapter().getBluetoothLeScanner();
    paramString.startScan(null, new ScanSettings.Builder().setScanMode(2).build(), this);
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
      paramString.stopScan(this);
      return this.mBootloaderAddress;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.scanner.BootloaderScannerLollipop
 * JD-Core Version:    0.6.2
 */
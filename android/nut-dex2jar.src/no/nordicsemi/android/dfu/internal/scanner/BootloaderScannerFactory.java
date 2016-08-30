package no.nordicsemi.android.dfu.internal.scanner;

import android.os.Build.VERSION;

public class BootloaderScannerFactory
{
  public static BootloaderScanner getScanner()
  {
    if (Build.VERSION.SDK_INT >= 21)
      return new BootloaderScannerLollipop();
    return new BootloaderScannerJB();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.scanner.BootloaderScannerFactory
 * JD-Core Version:    0.6.2
 */
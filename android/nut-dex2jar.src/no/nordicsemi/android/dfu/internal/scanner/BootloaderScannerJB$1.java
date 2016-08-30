package no.nordicsemi.android.dfu.internal.scanner;

class BootloaderScannerJB$1
  implements Runnable
{
  BootloaderScannerJB$1(BootloaderScannerJB paramBootloaderScannerJB)
  {
  }

  public void run()
  {
    try
    {
      Thread.sleep(5000L);
      label6: if (BootloaderScannerJB.access$000(this.this$0))
        return;
      BootloaderScannerJB.access$102(this.this$0, null);
      BootloaderScannerJB.access$002(this.this$0, true);
      synchronized (BootloaderScannerJB.access$200(this.this$0))
      {
        BootloaderScannerJB.access$200(this.this$0).notifyAll();
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label6;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.scanner.BootloaderScannerJB.1
 * JD-Core Version:    0.6.2
 */
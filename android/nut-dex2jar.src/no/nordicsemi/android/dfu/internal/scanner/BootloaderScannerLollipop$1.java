package no.nordicsemi.android.dfu.internal.scanner;

class BootloaderScannerLollipop$1
  implements Runnable
{
  BootloaderScannerLollipop$1(BootloaderScannerLollipop paramBootloaderScannerLollipop)
  {
  }

  public void run()
  {
    try
    {
      Thread.sleep(5000L);
      label6: if (BootloaderScannerLollipop.access$000(this.this$0))
        return;
      BootloaderScannerLollipop.access$102(this.this$0, null);
      BootloaderScannerLollipop.access$002(this.this$0, true);
      synchronized (BootloaderScannerLollipop.access$200(this.this$0))
      {
        BootloaderScannerLollipop.access$200(this.this$0).notifyAll();
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
 * Qualified Name:     no.nordicsemi.android.dfu.internal.scanner.BootloaderScannerLollipop.1
 * JD-Core Version:    0.6.2
 */
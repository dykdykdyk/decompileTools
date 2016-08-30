package no.nordicsemi.android.dfu.internal.scanner;

public abstract interface BootloaderScanner
{
  public static final int ADDRESS_DIFF = 1;
  public static final long TIMEOUT = 5000L;

  public abstract String searchFor(String paramString);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.scanner.BootloaderScanner
 * JD-Core Version:    0.6.2
 */
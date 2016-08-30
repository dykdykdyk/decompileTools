package no.nordicsemi.android.dfu.internal.exception;

public class DfuException extends Exception
{
  private static final long serialVersionUID = -6901728550661937942L;
  private final int mError;

  public DfuException(String paramString, int paramInt)
  {
    super(paramString);
    this.mError = paramInt;
  }

  public int getErrorNumber()
  {
    return this.mError;
  }

  public String getMessage()
  {
    return super.getMessage() + " (error " + (this.mError & 0xFFFFBFFF) + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.exception.DfuException
 * JD-Core Version:    0.6.2
 */
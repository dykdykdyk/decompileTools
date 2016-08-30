package no.nordicsemi.android.dfu.internal.exception;

public class RemoteDfuException extends Exception
{
  private static final long serialVersionUID = -6901728550661937942L;
  private final int mState;

  public RemoteDfuException(String paramString, int paramInt)
  {
    super(paramString);
    this.mState = paramInt;
  }

  public int getErrorNumber()
  {
    return this.mState;
  }

  public String getMessage()
  {
    return super.getMessage() + " (error " + this.mState + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.exception.RemoteDfuException
 * JD-Core Version:    0.6.2
 */
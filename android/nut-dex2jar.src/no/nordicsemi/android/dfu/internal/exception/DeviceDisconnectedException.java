package no.nordicsemi.android.dfu.internal.exception;

public class DeviceDisconnectedException extends Exception
{
  private static final long serialVersionUID = -6901728550661937942L;
  private final int mState;

  public DeviceDisconnectedException(String paramString, int paramInt)
  {
    super(paramString);
    this.mState = paramInt;
  }

  public int getConnectionState()
  {
    return this.mState;
  }

  public String getMessage()
  {
    return super.getMessage() + " (connection state: " + this.mState + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.exception.DeviceDisconnectedException
 * JD-Core Version:    0.6.2
 */
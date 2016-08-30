package android.support.v4.os;

public class OperationCanceledException extends RuntimeException
{
  public OperationCanceledException()
  {
    this((byte)0);
  }

  private OperationCanceledException(byte paramByte)
  {
    super("The operation has been canceled.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.os.OperationCanceledException
 * JD-Core Version:    0.6.2
 */
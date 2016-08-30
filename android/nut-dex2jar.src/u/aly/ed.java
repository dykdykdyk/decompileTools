package u.aly;

public abstract class ed
{
  public final int a(byte[] paramArrayOfByte, int paramInt)
    throws dd
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = a(paramArrayOfByte, i + 0, paramInt - i);
      if (j <= 0)
        throw new dd("Cannot read. Remote side has closed. Tried to read " + paramInt + " bytes, but only got " + i + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)", (byte)0);
      i += j;
    }
    return i;
  }

  public abstract int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws dd;

  public void a(int paramInt)
  {
  }

  public byte[] a()
  {
    return null;
  }

  public int b()
  {
    return 0;
  }

  public abstract void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws dd;

  public int c()
  {
    return -1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ed
 * JD-Core Version:    0.6.2
 */
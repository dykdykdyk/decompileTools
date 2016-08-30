package com.google.zxing;

public abstract class g
{
  public final int a;
  public final int b;

  protected g(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public abstract byte[] a();

  public abstract byte[] a(int paramInt, byte[] paramArrayOfByte);

  public final String toString()
  {
    byte[] arrayOfByte = new byte[this.a];
    StringBuilder localStringBuilder = new StringBuilder(this.b * (this.a + 1));
    int i = 0;
    while (i < this.b)
    {
      arrayOfByte = a(i, arrayOfByte);
      int j = 0;
      if (j < this.a)
      {
        int k = arrayOfByte[j] & 0xFF;
        char c;
        if (k < 64)
          c = '#';
        while (true)
        {
          localStringBuilder.append(c);
          j += 1;
          break;
          if (k < 128)
            c = '+';
          else if (k < 192)
            c = '.';
          else
            c = ' ';
        }
      }
      localStringBuilder.append('\n');
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g
 * JD-Core Version:    0.6.2
 */
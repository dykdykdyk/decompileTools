package com.google.zxing.g.c;

import java.lang.reflect.Array;

public final class b
{
  final byte[][] a;
  public final int b;
  public final int c;

  public b(int paramInt1, int paramInt2)
  {
    this.a = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { paramInt2, paramInt1 }));
    this.b = paramInt1;
    this.c = paramInt2;
  }

  public final byte a(int paramInt1, int paramInt2)
  {
    return this.a[paramInt2][paramInt1];
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a[paramInt2][paramInt1] = ((byte)paramInt3);
  }

  public final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte = this.a[paramInt2];
    if (paramBoolean);
    for (paramInt2 = 1; ; paramInt2 = 0)
    {
      arrayOfByte[paramInt1] = ((byte)paramInt2);
      return;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.b * 2 * this.c + 2);
    int i = 0;
    while (i < this.c)
    {
      int j = 0;
      if (j < this.b)
      {
        switch (this.a[i][j])
        {
        default:
          localStringBuilder.append("  ");
        case 0:
        case 1:
        }
        while (true)
        {
          j += 1;
          break;
          localStringBuilder.append(" 0");
          continue;
          localStringBuilder.append(" 1");
        }
      }
      localStringBuilder.append('\n');
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.c.b
 * JD-Core Version:    0.6.2
 */
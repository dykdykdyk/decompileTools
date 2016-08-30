package com.google.zxing.e.a;

import com.google.zxing.o;

public final class c
{
  public final int a;
  public final int[] b;
  public final o[] c;

  public c(int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = paramInt1;
    this.b = paramArrayOfInt;
    this.c = new o[] { new o(paramInt2, paramInt4), new o(paramInt3, paramInt4) };
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c));
    do
    {
      return false;
      paramObject = (c)paramObject;
    }
    while (this.a != paramObject.a);
    return true;
  }

  public final int hashCode()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.c
 * JD-Core Version:    0.6.2
 */
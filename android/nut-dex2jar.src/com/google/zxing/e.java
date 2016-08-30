package com.google.zxing;

public final class e
{
  public final int a;
  public final int b;

  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof e))
    {
      paramObject = (e)paramObject;
      bool1 = bool2;
      if (this.a == paramObject.a)
      {
        bool1 = bool2;
        if (this.b == paramObject.b)
          bool1 = true;
      }
    }
    return bool1;
  }

  public final int hashCode()
  {
    return this.a * 32713 + this.b;
  }

  public final String toString()
  {
    return this.a + "x" + this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e
 * JD-Core Version:    0.6.2
 */
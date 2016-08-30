package com.google.zxing.e.a;

public class b
{
  public final int a;
  public final int b;

  public b(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b));
    do
    {
      return false;
      paramObject = (b)paramObject;
    }
    while ((this.a != paramObject.a) || (this.b != paramObject.b));
    return true;
  }

  public final int hashCode()
  {
    return this.a ^ this.b;
  }

  public final String toString()
  {
    return this.a + "(" + this.b + ')';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.b
 * JD-Core Version:    0.6.2
 */
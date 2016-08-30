package com.google.zxing.e.a.a;

import java.util.ArrayList;
import java.util.List;

final class b
{
  final List<a> a;
  final int b;
  private final boolean c;

  b(List<a> paramList, int paramInt)
  {
    this.a = new ArrayList(paramList);
    this.b = paramInt;
    this.c = false;
  }

  final boolean a(List<a> paramList)
  {
    return this.a.equals(paramList);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b));
    do
    {
      return false;
      paramObject = (b)paramObject;
    }
    while ((!this.a.equals(paramObject.a)) || (this.c != paramObject.c));
    return true;
  }

  public final int hashCode()
  {
    return this.a.hashCode() ^ Boolean.valueOf(this.c).hashCode();
  }

  public final String toString()
  {
    return "{ " + this.a + " }";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.b
 * JD-Core Version:    0.6.2
 */
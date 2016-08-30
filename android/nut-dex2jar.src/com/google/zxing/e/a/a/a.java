package com.google.zxing.e.a.a;

import com.google.zxing.e.a.b;
import com.google.zxing.e.a.c;

final class a
{
  final b a;
  final b b;
  final c c;
  private final boolean d;

  a(b paramb1, b paramb2, c paramc)
  {
    this.a = paramb1;
    this.b = paramb2;
    this.c = paramc;
    this.d = true;
  }

  private static int a(Object paramObject)
  {
    if (paramObject == null)
      return 0;
    return paramObject.hashCode();
  }

  private static boolean a(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
      return paramObject2 == null;
    return paramObject1.equals(paramObject2);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a));
    do
    {
      return false;
      paramObject = (a)paramObject;
    }
    while ((!a(this.a, paramObject.a)) || (!a(this.b, paramObject.b)) || (!a(this.c, paramObject.c)));
    return true;
  }

  public final int hashCode()
  {
    return a(this.a) ^ a(this.b) ^ a(this.c);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("[ ").append(this.a).append(" , ").append(this.b).append(" : ");
    if (this.c == null);
    for (Object localObject = "null"; ; localObject = Integer.valueOf(this.c.a))
      return localObject + " ]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a
 * JD-Core Version:    0.6.2
 */
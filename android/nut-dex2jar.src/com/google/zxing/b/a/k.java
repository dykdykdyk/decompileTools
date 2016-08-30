package com.google.zxing.b.a;

import java.util.Map;

public final class k extends q
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final String j;
  private final String k;
  private final String l;
  private final String m;
  private final String n;
  private final Map<String, String> o;

  public k(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, Map<String, String> paramMap)
  {
    super(r.c);
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramString7;
    this.h = paramString8;
    this.i = paramString9;
    this.j = paramString10;
    this.k = paramString11;
    this.l = paramString12;
    this.m = paramString13;
    this.n = paramString14;
    this.o = paramMap;
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

  public final String a()
  {
    return String.valueOf(this.a);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof k));
    do
    {
      return false;
      paramObject = (k)paramObject;
    }
    while ((!a(this.b, paramObject.b)) || (!a(this.c, paramObject.c)) || (!a(this.d, paramObject.d)) || (!a(this.e, paramObject.e)) || (!a(this.g, paramObject.g)) || (!a(this.h, paramObject.h)) || (!a(this.i, paramObject.i)) || (!a(this.j, paramObject.j)) || (!a(this.k, paramObject.k)) || (!a(this.l, paramObject.l)) || (!a(this.m, paramObject.m)) || (!a(this.n, paramObject.n)) || (!a(this.o, paramObject.o)));
    return true;
  }

  public final int hashCode()
  {
    return a(this.b) ^ 0x0 ^ a(this.c) ^ a(this.d) ^ a(this.e) ^ a(this.g) ^ a(this.h) ^ a(this.i) ^ a(this.j) ^ a(this.k) ^ a(this.l) ^ a(this.m) ^ a(this.n) ^ a(this.o);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.k
 * JD-Core Version:    0.6.2
 */
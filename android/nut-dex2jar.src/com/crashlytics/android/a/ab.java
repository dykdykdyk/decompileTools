package com.crashlytics.android.a;

import java.util.Map;

final class ab
{
  public final ae a;
  public final long b;
  public final ad c;
  public final Map<String, String> d;
  public final String e;
  public final Map<String, Object> f;
  public final String g;
  public final Map<String, Object> h;
  private String i;

  private ab(ae paramae, long paramLong, ad paramad, Map<String, String> paramMap, String paramString1, Map<String, Object> paramMap1, String paramString2, Map<String, Object> paramMap2)
  {
    this.a = paramae;
    this.b = paramLong;
    this.c = paramad;
    this.d = paramMap;
    this.e = paramString1;
    this.f = paramMap1;
    this.g = paramString2;
    this.h = paramMap2;
  }

  public final String toString()
  {
    if (this.i == null)
      this.i = ("[" + getClass().getSimpleName() + ": timestamp=" + this.b + ", type=" + this.c + ", details=" + this.d + ", customType=" + this.e + ", customAttributes=" + this.f + ", predefinedType=" + this.g + ", predefinedAttributes=" + this.h + ", metadata=[" + this.a + "]]");
    return this.i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.ab
 * JD-Core Version:    0.6.2
 */
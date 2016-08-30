package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

public final class m
{
  public final String a;
  public final byte[] b;
  public o[] c;
  public final a d;
  public Map<n, Object> e;
  private final long f;

  public m(String paramString, byte[] paramArrayOfByte, o[] paramArrayOfo, a parama)
  {
    this(paramString, paramArrayOfByte, paramArrayOfo, parama, System.currentTimeMillis());
  }

  private m(String paramString, byte[] paramArrayOfByte, o[] paramArrayOfo, a parama, long paramLong)
  {
    this.a = paramString;
    this.b = paramArrayOfByte;
    this.c = paramArrayOfo;
    this.d = parama;
    this.e = null;
    this.f = paramLong;
  }

  public final void a(n paramn, Object paramObject)
  {
    if (this.e == null)
      this.e = new EnumMap(n.class);
    this.e.put(paramn, paramObject);
  }

  public final void a(Map<n, Object> paramMap)
  {
    if (paramMap != null)
    {
      if (this.e == null)
        this.e = paramMap;
    }
    else
      return;
    this.e.putAll(paramMap);
  }

  public final String toString()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.m
 * JD-Core Version:    0.6.2
 */
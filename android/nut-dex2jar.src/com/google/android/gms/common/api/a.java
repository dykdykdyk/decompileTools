package com.google.android.gms.common.api;

public final class a<O extends b>
{
  public final f<?, O> a;
  public final k<?> b;
  public final String c;
  private final m<?, O> d;
  private final n<?> e;

  public <C extends j> a(String paramString, f<C, O> paramf, k<C> paramk)
  {
    com.google.android.gms.common.internal.b.a(paramf, "Cannot construct an Api with a null ClientBuilder");
    com.google.android.gms.common.internal.b.a(paramk, "Cannot construct an Api with a null ClientKey");
    this.c = paramString;
    this.a = paramf;
    this.d = null;
    this.b = paramk;
    this.e = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.a
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;

public final class s extends j
{
  public s(i parami, int paramInt)
  {
    super(parami, paramInt, null);
  }

  protected final void a(ConnectionResult paramConnectionResult)
  {
    i.b(this.e).a(paramConnectionResult);
    this.e.a(paramConnectionResult);
  }

  protected final boolean a()
  {
    i.b(this.e).a(ConnectionResult.a);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.s
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

abstract class j extends n<Boolean>
{
  public final int a;
  public final Bundle b;

  protected j(i parami, int paramInt, Bundle paramBundle)
  {
    super(parami, Boolean.valueOf(true));
    this.a = paramInt;
    this.b = paramBundle;
  }

  protected abstract void a(ConnectionResult paramConnectionResult);

  protected abstract boolean a();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.j
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

public final class p extends be
{
  private i a;
  private final int b;

  public p(i parami, int paramInt)
  {
    this.a = parami;
    this.b = paramInt;
  }

  public final void a(int paramInt, Bundle paramBundle)
  {
    Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
  }

  public final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    b.a(this.a, "onPostInitComplete can be called only once per call to getRemoteService");
    i locali = this.a;
    int i = this.b;
    locali.e.sendMessage(locali.e.obtainMessage(1, i, -1, new r(locali, paramInt, paramIBinder, paramBundle)));
    this.a = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.p
 * JD-Core Version:    0.6.2
 */
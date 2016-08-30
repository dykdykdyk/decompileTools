package com.nut.blehunter;

import android.content.Context;
import android.content.IntentFilter;

public final class i
{
  Context a;
  String b;
  private IntentFilter c;
  private j d;

  public i(Context paramContext, String paramString)
  {
    this.a = paramContext;
    this.c = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    this.b = paramString;
    this.d = new j(this);
  }

  public final void a()
  {
    if (this.d != null)
      this.a.registerReceiver(this.d, this.c);
  }

  public final void b()
  {
    if (this.d != null)
      this.a.unregisterReceiver(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.i
 * JD-Core Version:    0.6.2
 */
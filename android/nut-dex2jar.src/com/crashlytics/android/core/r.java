package com.crashlytics.android.core;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;
import io.fabric.sdk.android.services.d.c;
import io.fabric.sdk.android.services.d.d;

final class r
  implements DialogInterface.OnClickListener
{
  r(o paramo)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    d locald = new d(this.a.e);
    locald.a(locald.b().putBoolean("always_send_reports_opt_in", true));
    this.a.b.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.r
 * JD-Core Version:    0.6.2
 */
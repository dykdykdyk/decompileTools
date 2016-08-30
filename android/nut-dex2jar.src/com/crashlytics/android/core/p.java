package com.crashlytics.android.core;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class p
  implements DialogInterface.OnClickListener
{
  p(o paramo)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.b.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.p
 * JD-Core Version:    0.6.2
 */
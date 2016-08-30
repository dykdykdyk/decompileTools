package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v4.app.ac;
import android.support.v4.app.s;
import com.google.android.gms.common.internal.b;

public final class d extends s
{
  private Dialog j = null;
  private DialogInterface.OnCancelListener k = null;

  public static d a(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    d locald = new d();
    paramDialog = (Dialog)b.a(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    locald.j = paramDialog;
    if (paramOnCancelListener != null)
      locald.k = paramOnCancelListener;
    return locald;
  }

  public final Dialog a(Bundle paramBundle)
  {
    if (this.j == null)
      this.d = false;
    return this.j;
  }

  public final void a(ac paramac, String paramString)
  {
    super.a(paramac, paramString);
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.k != null)
      this.k.onCancel(paramDialogInterface);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.d
 * JD-Core Version:    0.6.2
 */
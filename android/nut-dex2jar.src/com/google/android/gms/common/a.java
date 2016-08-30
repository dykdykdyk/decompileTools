package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import com.google.android.gms.common.internal.b;

@TargetApi(11)
public final class a extends DialogFragment
{
  private Dialog a = null;
  private DialogInterface.OnCancelListener b = null;

  public static a a(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a locala = new a();
    paramDialog = (Dialog)b.a(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    locala.a = paramDialog;
    if (paramOnCancelListener != null)
      locala.b = paramOnCancelListener;
    return locala;
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.b != null)
      this.b.onCancel(paramDialogInterface);
  }

  public final Dialog onCreateDialog(Bundle paramBundle)
  {
    if (this.a == null)
      setShowsDialog(false);
    return this.a;
  }

  public final void show(FragmentManager paramFragmentManager, String paramString)
  {
    super.show(paramFragmentManager, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.a
 * JD-Core Version:    0.6.2
 */
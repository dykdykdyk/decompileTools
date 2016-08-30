package com.nut.blehunter.ui.b.a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.widget.TextView;

public final class h extends s
{
  public TextView j;
  public e k;

  public final Dialog a(Bundle paramBundle)
  {
    paramBundle = LayoutInflater.from(getActivity()).inflate(2130903137, null);
    this.j = ((TextView)paramBundle);
    this.j.setText(getString(2131099823, new Object[] { "0%" }));
    Dialog localDialog = new Dialog(getActivity(), 2131296459);
    localDialog.setCancelable(false);
    localDialog.setCanceledOnTouchOutside(false);
    localDialog.setContentView(paramBundle);
    return localDialog;
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (this.k != null)
      this.k.d_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.h
 * JD-Core Version:    0.6.2
 */
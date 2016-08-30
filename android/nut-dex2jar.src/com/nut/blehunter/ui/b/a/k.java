package com.nut.blehunter.ui.b.a;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.ac;
import android.support.v4.app.an;
import android.support.v4.app.v;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public final class k extends aa
{
  public static void a(v paramv)
  {
    if ((paramv == null) || (paramv.isFinishing()))
      return;
    k localk = new k();
    paramv = paramv.d().a();
    paramv.a(localk, "Progress_Dialog");
    paramv.b();
  }

  public final Dialog a(Bundle paramBundle)
  {
    paramBundle = (LinearLayout)LayoutInflater.from(getActivity()).inflate(2130903138, null).findViewById(2131558786);
    Dialog localDialog = new Dialog(getActivity(), 2131296459);
    localDialog.setCancelable(true);
    localDialog.setCanceledOnTouchOutside(false);
    localDialog.setContentView(paramBundle, new LinearLayout.LayoutParams(-1, -1));
    return localDialog;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.k
 * JD-Core Version:    0.6.2
 */
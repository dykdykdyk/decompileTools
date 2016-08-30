package com.nut.blehunter.ui.b.a;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.ac;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.support.v4.app.v;
import android.text.TextUtils;

public class aa extends s
{
  public static void a(v paramv, String paramString, boolean paramBoolean)
  {
    if ((paramv == null) || (paramv.isFinishing()))
      return;
    Bundle localBundle = new Bundle();
    localBundle.putString("msg", paramString);
    paramString = new aa();
    paramString.a(paramBoolean);
    paramString.setArguments(localBundle);
    paramv = paramv.d().a();
    paramv.a(paramString, "Progress_Dialog");
    paramv.b();
  }

  public static void b(v paramv)
  {
    if ((paramv != null) && (!paramv.isFinishing()))
    {
      paramv = paramv.d();
      aa localaa = (aa)paramv.a("Progress_Dialog");
      if (localaa != null)
        paramv.a().a(localaa).b();
    }
  }

  public Dialog a(Bundle paramBundle)
  {
    paramBundle = getArguments().getString("msg");
    ProgressDialog localProgressDialog = new ProgressDialog(getActivity());
    if (!TextUtils.isEmpty(paramBundle))
      localProgressDialog.setMessage(paramBundle);
    localProgressDialog.setIndeterminate(true);
    localProgressDialog.setCanceledOnTouchOutside(false);
    return localProgressDialog;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.aa
 * JD-Core Version:    0.6.2
 */
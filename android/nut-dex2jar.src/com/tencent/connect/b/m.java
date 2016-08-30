package com.tencent.connect.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.tencent.open.web.security.JniInterface;

final class m
  implements DialogInterface.OnDismissListener
{
  m(j paramj)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    try
    {
      JniInterface.clearAllPWD();
      return;
    }
    catch (Exception paramDialogInterface)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.m
 * JD-Core Version:    0.6.2
 */
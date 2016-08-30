package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public abstract class ak
  implements DialogInterface.OnClickListener
{
  public static ak a(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    return new al(paramActivity, paramIntent, paramInt);
  }

  public static ak a(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    return new am(paramFragment, paramIntent, paramInt);
  }

  public abstract void a();

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      a();
      paramDialogInterface.dismiss();
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      Log.e("DialogRedirect", "Can't redirect to app settings for Google Play services");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.ak
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.b.d;

public final class b extends g
{
  public static final int a = g.b;
  private static final b c = new b();

  public static b a()
  {
    return c;
  }

  public static boolean a(Activity paramActivity, int paramInt, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return GooglePlayServicesUtil.showErrorDialogFragment(paramInt, paramActivity, 2, paramOnCancelListener);
  }

  public final int a(Context paramContext)
  {
    return super.a(paramContext);
  }

  public final PendingIntent a(Context paramContext, int paramInt1, int paramInt2)
  {
    return super.a(paramContext, paramInt1, paramInt2);
  }

  public final PendingIntent a(Context paramContext, int paramInt1, int paramInt2, String paramString)
  {
    return super.a(paramContext, paramInt1, paramInt2, paramString);
  }

  public final Intent a(Context paramContext, int paramInt, String paramString)
  {
    return super.a(paramContext, paramInt, paramString);
  }

  public final void a(Context paramContext, ConnectionResult paramConnectionResult, int paramInt)
  {
    if (paramConnectionResult.a());
    int i;
    for (PendingIntent localPendingIntent = paramConnectionResult.d; ; localPendingIntent = super.a(paramContext, i, 0))
    {
      if (localPendingIntent != null)
        GooglePlayServicesUtil.zza(paramConnectionResult.c, paramContext, GoogleApiActivity.a(paramContext, localPendingIntent, paramInt));
      return;
      int j = paramConnectionResult.c;
      i = j;
      if (d.a(paramContext))
      {
        i = j;
        if (j == 2)
          i = 42;
      }
    }
  }

  public final boolean a(int paramInt)
  {
    return super.a(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.b
 * JD-Core Version:    0.6.2
 */
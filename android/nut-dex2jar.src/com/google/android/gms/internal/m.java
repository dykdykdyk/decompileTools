package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.google.android.gms.common.ConnectionResult;

public abstract class m extends x
  implements DialogInterface.OnCancelListener
{
  protected boolean a;
  private ConnectionResult b;
  private int c;

  protected abstract void a();

  protected abstract void a(ConnectionResult paramConnectionResult, int paramInt);

  public void onCancel(DialogInterface paramDialogInterface)
  {
    a(new ConnectionResult(13, null), this.c);
    this.c = -1;
    this.a = false;
    this.b = null;
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.m
 * JD-Core Version:    0.6.2
 */
package com.nut.blehunter.wxapi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nut.blehunter.NutTrackerApplication;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

public class AppRegister extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    WXAPIFactory.createWXAPI(paramContext, null).registerApp(NutTrackerApplication.a().getString(2131100174));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.wxapi.AppRegister
 * JD-Core Version:    0.6.2
 */
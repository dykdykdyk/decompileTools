package com.baidu.android.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.k;

public class SDcardRemovedReceiver extends BroadcastReceiver
{
  private static String a = "SDRev";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent.getAction().equals("android.intent.action.MEDIA_BAD_REMOVAL")) || (paramIntent.getAction().equals("android.intent.action.MEDIA_REMOVED")))
    {
      a.c(a, "sdcard removed");
      k.a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.SDcardRemovedReceiver
 * JD-Core Version:    0.6.2
 */
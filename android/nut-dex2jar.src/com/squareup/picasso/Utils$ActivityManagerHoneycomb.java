package com.squareup.picasso;

import android.annotation.TargetApi;
import android.app.ActivityManager;

@TargetApi(11)
class Utils$ActivityManagerHoneycomb
{
  static int getLargeMemoryClass(ActivityManager paramActivityManager)
  {
    return paramActivityManager.getLargeMemoryClass();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Utils.ActivityManagerHoneycomb
 * JD-Core Version:    0.6.2
 */
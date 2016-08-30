package com.bingerz.android.countrycodepicker;

import android.app.Activity;
import android.content.Intent;

public final class g
{
  public static String a = "countryCode";

  public static void a(Activity paramActivity)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramActivity, CountryCodeActivity.class);
    paramActivity.startActivityForResult(localIntent, 604);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.g
 * JD-Core Version:    0.6.2
 */
package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

final class ex
  implements Runnable
{
  ex(WelcomeActivity paramWelcomeActivity)
  {
  }

  public final void run()
  {
    WelcomeActivity localWelcomeActivity = this.a;
    Intent localIntent = new Intent();
    String str = GuidePagerActivity.f();
    boolean bool;
    if (TextUtils.isEmpty(str))
    {
      bool = false;
      if (bool)
        break label115;
      str = GuidePagerActivity.f();
      if (!TextUtils.isEmpty(str))
      {
        SharedPreferences.Editor localEditor = localWelcomeActivity.getSharedPreferences("guide_prefs", 0).edit();
        localEditor.putBoolean(str, true);
        localEditor.commit();
      }
      localIntent.setClass(localWelcomeActivity, GuidePagerActivity.class);
    }
    while (true)
    {
      localWelcomeActivity.startActivity(localIntent);
      localWelcomeActivity.finish();
      return;
      bool = localWelcomeActivity.getSharedPreferences("guide_prefs", 0).getBoolean(str, false);
      break;
      label115: localIntent.setClass(localWelcomeActivity, MainActivity.class);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ex
 * JD-Core Version:    0.6.2
 */
package com.tencent.connect.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.tencent.connect.b.u;
import com.tencent.connect.b.v;
import com.tencent.open.utils.g;

public abstract class b
{
  public static String g = null;
  public static String h = null;
  public static String i = null;
  public static boolean j = false;
  protected u e = null;
  public v f;

  private b(v paramv)
  {
    this.f = paramv;
  }

  public b(v paramv, byte paramByte)
  {
    this(paramv);
  }

  public static void a(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    paramIntent.putExtra("key_request_code", paramInt);
    Intent localIntent = new Intent(paramActivity.getApplicationContext(), AssistActivity.class);
    localIntent.putExtra("is_login", true);
    localIntent.putExtra("openSDK_LOG.AssistActivity.ExtraIntent", paramIntent);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }

  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("format", "json");
    localBundle.putString("status_os", Build.VERSION.RELEASE);
    localBundle.putString("status_machine", Build.MODEL);
    localBundle.putString("status_version", Build.VERSION.SDK);
    localBundle.putString("sdkv", "2.9.4.lite");
    localBundle.putString("sdkp", "a");
    if ((this.f != null) && (this.f.a()))
    {
      localBundle.putString("access_token", this.f.b);
      localBundle.putString("oauth_consumer_key", this.f.a);
      localBundle.putString("openid", this.f.c);
      localBundle.putString("appid_for_getting_config", this.f.a);
    }
    SharedPreferences localSharedPreferences = g.a().getSharedPreferences("pfStore", 0);
    if (j)
    {
      localBundle.putString("pf", "desktop_m_qq-" + h + "-android-" + g + "-" + i);
      return localBundle;
    }
    localBundle.putString("pf", localSharedPreferences.getString("pf", "openmobile_android"));
    return localBundle;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.common.b
 * JD-Core Version:    0.6.2
 */
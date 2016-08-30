package com.tencent.connect.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.webkit.CookieSyncManager;
import com.tencent.connect.common.c;
import com.tencent.open.a.h;
import com.tencent.open.utils.g;
import com.tencent.open.utils.n;
import com.tencent.open.utils.o;
import com.tencent.open.utils.p;
import com.tencent.open.utils.s;
import java.lang.ref.WeakReference;

public final class a extends com.tencent.connect.common.b
{
  public static String a = "libwbsafeedit";
  public static String b = a + ".so";
  com.tencent.tauth.b c;
  WeakReference<Activity> d;
  private String k;

  static
  {
    String str = Build.CPU_ABI;
    if ((str != null) && (!str.equals("")))
    {
      if (str.equalsIgnoreCase("arm64-v8a"))
      {
        a = "libwbsafeedit_64";
        b = a + ".so";
        h.c("openSDK_LOG.AuthAgent", "is arm64-v8a architecture");
        return;
      }
      if (str.equalsIgnoreCase("x86"))
      {
        a = "libwbsafeedit_x86";
        b = a + ".so";
        h.c("openSDK_LOG.AuthAgent", "is x86 architecture");
        return;
      }
      if (str.equalsIgnoreCase("x86_64"))
      {
        a = "libwbsafeedit_x86_64";
        b = a + ".so";
        h.c("openSDK_LOG.AuthAgent", "is x86_64 architecture");
        return;
      }
      a = "libwbsafeedit";
      b = a + ".so";
      h.c("openSDK_LOG.AuthAgent", "is arm(default) architecture");
      return;
    }
    a = "libwbsafeedit";
    b = a + ".so";
    h.c("openSDK_LOG.AuthAgent", "is arm(default) architecture");
  }

  public a(v paramv)
  {
    super(paramv, (byte)0);
  }

  public final int a(Activity paramActivity, String paramString, com.tencent.tauth.b paramb)
  {
    int i = 0;
    this.k = paramString;
    this.d = new WeakReference(paramActivity);
    this.c = paramb;
    h.c("openSDK_LOG.AuthAgent", "startActionActivity() -- start");
    paramb = new Intent();
    if (s.e(g.a()))
    {
      paramb.setClassName("com.tencent.minihd.qq", "com.tencent.open.agent.AgentActivity");
      if (o.a(g.a(), paramb))
      {
        paramString = paramb;
        if (paramString == null)
          break label396;
        paramb = a();
        paramb.putString("scope", this.k);
        paramb.putString("client_id", this.f.a);
        if (!j)
          break label385;
        paramb.putString("pf", "desktop_m_qq-" + h + "-android-" + g + "-" + i);
        label154: paramb.putString("need_pay", "1");
        Context localContext = g.a();
        paramb.putString("oauth_app_name", localContext.getApplicationInfo().loadLabel(localContext.getPackageManager()).toString());
        paramString.putExtra("key_action", "action_login");
        paramString.putExtra("key_params", paramb);
        if (!o.a(g.a(), paramString))
          break label396;
        this.c = new d(this, this.c);
        c.a().a(11101, this.c);
        h.b("openSDK_LOG.AuthAgent", "startAssitActivity activity");
        a(paramActivity, paramString, 11101);
        h.c("openSDK_LOG.AuthAgent", "startActionActivity() -- end, found activity for loginIntent");
        com.tencent.open.b.d.a();
        com.tencent.open.b.d.a(0, "LOGIN_CHECK_SDK", "1000", this.f.a, "", Long.valueOf(SystemClock.elapsedRealtime()), "");
        i = 1;
      }
    }
    while (true)
    {
      if (i == 0)
        break label439;
      h.c("openSDK_LOG.AuthAgent", "OpenUi, showUi, return Constants.UI_ACTIVITY");
      com.tencent.open.b.d.a();
      com.tencent.open.b.d.a(this.f.c, this.f.a, "2", "310", "5", "0", "0", "0");
      return 1;
      paramb.setClassName("com.tencent.mobileqq", "com.tencent.open.agent.AgentActivity");
      paramString = paramb;
      if (o.a(g.a(), paramb))
        break;
      paramString = null;
      break;
      label385: paramb.putString("pf", "openmobile_android");
      break label154;
      label396: com.tencent.open.b.d.a();
      com.tencent.open.b.d.a(1, "LOGIN_CHECK_SDK", "1000", this.f.a, "", Long.valueOf(SystemClock.elapsedRealtime()), "startActionActivity fail");
      h.c("openSDK_LOG.AuthAgent", "startActionActivity() -- end, no target activity for loginIntent");
    }
    label439: com.tencent.open.b.d.a();
    com.tencent.open.b.d.a(this.f.c, this.f.a, "2", "310", "5", "1", "0", "0");
    h.d("openSDK_LOG.AuthAgent", "doLogin startActivity fail show dialog.");
    this.c = new d(this, this.c);
    paramActivity = this.c;
    h.c("openSDK_LOG.AuthAgent", "OpenUi, showDialog -- start");
    CookieSyncManager.createInstance(g.a());
    paramString = a();
    paramString.putString("scope", this.k);
    paramString.putString("client_id", this.f.a);
    if (j)
      paramString.putString("pf", "desktop_m_qq-" + h + "-android-" + g + "-" + i);
    while (true)
    {
      paramb = System.currentTimeMillis() / 1000L;
      paramString.putString("sign", o.b(g.a(), paramb));
      paramString.putString("time", paramb);
      paramString.putString("display", "mobile");
      paramString.putString("response_type", "token");
      paramString.putString("redirect_uri", "auth://tauth.qq.com/");
      paramString.putString("cancel_display", "1");
      paramString.putString("switch", "1");
      paramString.putString("status_userip", s.a());
      paramb = new StringBuilder();
      paramb.append(n.a().a(g.a(), "http://openmobile.qq.com/oauth2.0/m_authorize?"));
      paramb.append(s.a(paramString));
      paramString = paramb.toString();
      paramActivity = new i(this, g.a(), paramActivity);
      h.b("openSDK_LOG.AuthAgent", "OpenUi, showDialog TDialog");
      p.a(new b(this, paramString, paramActivity));
      h.c("openSDK_LOG.AuthAgent", "OpenUi, showDialog -- end");
      return 2;
      paramString.putString("pf", "openmobile_android");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.a
 * JD-Core Version:    0.6.2
 */
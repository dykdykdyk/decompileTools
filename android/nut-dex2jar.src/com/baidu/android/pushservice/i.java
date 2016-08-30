package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.g;
import com.baidu.android.pushservice.e.aa;
import com.baidu.android.pushservice.e.ac;
import com.baidu.android.pushservice.e.ad;
import com.baidu.android.pushservice.e.n;
import com.baidu.android.pushservice.e.p;
import com.baidu.android.pushservice.e.q;
import com.baidu.android.pushservice.e.r;
import com.baidu.android.pushservice.e.w;
import com.baidu.android.pushservice.e.x;
import com.baidu.android.pushservice.e.y;
import com.baidu.android.pushservice.e.z;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.message.PublicMsg;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class i
{
  private Context a;
  private t b;
  private ExecutorService c;

  i(Context paramContext)
  {
    this.a = paramContext;
    this.b = new t(paramContext);
    com.baidu.android.pushservice.c.b.a(paramContext);
    com.baidu.android.pushservice.c.l.a(paramContext);
    com.baidu.android.pushservice.c.j.a(paramContext);
    g.a(paramContext);
    j.a(paramContext);
    this.c = new ThreadPoolExecutor(3, 100, 0L, TimeUnit.MILLISECONDS, new SynchronousQueue());
  }

  private void A(Intent paramIntent)
  {
    boolean bool = paramIntent.getBooleanExtra("force_send", false);
    this.b.a(bool, null);
  }

  private void B(Intent paramIntent)
  {
    PushSettings.b(this.a, 0);
  }

  private void b(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    String str1 = paramIntent.getStringExtra("bind_name");
    int i = paramIntent.getIntExtra("bind_status", 0);
    int j = paramIntent.getIntExtra("push_sdk_version", 0);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_BIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", bindName:" + str1 + ", bindStatus:" + i);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "apiKey:" + locall.i);
    com.baidu.android.pushservice.util.m.a("Time of bind request back is:" + System.currentTimeMillis(), this.a);
    String str2 = com.baidu.android.pushservice.c.b.a(this.a).e(locall.e);
    if ((!TextUtils.isEmpty(locall.i)) && (com.baidu.android.pushservice.c.b.a(this.a).b(locall.e, locall.i)) && (!TextUtils.isEmpty(str2)))
    {
      paramIntent = new Intent();
      paramIntent.putExtra("method", locall.a);
      paramIntent.putExtra("error_msg", 0);
      paramIntent.putExtra("content", str2.getBytes());
      paramIntent.putExtra("bind_status", i);
      com.baidu.android.pushservice.h.a.c("RegistrationService", "> sendResult to " + locall.e + " ,method:" + locall.a + " ,errorCode : 0 ,content : " + new String(str2));
      if (a.b() > 0)
        t.a(this.a, "039902", 2, str2);
      com.baidu.android.pushservice.util.m.a(this.a, paramIntent, "com.baidu.android.pushservice.action.RECEIVE", locall.e);
      com.baidu.android.pushservice.h.a.d("RegistrationService", "Already binded, no need to bind anymore");
    }
    while (true)
    {
      return;
      com.baidu.android.pushservice.util.m.a("Time of bind request start at : " + System.currentTimeMillis(), this.a);
      if (a.b() > 0)
        t.a(this.a, "039902", 0, str2);
      boolean bool;
      if (paramIntent.hasExtra("bind_notify_status"))
      {
        paramIntent = paramIntent.getStringExtra("bind_notify_status");
        bool = a(new com.baidu.android.pushservice.e.f(locall, this.a, i, str1, j, paramIntent));
        com.baidu.android.pushservice.h.a.c("RegistrationService", " notifystatus = " + paramIntent);
      }
      while (!bool)
      {
        com.baidu.android.pushservice.h.a.e("RegistrationService", "submitApiProcessor failed bind " + locall.toString());
        com.baidu.android.pushservice.util.m.a("submitApiProcessor failed bind " + locall.toString(), this.a);
        new Thread(new com.baidu.android.pushservice.e.f(locall, this.a, i, str1, j)).start();
        return;
        bool = a(new com.baidu.android.pushservice.e.f(locall, this.a, i, str1, j));
      }
    }
  }

  private void c(Intent paramIntent)
  {
    Object localObject = new com.baidu.android.pushservice.c.k(paramIntent.getStringExtra("secret_key"));
    com.baidu.android.pushservice.c.l.a(this.a).a((com.baidu.android.pushservice.c.a)localObject, true);
    localObject = new com.baidu.android.pushservice.e.l(paramIntent);
    String str = paramIntent.getStringExtra("bind_name");
    int i = paramIntent.getIntExtra("bind_status", 0);
    int j = paramIntent.getIntExtra("push_sdk_version", 0);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_WEB_APP_BIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + ((com.baidu.android.pushservice.e.l)localObject).e + ", bindName:" + str + ", bindStatus:" + i);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + ((com.baidu.android.pushservice.e.l)localObject).d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "apiKey:" + ((com.baidu.android.pushservice.e.l)localObject).i);
    a(new com.baidu.android.pushservice.e.f((com.baidu.android.pushservice.e.l)localObject, this.a, i, str, j));
  }

  private void d(Intent paramIntent)
  {
    Object localObject = new com.baidu.android.pushservice.c.f(paramIntent.getStringExtra("secret_key"));
    g.a(this.a).a((com.baidu.android.pushservice.c.a)localObject, true);
    localObject = new com.baidu.android.pushservice.e.l(paramIntent);
    String str = paramIntent.getStringExtra("bind_name");
    int i = paramIntent.getIntExtra("bind_status", 0);
    int j = paramIntent.getIntExtra("push_sdk_version", 0);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_LAPP_BIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + ((com.baidu.android.pushservice.e.l)localObject).e + ", bindName:" + str + ", bindStatus:" + i);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + ((com.baidu.android.pushservice.e.l)localObject).d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "apiKey:" + ((com.baidu.android.pushservice.e.l)localObject).i);
    a(new com.baidu.android.pushservice.e.f((com.baidu.android.pushservice.e.l)localObject, this.a, i, str, j));
  }

  private void e(Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("secret_key");
    com.baidu.android.pushservice.c.f localf = (com.baidu.android.pushservice.c.f)g.a(this.a).c(paramIntent);
    Intent localIntent = new Intent();
    localIntent.setAction("com.baidu.android.pushservice.action.lapp.RECEIVE");
    localIntent.putExtra("method", "method_get_lapp_bind_state");
    localIntent.putExtra("secret_key", paramIntent);
    if (localf != null)
      localIntent.putExtra("lapp_bind_state", true);
    while (true)
    {
      this.a.sendBroadcast(localIntent);
      return;
      localIntent.putExtra("lapp_bind_state", false);
    }
  }

  private void f(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    String str = paramIntent.getStringExtra("bind_name");
    int i = paramIntent.getIntExtra("bind_status", 0);
    int j = paramIntent.getIntExtra("push_sdk_version", 0);
    int k = paramIntent.getIntExtra("sdk_client_version", 0);
    paramIntent = new com.baidu.android.pushservice.c.i(locall.i, locall.e);
    paramIntent.a(k);
    com.baidu.android.pushservice.c.j.a(this.a).a(paramIntent, true);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_SDK_BIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", bindName:" + str + ", bindStatus:" + i);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new com.baidu.android.pushservice.e.f(locall, this.a, i, str, j));
  }

  private void g(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_UNBIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "apiKey:" + paramIntent.i);
    if ((!TextUtils.isEmpty(paramIntent.e)) && (!TextUtils.isEmpty(paramIntent.i)))
    {
      com.baidu.android.pushservice.c.h localh = com.baidu.android.pushservice.c.b.a(this.a).c(paramIntent.e);
      if ((localh != null) && (!TextUtils.isEmpty(localh.a())))
        paramIntent.f = localh.a();
      com.baidu.android.pushservice.c.b.a(this.a).f(paramIntent.e);
    }
    a(new ac(paramIntent, this.a));
  }

  private void h(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_SDK_UNBIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "apiKey:" + paramIntent.i);
    a(new ac(paramIntent, this.a));
  }

  private void i(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "<<< METHOD_LAPP_UNBIND ");
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "apiKey:" + paramIntent.i);
    a(new ac(paramIntent, this.a));
  }

  private boolean j(Intent paramIntent)
  {
    String str2 = paramIntent.getStringExtra("package_name");
    String str1 = paramIntent.getStringExtra("app_id");
    Object localObject = str1;
    if (TextUtils.isEmpty(str1))
    {
      com.baidu.android.pushservice.c.h localh = com.baidu.android.pushservice.c.b.a(this.a).c(str2);
      localObject = str1;
      if (localh != null)
        localObject = localh.a();
    }
    str1 = paramIntent.getStringExtra("user_id");
    com.baidu.android.pushservice.h.a.c("RegistrationService", "<<< METHOD_UNBIND_APP ");
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + str2);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "appid:" + (String)localObject);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "userid:" + str1);
    PushSettings.b(this.a, str2);
    paramIntent = new com.baidu.android.pushservice.e.l();
    paramIntent.a = "com.baidu.android.pushservice.action.UNBINDAPP";
    if (!TextUtils.isEmpty(str2))
      paramIntent.e = str2;
    if (!TextUtils.isEmpty((CharSequence)localObject))
      paramIntent.f = ((String)localObject);
    if (!TextUtils.isEmpty(str1))
      paramIntent.g = str1;
    if (!TextUtils.isEmpty(paramIntent.e))
    {
      localObject = com.baidu.android.pushservice.c.b.a(this.a).c(paramIntent.e);
      if ((localObject != null) && (!TextUtils.isEmpty(((com.baidu.android.pushservice.c.h)localObject).a())))
        paramIntent.f = ((com.baidu.android.pushservice.c.h)localObject).a();
      com.baidu.android.pushservice.c.b.a(this.a).f(paramIntent.e);
    }
    return a(new ad(paramIntent, this.a));
  }

  private void k(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    int i = paramIntent.getIntExtra("fetch_type", 1);
    int j = paramIntent.getIntExtra("fetch_num", 1);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_FETCH ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new com.baidu.android.pushservice.e.m(locall, this.a, i, j));
  }

  private void l(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_COUNT ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    a(new com.baidu.android.pushservice.e.h(paramIntent, this.a));
  }

  private void m(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringArrayExtra("msg_ids");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_DELETE ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new com.baidu.android.pushservice.e.k(locall, this.a, paramIntent));
  }

  private void n(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringExtra("gid");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< ACTION_GBIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", gid:" + paramIntent);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new com.baidu.android.pushservice.e.o(locall, this.a, paramIntent));
  }

  private void o(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringExtra("tags");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< ACTION_SET_TAGS ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", gid:" + paramIntent);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new aa(locall, this.a, paramIntent));
  }

  private void p(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringExtra("tags");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< ACTION_GBIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", gid:" + paramIntent);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new com.baidu.android.pushservice.e.j(locall, this.a, paramIntent));
  }

  private void q(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringExtra("gid");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< ACTION_GUNBIND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", gid:" + paramIntent);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new r(locall, this.a, paramIntent));
  }

  private void r(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringExtra("gid");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_GINFO ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e + ", gid:" + paramIntent);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    a(new p(locall, this.a, paramIntent));
  }

  private void s(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_LISTTAGS ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    a(new w(paramIntent, this.a));
  }

  private void t(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_GLIST ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    a(new q(paramIntent, this.a));
  }

  private void u(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    String str = paramIntent.getStringExtra("gid");
    int i = paramIntent.getIntExtra("group_fetch_type", 1);
    int j = paramIntent.getIntExtra("group_fetch_num", 1);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_FETCHGMSG ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "gid:" + str);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "fetchType:" + i);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "fetchNum:" + j);
    a(new n(locall, this.a, str, i, j));
  }

  private void v(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    paramIntent = paramIntent.getStringExtra("gid");
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_COUNTGMSG ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "gid:" + paramIntent);
    a(new com.baidu.android.pushservice.e.i(locall, this.a, paramIntent));
  }

  private void w(Intent paramIntent)
  {
    paramIntent = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_ONLINE ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + paramIntent.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + paramIntent.d);
    a(new x(paramIntent, this.a));
  }

  private void x(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_SEND ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    paramIntent = paramIntent.getStringExtra("push_ msg");
    a(new y(locall, this.a, paramIntent));
  }

  private void y(Intent paramIntent)
  {
    com.baidu.android.pushservice.e.l locall = new com.baidu.android.pushservice.e.l(paramIntent);
    com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< METHOD_SEND_MSG_TO_USER ", this.a);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "packageName:" + locall.e);
    com.baidu.android.pushservice.h.a.c("RegistrationService", "accessToken:" + locall.d);
    String str1 = paramIntent.getStringExtra("app_id");
    String str2 = paramIntent.getStringExtra("user_id");
    String str3 = paramIntent.getStringExtra("push_ msg_key");
    paramIntent = paramIntent.getStringExtra("push_ msg");
    a(new z(locall, this.a, str1, str2, str3, paramIntent));
  }

  private void z(Intent paramIntent)
  {
    com.baidu.android.pushservice.h.a.c("RegistrationService", "<<< handleSendAppStat ");
    this.b.a();
    this.b.a(false, null);
  }

  public boolean a(Intent paramIntent)
  {
    String str1 = null;
    boolean bool1 = false;
    boolean bool2 = true;
    if ((paramIntent == null) || (TextUtils.isEmpty(paramIntent.getAction())))
    {
      bool1 = false;
      return bool1;
    }
    com.baidu.android.pushservice.h.a.c("RegistrationService", "RegistrationSerice handleIntent : " + paramIntent);
    String str2 = paramIntent.getAction();
    com.baidu.android.pushservice.h.b.a("RegistrationService", "handleIntent...action = " + str2, this.a);
    if ("com.baidu.android.pushservice.action.OPENDEBUGMODE".equals(str2))
    {
      PushSettings.enableDebugMode(this.a, true);
      com.baidu.android.pushservice.h.b.a("RegistrationService", "<<<debugMode is open", this.a);
      return true;
    }
    if ("com.baidu.android.pushservice.action.CLOSEDEBUGMODE".equals(str2))
    {
      PushSettings.enableDebugMode(this.a, false);
      com.baidu.android.pushservice.h.b.a("RegistrationService", "<<<debugMode is close", this.a);
      return true;
    }
    if (("com.baidu.pushservice.action.publicmsg.CLICK_V2".equals(str2)) || ("com.baidu.pushservice.action.publicmsg.DELETE_V2".equals(str2)))
    {
      localObject = (PublicMsg)paramIntent.getParcelableExtra("public_msg");
      paramIntent = paramIntent.getData().getHost();
      ((PublicMsg)localObject).handle(this.a, str2, paramIntent);
      return true;
    }
    if (("com.baidu.android.pushservice.action.privatenotification.CLICK".equals(str2)) || ("com.baidu.android.pushservice.action.privatenotification.DELETE".equals(str2)))
    {
      localObject = (PublicMsg)paramIntent.getParcelableExtra("public_msg");
      str1 = paramIntent.getStringExtra("app_id");
      paramIntent = paramIntent.getStringExtra("msg_id");
      ((PublicMsg)localObject).handlePrivateNotification(this.a, str2, paramIntent, str1);
      return true;
    }
    if (("com.baidu.android.pushservice.action.passthrough.notification.CLICK".equals(str2)) || ("com.baidu.android.pushservice.action.passthrough.notification.DELETE".equals(str2)) || ("com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED".equals(str2)))
    {
      com.baidu.android.pushservice.util.m.a("push_passthrough: receive  click delete and notified action", this.a);
      com.baidu.android.pushservice.h.a.c("RegistrationService", "handle passthrough notification " + str2);
      if (!paramIntent.hasExtra("app_id"))
        break label1667;
    }
    label1667: for (Object localObject = paramIntent.getStringExtra("app_id"); ; localObject = null)
    {
      if (paramIntent.hasExtra("msg_id"))
        str1 = paramIntent.getStringExtra("msg_id");
      com.baidu.android.pushservice.i.o.a(this.a, str1, (String)localObject, str2);
      return true;
      String str3;
      String str4;
      String str5;
      if (("com.baidu.android.pushservice.action.adnotification.ADCLICK".equals(str2)) || ("com.baidu.android.pushservice.action.adnotification.ADDELETE".equals(str2)) || ("com.baidu.android.pushservice.action.adnotification.ADCLICKFAILED".equals(str2)))
      {
        com.baidu.android.pushservice.util.m.a("pushadvertise: receive  click or delete action", this.a);
        localObject = (PublicMsg)paramIntent.getParcelableExtra("ad_msg");
        str1 = paramIntent.getStringExtra("app_id");
        str3 = paramIntent.getStringExtra("msg_id");
        str4 = paramIntent.getStringExtra("action_type");
        str5 = paramIntent.getStringExtra("click_url");
        paramIntent = paramIntent.getStringExtra("advertise_Style");
        ((PublicMsg)localObject).handleADNotification(this.a, str2, str3, str1, str4, str5, paramIntent);
        return true;
      }
      if ("com.baidu.android.pushservice.action.adnotification.ADSHOW".equals(str2))
      {
        if (a.b() > 0)
          com.baidu.android.pushservice.util.m.a("pushadvertise: receive show action  com.baidu.android.pushservice.action.adnotification.ADSHOW", this.a);
        localObject = (PublicMsg)paramIntent.getParcelableExtra("ad_msg");
        str1 = paramIntent.getStringExtra("app_id");
        str3 = paramIntent.getStringExtra("message_id");
        str4 = paramIntent.getStringExtra("action_type");
        str5 = paramIntent.getStringExtra("advertisestyle");
        ((PublicMsg)localObject).handleADShowNotification(this.a, str3, str1, str4, str5);
      }
      int i;
      if ("com.baidu.android.pushservice.action.setadswitch.ADFAILED".equals(str2))
      {
        if (a.b() > 0)
          com.baidu.android.pushservice.util.m.a("pushadvertise: receive  action  com.baidu.android.pushservice.action.setadswitch.ADFAILED", this.a);
        i = paramIntent.getIntExtra("ad_status", 0);
        localObject = paramIntent.getStringExtra("app_id");
        str1 = paramIntent.getStringExtra("channel_id");
        str3 = paramIntent.getStringExtra("cuid");
        short s = paramIntent.getShortExtra("sdkversion", (short)0);
        PublicMsg.insertADSetEnableFailed(this.a, "010504", i, (String)localObject, str1, str3, s);
      }
      if ("com.baidu.android.pushservice.action.ADACKERROR".equals(str2))
      {
        if (a.b() > 0)
          com.baidu.android.pushservice.util.m.a("pushadvertise: receive  action  com.baidu.android.pushservice.action.ADACKERROR", this.a);
        localObject = paramIntent.getStringExtra("app_id");
        str1 = paramIntent.getStringExtra("channel_id");
        str3 = paramIntent.getStringExtra("cuid");
        i = paramIntent.getIntExtra("error_code", 0);
        str4 = paramIntent.getStringExtra("error_msg");
        str5 = paramIntent.getStringExtra("ad_id");
        PublicMsg.insertADSendACKFailed(this.a, "010505", (String)localObject, str1, str3, str5, i, str4);
      }
      if (("com.baidu.android.pushservice.action.media.CLICK".equals(str2)) || ("com.baidu.android.pushservice.action.media.DELETE".equals(str2)))
      {
        localObject = (PublicMsg)paramIntent.getParcelableExtra("public_msg");
        paramIntent = paramIntent.getStringExtra("app_id");
        ((PublicMsg)localObject).handleRichMediaNotification(this.a, str2, paramIntent);
        return true;
      }
      if ("com.baidu.android.pushservice.action.lightapp.notification.CLICK".equals(str2))
      {
        com.baidu.android.pushservice.message.a.f.a(this.a, paramIntent);
        return true;
      }
      if ("com.baidu.android.pushservice.action.lightapp.notification.DELETE".equals(str2))
      {
        com.baidu.android.pushservice.message.a.f.b(this.a, paramIntent);
        return true;
      }
      if ("com.baidu.pushservice.action.TOKEN".equals(str2))
      {
        com.baidu.android.pushservice.h.b.a("RegistrationService", "<<< ACTION_TOKEN ", this.a);
        bool1 = bool2;
        if (j.a(this.a).d())
          break;
        j.a(this.a).a(this.a, true);
        return true;
      }
      if (!"com.baidu.android.pushservice.action.METHOD".equals(str2))
        return false;
      localObject = paramIntent.getStringExtra("method");
      if ("method_bind".equals(localObject))
      {
        b(paramIntent);
        bool1 = true;
      }
      while (true)
      {
        return bool1;
        if ("method_webapp_bind_from_deeplink".equals(localObject))
        {
          paramIntent = paramIntent.getStringExtra("com.baidu.pushservice.webapp.apikey");
          PushManager.startWork(this.a, 3, paramIntent);
          bool1 = true;
        }
        else if ("method_deal_webapp_bind_intent".equals(localObject))
        {
          c(paramIntent);
          bool1 = true;
        }
        else if ("method_deal_lapp_bind_intent".equals(localObject))
        {
          d(paramIntent);
          bool1 = true;
        }
        else if ("method_get_lapp_bind_state".equals(localObject))
        {
          e(paramIntent);
          bool1 = true;
        }
        else if ("method_sdk_bind".equals(localObject))
        {
          f(paramIntent);
          bool1 = true;
        }
        else if ("method_unbind".equals(localObject))
        {
          g(paramIntent);
          bool1 = true;
        }
        else if ("method_sdk_unbind".equals(localObject))
        {
          h(paramIntent);
          bool1 = true;
        }
        else if ("method_lapp_unbind".equals(localObject))
        {
          i(paramIntent);
          bool1 = true;
        }
        else if ("com.baidu.android.pushservice.action.UNBINDAPP".equals(localObject))
        {
          j(paramIntent);
          bool1 = true;
        }
        else if ("method_fetch".equals(localObject))
        {
          k(paramIntent);
          bool1 = true;
        }
        else if ("method_count".equals(localObject))
        {
          l(paramIntent);
          bool1 = true;
        }
        else if ("method_delete".equals(localObject))
        {
          m(paramIntent);
          bool1 = true;
        }
        else if ("method_gbind".equals(localObject))
        {
          n(paramIntent);
          bool1 = true;
        }
        else if (("method_set_tags".equals(localObject)) || ("method_set_sdk_tags".equals(localObject)) || ("method_set_lapp_tags".equals(localObject)))
        {
          o(paramIntent);
          bool1 = true;
        }
        else if (("method_del_tags".equals(localObject)) || ("method_del_sdk_tags".equals(localObject)) || ("method_del_lapp_tags".equals(localObject)))
        {
          p(paramIntent);
          bool1 = true;
        }
        else if ("method_gunbind".equals(localObject))
        {
          q(paramIntent);
          bool1 = true;
        }
        else if ("method_ginfo".equals(localObject))
        {
          r(paramIntent);
          bool1 = true;
        }
        else if ("method_glist".equals(localObject))
        {
          t(paramIntent);
          bool1 = true;
        }
        else if (("method_listtags".equals(localObject)) || ("method_list_sdk_tags".equals(localObject)) || ("method_list_lapp_tags".equals(localObject)))
        {
          s(paramIntent);
          bool1 = true;
        }
        else if ("method_fetchgmsg".equals(localObject))
        {
          u(paramIntent);
          bool1 = true;
        }
        else if ("method_countgmsg".equals(localObject))
        {
          v(paramIntent);
          bool1 = true;
        }
        else if ("method_online".equals(localObject))
        {
          w(paramIntent);
          bool1 = true;
        }
        else if ("method_send".equals(localObject))
        {
          x(paramIntent);
          bool1 = true;
        }
        else if ("com.baidu.android.pushservice.action.SEND_APPSTAT".equals(localObject))
        {
          z(paramIntent);
          bool1 = true;
        }
        else if ("com.baidu.android.pushservice.action.SEND_LBS".equals(localObject))
        {
          A(paramIntent);
          bool1 = true;
        }
        else if ("com.baidu.android.pushservice.action.ENBALE_APPSTAT".equals(localObject))
        {
          B(paramIntent);
          bool1 = true;
        }
        else if ("method_send_msg_to_user".equals(localObject))
        {
          y(paramIntent);
          bool1 = true;
        }
      }
    }
  }

  public boolean a(com.baidu.android.pushservice.e.a parama)
  {
    try
    {
      if (!this.c.isShutdown())
      {
        this.c.submit(parama);
        return true;
      }
    }
    catch (RejectedExecutionException parama)
    {
      com.baidu.android.pushservice.h.b.b("RegistrationService", "Add submitApiProcessor failed threadpool is shutdown " + parama.getMessage(), this.a);
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i
 * JD-Core Version:    0.6.2
 */
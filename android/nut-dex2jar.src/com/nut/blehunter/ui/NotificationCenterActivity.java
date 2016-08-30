package com.nut.blehunter.ui;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.ui.b.a.t;
import com.sina.weibo.sdk.api.BaseMediaObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.a.i;
import com.tencent.connect.b.v;
import com.tencent.connect.c.e;
import com.tencent.open.utils.o;
import com.tencent.open.utils.s;
import java.io.File;
import java.util.List;
import java.util.UUID;

public class NotificationCenterActivity extends b
  implements com.nut.blehunter.ui.b.a.u, com.sina.weibo.sdk.api.a.f
{
  private WebView m;
  private ProgressBar n;
  private String o;
  private String p = "";
  private com.sina.weibo.sdk.api.a.g q;
  private com.tencent.tauth.c r;
  private Menu s;

  private void b(boolean paramBoolean)
  {
    MenuItem localMenuItem;
    if (this.s != null)
    {
      localMenuItem = this.s.findItem(2131558923);
      if (paramBoolean)
        break label34;
    }
    label34: for (paramBoolean = true; ; paramBoolean = false)
    {
      localMenuItem.setVisible(paramBoolean);
      return;
    }
  }

  private boolean g()
  {
    try
    {
      if (this.q.a())
        return true;
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://c.Weibo.cn")));
      return false;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private boolean h()
  {
    int i;
    try
    {
      List localList = getPackageManager().getInstalledPackages(0);
      if (localList != null)
      {
        i = 0;
        if (i < localList.size())
          if (((PackageInfo)localList.get(i)).packageName.equals("com.tencent.mobileqq"))
          {
            i = 1;
            break label74;
            label51: startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://im.qq.com/")));
            return false;
          }
      }
    }
    catch (Exception localException)
    {
      return false;
    }
    while (true)
    {
      label74: if (i == 0)
        break label51;
      return true;
      i += 1;
      break;
      i = 0;
    }
  }

  public final void a(com.sina.weibo.sdk.api.a.c paramc)
  {
    switch (paramc.b)
    {
    case 1:
    default:
      return;
    case 0:
      com.nut.blehunter.d.n.b(this, 2131100051);
      return;
    case 2:
    }
    com.nut.blehunter.d.n.b(this, 2131100050);
  }

  public final void d(int paramInt)
  {
    new com.nut.blehunter.c.b();
    Object localObject1 = com.nut.blehunter.c.b.a(this, 1);
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    do
    {
      do
      {
        return;
        ((com.nut.blehunter.c.g)localObject1).a(this.m.getUrl(), this.m.getTitle(), null, null, false);
        return;
        ((com.nut.blehunter.c.g)localObject1).a(this.m.getUrl(), this.m.getTitle(), null, null, true);
        return;
      }
      while (!g());
      this.q.b();
      localObject1 = new com.sina.weibo.sdk.api.h();
      localObject2 = new WebpageObject();
      ((WebpageObject)localObject2).c = UUID.randomUUID().toString().replace("-", "");
      ((WebpageObject)localObject2).d = this.m.getTitle();
      ((WebpageObject)localObject2).e = " ";
      ((WebpageObject)localObject2).a(BitmapFactory.decodeResource(getResources(), 2130837998));
      ((WebpageObject)localObject2).a = this.m.getUrl();
      ((WebpageObject)localObject2).g = getText(2131099730).toString();
      ((com.sina.weibo.sdk.api.h)localObject1).c = ((BaseMediaObject)localObject2);
      localObject2 = new i();
      ((i)localObject2).a = String.valueOf(System.currentTimeMillis());
      ((i)localObject2).b = ((com.sina.weibo.sdk.api.h)localObject1);
      this.q.a(this, (com.sina.weibo.sdk.api.a.b)localObject2);
      return;
    }
    while (!h());
    Object localObject3 = new Bundle();
    ((Bundle)localObject3).putInt("req_type", 1);
    ((Bundle)localObject3).putString("title", this.m.getTitle());
    ((Bundle)localObject3).putString("targetUrl", this.m.getUrl());
    ((Bundle)localObject3).putString("appName", getString(2131099730));
    localObject1 = this.r;
    Object localObject2 = new ck(this);
    com.tencent.open.a.h.c("openSDK_LOG.Tencent", "shareToQQ()");
    com.tencent.connect.c.a locala = new com.tencent.connect.c.a(((com.tencent.tauth.c)localObject1).a.a);
    com.tencent.open.a.h.c("openSDK_LOG.QQShare", "shareToQQ() -- start.");
    Object localObject4 = ((Bundle)localObject3).getString("imageUrl");
    String str1 = ((Bundle)localObject3).getString("title");
    String str2 = ((Bundle)localObject3).getString("summary");
    localObject1 = ((Bundle)localObject3).getString("targetUrl");
    String str3 = ((Bundle)localObject3).getString("imageLocalUrl");
    paramInt = ((Bundle)localObject3).getInt("req_type", 1);
    com.tencent.open.a.h.c("openSDK_LOG.QQShare", "shareToQQ -- type: " + paramInt);
    switch (paramInt)
    {
    case 3:
    case 4:
    default:
    case 1:
    case 2:
    case 5:
    case 6:
    }
    while (paramInt == 6)
      if (o.c(this, "5.0.0") < 0)
      {
        ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-15, "手Q版本过低，应用分享只支持手Q5.0及其以上版本", null));
        com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ, app share is not support below qq5.0.");
        com.tencent.open.b.d.a();
        com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "shareToQQ, app share is not support below qq5.0.");
        return;
        locala.a = "1";
        continue;
        locala.a = "3";
        continue;
        locala.a = "2";
        continue;
        locala.a = "4";
      }
      else
      {
        localObject1 = String.format("http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1", new Object[] { locala.f.a, "mqq" });
        ((Bundle)localObject3).putString("targetUrl", (String)localObject1);
      }
    if ((!s.b()) && (o.c(this, "4.5.0") < 0))
    {
      ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "分享图片失败，检测不到SD卡!", null));
      com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ sdcard is null--end");
      com.tencent.open.b.d.a();
      com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "shareToQQ sdcard is null");
      return;
    }
    if (paramInt == 5)
    {
      if (o.c(this, "4.3.0") < 0)
      {
        ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "低版本手Q不支持该项功能!", null));
        com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ, version below 4.3 is not support.");
        com.tencent.open.b.d.a();
        com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "shareToQQ, version below 4.3 is not support.");
        return;
      }
      if (!s.g(str3))
      {
        ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "非法的图片地址!", null));
        com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ -- error: 非法的图片地址!");
        com.tencent.open.b.d.a();
        com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "非法的图片地址!");
        return;
      }
    }
    if (paramInt != 5)
    {
      if ((TextUtils.isEmpty((CharSequence)localObject1)) || ((!((String)localObject1).startsWith("http://")) && (!((String)localObject1).startsWith("https://"))))
      {
        ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "传入参数有误!", null));
        com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ, targetUrl is empty or illegal..");
        com.tencent.open.b.d.a();
        com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "shareToQQ, targetUrl is empty or illegal..");
        return;
      }
      if (TextUtils.isEmpty(str1))
      {
        ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "title不能为空!", null));
        com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ, title is empty.");
        com.tencent.open.b.d.a();
        com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "shareToQQ, title is empty.");
        return;
      }
    }
    if ((!TextUtils.isEmpty((CharSequence)localObject4)) && (!((String)localObject4).startsWith("http://")) && (!((String)localObject4).startsWith("https://")) && (!new File((String)localObject4).exists()))
    {
      ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "非法的图片地址!", null));
      com.tencent.open.a.h.e("openSDK_LOG.QQShare", "shareToQQ, image url is emprty or illegal.");
      com.tencent.open.b.d.a();
      com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "shareToQQ, image url is emprty or illegal.");
      return;
    }
    if ((!TextUtils.isEmpty(str1)) && (str1.length() > 45))
      ((Bundle)localObject3).putString("title", s.a(str1, 45));
    if ((!TextUtils.isEmpty(str2)) && (str2.length() > 60))
      ((Bundle)localObject3).putString("summary", s.a(str2, 60));
    if (s.a(this))
    {
      com.tencent.open.a.h.c("openSDK_LOG.QQShare", "shareToQQ, support share");
      com.tencent.open.a.h.c("openSDK_LOG.QQShare", "shareToMobileQQ() -- start.");
      localObject1 = ((Bundle)localObject3).getString("imageUrl");
      str1 = ((Bundle)localObject3).getString("title");
      str2 = ((Bundle)localObject3).getString("summary");
      com.tencent.open.a.h.a("openSDK_LOG.QQShare", "shareToMobileQQ -- imageUrl: " + (String)localObject1);
      if (!TextUtils.isEmpty((CharSequence)localObject1))
        if (s.f((String)localObject1))
          if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2)))
          {
            ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "分享图片失败，检测不到SD卡!", null));
            com.tencent.open.a.h.e("openSDK_LOG.QQShare", "分享图片失败，检测不到SD卡!");
            com.tencent.open.b.d.a();
            com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", locala.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "分享图片失败，检测不到SD卡!");
          }
    }
    while (true)
    {
      com.tencent.open.a.h.c("openSDK_LOG.QQShare", "shareToQQ() -- end.");
      return;
      if (o.c(this, "4.3.0") < 0)
      {
        localObject4 = new com.tencent.open.utils.c(this);
        localObject2 = new com.tencent.connect.c.b(locala, (Bundle)localObject3, str1, str2, (com.tencent.tauth.b)localObject2, this);
        com.tencent.open.a.h.a("AsynLoadImg", "--save---");
        if ((localObject1 == null) || (((String)localObject1).equals("")))
          ((com.tencent.open.utils.f)localObject2).a(1, null);
      }
      while (true)
      {
        com.tencent.open.a.h.c("openSDK_LOG.QQShare", "shareToMobileQQ() -- end");
        break;
        if (!s.b())
        {
          ((com.tencent.open.utils.f)localObject2).a(2, null);
        }
        else
        {
          com.tencent.open.utils.c.c = Environment.getExternalStorageDirectory() + "/tmp/";
          ((com.tencent.open.utils.c)localObject4).d = System.currentTimeMillis();
          ((com.tencent.open.utils.c)localObject4).a = ((String)localObject1);
          ((com.tencent.open.utils.c)localObject4).b = ((com.tencent.open.utils.f)localObject2);
          new Thread(((com.tencent.open.utils.c)localObject4).f).start();
          continue;
          ((Bundle)localObject3).putString("imageUrl", null);
          if (o.c(this, "4.3.0") < 0)
          {
            com.tencent.open.a.h.b("openSDK_LOG.QQShare", "shareToMobileQQ -- QQ Version is < 4.3.0 ");
            locala.a(this, (Bundle)localObject3, (com.tencent.tauth.b)localObject2);
          }
          else
          {
            com.tencent.open.a.h.b("openSDK_LOG.QQShare", "shareToMobileQQ -- QQ Version is > 4.3.0 ");
            localObject2 = new com.tencent.connect.c.c(locala, (Bundle)localObject3, str1, str2, (com.tencent.tauth.b)localObject2, this);
            com.tencent.open.a.h.b("openSDK_LOG.AsynScaleCompressImage", "scaleCompressImage");
            if (TextUtils.isEmpty((CharSequence)localObject1))
              ((com.tencent.open.utils.f)localObject2).a(1, null);
            else if (!s.b())
              ((com.tencent.open.utils.f)localObject2).a(2, null);
            else
              new Thread(new com.tencent.connect.c.f((String)localObject1, new e(getMainLooper(), (com.tencent.open.utils.f)localObject2))).start();
          }
        }
      }
      try
      {
        com.tencent.open.a.h.d("openSDK_LOG.QQShare", "shareToQQ, don't support share, will show download dialog");
        localObject1 = locala.a();
        localObject3 = new StringBuilder();
        if (!TextUtils.isEmpty(""))
          ((Bundle)localObject1).putString("need_version", "");
        ((StringBuilder)localObject3).append("http://openmobile.qq.com/oauth2.0/m_jump_by_version?");
        ((StringBuilder)localObject3).append(s.a((Bundle)localObject1));
        new com.tencent.open.a(this, "", ((StringBuilder)localObject3).toString(), locala.f).show();
      }
      catch (RuntimeException localRuntimeException)
      {
        com.tencent.open.a.h.b("openSDK_LOG.QQShare", " shareToQQ, TDialog.show not in main thread", localRuntimeException);
        localRuntimeException.printStackTrace();
        ((com.tencent.tauth.b)localObject2).a(new com.tencent.tauth.d(-6, "没有在主线程调用！", null));
      }
    }
  }

  public void onBackPressed()
  {
    if (this.m.canGoBack())
    {
      this.m.goBack();
      return;
    }
    super.onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    b(2131099989);
    this.o = getIntent().getStringExtra("URL");
    paramBundle = m.a().b();
    if (paramBundle != null)
      this.p = (com.nut.blehunter.a.s + paramBundle.i);
    this.m = ((WebView)findViewById(2131558584));
    this.n = ((ProgressBar)findViewById(2131558585));
    this.m.setScrollBarStyle(33554432);
    new com.umeng.analytics.d(this, this.m, new WebChromeClient());
    WebView localWebView = this.m;
    if (TextUtils.isEmpty(this.o));
    for (paramBundle = this.p; ; paramBundle = this.o)
    {
      localWebView.loadUrl(paramBundle);
      this.m.setWebViewClient(new cl(this, (byte)0));
      if (Build.VERSION.SDK_INT >= 21)
        this.m.getSettings().setMixedContentMode(0);
      if (Build.VERSION.SDK_INT >= 19)
      {
        paramBundle = getApplicationInfo();
        int i = paramBundle.flags & 0x2;
        paramBundle.flags = i;
        if (i != 0)
          WebView.setWebContentsDebuggingEnabled(true);
      }
      this.q = new com.sina.weibo.sdk.api.a.n(this, getString(2131100175));
      this.r = com.tencent.tauth.c.a(getString(2131100172), getApplicationContext());
      return;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.s = paramMenu;
    getMenuInflater().inflate(2131623946, paramMenu);
    b(true);
    return true;
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.q.a(paramIntent, this);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558923)
    {
      t.a().show(getFragmentManager(), "notification_share");
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.NotificationCenterActivity
 * JD-Core Version:    0.6.2
 */
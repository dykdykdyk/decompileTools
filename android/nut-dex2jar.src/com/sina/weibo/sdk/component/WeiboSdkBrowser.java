package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.sina.weibo.sdk.net.h;
import java.lang.reflect.Method;

public class WeiboSdkBrowser extends Activity
  implements d
{
  private static final String a = WeiboSdkBrowser.class.getName();
  private String b;
  private String c;
  private boolean d;
  private String e;
  private boolean f;
  private TextView g;
  private TextView h;
  private WebView i;
  private com.sina.weibo.sdk.component.a.a j;
  private LinearLayout k;
  private Button l;
  private Boolean m = Boolean.valueOf(false);
  private e n;
  private p o;

  public static void a(Activity paramActivity, String paramString1, String paramString2)
  {
    j localj = j.a(paramActivity.getApplicationContext());
    if (!TextUtils.isEmpty(paramString1))
    {
      localj.b(paramString1);
      paramActivity.finish();
    }
    if (!TextUtils.isEmpty(paramString2))
    {
      localj.d(paramString2);
      paramActivity.finish();
    }
  }

  private static boolean a(e parame)
  {
    return (parame != null) && (parame.c() == c.b);
  }

  private void d()
  {
    String str = "";
    if (!TextUtils.isEmpty(this.c))
      str = this.c;
    while (true)
    {
      this.h.setText(str);
      return;
      if (!TextUtils.isEmpty(this.b))
        str = this.b;
    }
  }

  private void e()
  {
    this.k.setVisibility(0);
    this.i.setVisibility(8);
  }

  private void e(String paramString)
  {
    this.i.loadUrl(paramString);
  }

  private static boolean f(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (!"sinaweibo".equalsIgnoreCase(Uri.parse(paramString).getAuthority()))
      return false;
    return true;
  }

  public final void a()
  {
    com.sina.weibo.sdk.d.i.a(a, "onReceivedSslErrorCallBack.........");
  }

  public final void a(int paramInt, String paramString1, String paramString2)
  {
    com.sina.weibo.sdk.d.i.a(a, "onReceivedError: errorCode = " + paramInt + ", description = " + paramString1 + ", failingUrl = " + paramString2);
    if (!paramString2.startsWith("sinaweibo"))
    {
      this.f = true;
      e();
    }
  }

  public final void a(String paramString)
  {
    com.sina.weibo.sdk.d.i.a(a, "onPageStarted URL: " + paramString);
    this.e = paramString;
    if (!f(paramString))
      this.c = "";
  }

  protected final void b()
  {
    if (this.d)
    {
      this.h.setText(com.sina.weibo.sdk.d.l.a("Loading....", "加载中....", "載入中...."));
      this.j.setVisibility(0);
      return;
    }
    d();
    this.j.setVisibility(8);
  }

  public final boolean b(String paramString)
  {
    com.sina.weibo.sdk.d.i.b(a, "shouldOverrideUrlLoading URL: " + paramString);
    return false;
  }

  public final void c(String paramString)
  {
    com.sina.weibo.sdk.d.i.a(a, "onPageFinished URL: " + paramString);
    if (this.f)
    {
      e();
      return;
    }
    this.f = false;
    this.k.setVisibility(8);
    this.i.setVisibility(0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject1 = getIntent().getExtras();
    this.m = Boolean.valueOf(false);
    paramBundle = (c)((Bundle)localObject1).getSerializable("key_launcher");
    if (paramBundle == c.a)
    {
      paramBundle = new a(this);
      paramBundle.c((Bundle)localObject1);
      this.o = new b(this, paramBundle);
      this.o.a(this);
    }
    while (true)
    {
      this.n = paramBundle;
      if (this.n != null)
      {
        this.e = this.n.b();
        this.b = this.n.d();
        label107: if (!TextUtils.isEmpty(this.e))
          break label323;
      }
      for (int i1 = 0; ; i1 = 1)
      {
        if (i1 != 0)
          break label354;
        finish();
        return;
        if (paramBundle == c.b)
        {
          paramBundle = new g(this);
          paramBundle.c((Bundle)localObject1);
          localObject2 = new i(this, paramBundle);
          ((i)localObject2).a(this);
          this.o = ((p)localObject2);
          break;
        }
        if (paramBundle == c.c)
        {
          paramBundle = new q(this);
          paramBundle.c((Bundle)localObject1);
          localObject2 = new s(this, paramBundle);
          ((s)localObject2).a(this);
          this.o = ((p)localObject2);
          break;
        }
        if (paramBundle != c.e)
          break label1690;
        this.m = Boolean.valueOf(true);
        paramBundle = new f(this);
        paramBundle.c((Bundle)localObject1);
        localObject2 = new k(this, paramBundle);
        ((k)localObject2).a(this);
        this.o = ((p)localObject2);
        break;
        paramBundle = ((Bundle)localObject1).getString("key_url");
        localObject1 = ((Bundle)localObject1).getString("key_specify_title");
        if ((TextUtils.isEmpty(paramBundle)) || (!paramBundle.startsWith("http")))
          break label107;
        this.e = paramBundle;
        this.b = ((String)localObject1);
        break label107;
        label323: com.sina.weibo.sdk.d.i.a(a, "LOAD URL : " + this.e);
      }
      label354: paramBundle = new RelativeLayout(this);
      paramBundle.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      paramBundle.setBackgroundColor(-1);
      localObject1 = new LinearLayout(this);
      ((LinearLayout)localObject1).setId(1);
      ((LinearLayout)localObject1).setOrientation(1);
      ((LinearLayout)localObject1).setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
      Object localObject2 = new RelativeLayout(this);
      ((RelativeLayout)localObject2).setLayoutParams(new ViewGroup.LayoutParams(-1, com.sina.weibo.sdk.d.l.a(this, 45)));
      ((RelativeLayout)localObject2).setBackgroundDrawable(com.sina.weibo.sdk.d.l.b(this, "weibosdk_navigationbar_background.9.png"));
      this.g = new TextView(this);
      this.g.setClickable(true);
      this.g.setTextSize(2, 17.0F);
      this.g.setTextColor(com.sina.weibo.sdk.d.l.a());
      this.g.setText(com.sina.weibo.sdk.d.l.a("Close", "关闭", "关闭"));
      Object localObject3 = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject3).addRule(5);
      ((RelativeLayout.LayoutParams)localObject3).addRule(15);
      ((RelativeLayout.LayoutParams)localObject3).leftMargin = com.sina.weibo.sdk.d.l.a(this, 10);
      ((RelativeLayout.LayoutParams)localObject3).rightMargin = com.sina.weibo.sdk.d.l.a(this, 10);
      this.g.setLayoutParams((ViewGroup.LayoutParams)localObject3);
      ((RelativeLayout)localObject2).addView(this.g);
      this.h = new TextView(this);
      this.h.setTextSize(2, 18.0F);
      this.h.setTextColor(-11382190);
      this.h.setEllipsize(TextUtils.TruncateAt.END);
      this.h.setSingleLine(true);
      this.h.setGravity(17);
      this.h.setMaxWidth(com.sina.weibo.sdk.d.l.a(this, 160));
      localObject3 = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject3).addRule(13);
      this.h.setLayoutParams((ViewGroup.LayoutParams)localObject3);
      ((RelativeLayout)localObject2).addView(this.h);
      localObject3 = new TextView(this);
      ((TextView)localObject3).setLayoutParams(new LinearLayout.LayoutParams(-1, com.sina.weibo.sdk.d.l.a(this, 2)));
      ((TextView)localObject3).setBackgroundDrawable(com.sina.weibo.sdk.d.l.b(this, "weibosdk_common_shadow_top.9.png"));
      this.j = new com.sina.weibo.sdk.component.a.a(this);
      this.j.setBackgroundColor(0);
      this.j.a(0);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, com.sina.weibo.sdk.d.l.a(this, 3));
      this.j.setLayoutParams(localLayoutParams);
      ((LinearLayout)localObject1).addView((View)localObject2);
      ((LinearLayout)localObject1).addView((View)localObject3);
      ((LinearLayout)localObject1).addView(this.j);
      this.i = new WebView(this);
      this.i.setBackgroundColor(-1);
      localObject2 = new RelativeLayout.LayoutParams(-1, -1);
      ((RelativeLayout.LayoutParams)localObject2).addRule(3, 1);
      this.i.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      this.k = new LinearLayout(this);
      this.k.setVisibility(8);
      this.k.setOrientation(1);
      this.k.setGravity(17);
      localObject2 = new RelativeLayout.LayoutParams(-1, -1);
      ((RelativeLayout.LayoutParams)localObject2).addRule(3, 1);
      this.k.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localObject2 = new ImageView(this);
      ((ImageView)localObject2).setImageDrawable(com.sina.weibo.sdk.d.l.a(this, "weibosdk_empty_failed.png"));
      localObject3 = new LinearLayout.LayoutParams(-2, -2);
      i1 = com.sina.weibo.sdk.d.l.a(this, 8);
      ((LinearLayout.LayoutParams)localObject3).bottomMargin = i1;
      ((LinearLayout.LayoutParams)localObject3).rightMargin = i1;
      ((LinearLayout.LayoutParams)localObject3).topMargin = i1;
      ((LinearLayout.LayoutParams)localObject3).leftMargin = i1;
      ((ImageView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      this.k.addView((View)localObject2);
      localObject2 = new TextView(this);
      ((TextView)localObject2).setGravity(1);
      ((TextView)localObject2).setTextColor(-4342339);
      ((TextView)localObject2).setTextSize(2, 14.0F);
      ((TextView)localObject2).setText(com.sina.weibo.sdk.d.l.a("A network error occurs, please tap the button to reload", "网络出错啦，请点击按钮重新加载", "網路出錯啦，請點擊按鈕重新載入"));
      ((TextView)localObject2).setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
      this.k.addView((View)localObject2);
      this.l = new Button(this);
      this.l.setGravity(17);
      this.l.setTextColor(-8882056);
      this.l.setTextSize(2, 16.0F);
      this.l.setText(com.sina.weibo.sdk.d.l.a("channel_data_error", "重新加载", "重新載入"));
      this.l.setBackgroundDrawable(com.sina.weibo.sdk.d.l.a(this, "weibosdk_common_button_alpha.9.png", "weibosdk_common_button_alpha_highlighted.9.png"));
      localObject2 = new LinearLayout.LayoutParams(com.sina.weibo.sdk.d.l.a(this, 142), com.sina.weibo.sdk.d.l.a(this, 46));
      ((LinearLayout.LayoutParams)localObject2).topMargin = com.sina.weibo.sdk.d.l.a(this, 10);
      this.l.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      this.l.setOnClickListener(new n(this));
      this.k.addView(this.l);
      paramBundle.addView((View)localObject1);
      paramBundle.addView(this.i);
      paramBundle.addView(this.k);
      setContentView(paramBundle);
      this.h.setText(this.b);
      this.g.setOnClickListener(new m(this));
      this.i.getSettings().setJavaScriptEnabled(true);
      if (a(this.n))
      {
        paramBundle = this.i.getSettings();
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(Build.MANUFACTURER).append("-").append(Build.MODEL);
        ((StringBuilder)localObject1).append("_");
        ((StringBuilder)localObject1).append(Build.VERSION.RELEASE);
        ((StringBuilder)localObject1).append("_");
        ((StringBuilder)localObject1).append("weibosdk");
        ((StringBuilder)localObject1).append("_");
        ((StringBuilder)localObject1).append("0031405000");
        ((StringBuilder)localObject1).append("_android");
        paramBundle.setUserAgentString(((StringBuilder)localObject1).toString());
      }
      this.i.getSettings().setSavePassword(false);
      this.i.setWebViewClient(this.o);
      this.i.setWebChromeClient(new o(this, (byte)0));
      this.i.requestFocus();
      this.i.setScrollBarStyle(0);
      if (Build.VERSION.SDK_INT >= 11)
      {
        this.i.removeJavascriptInterface("searchBoxJavaBridge_");
        if (!a(this.n))
          break label1681;
        com.sina.weibo.sdk.d.i.a(a, "Enter startShare()............");
        localObject2 = (g)this.n;
        if (!((g)localObject2).e())
          break label1672;
        com.sina.weibo.sdk.d.i.a(a, "loadUrl hasImage............");
        paramBundle = new com.sina.weibo.sdk.net.k(((g)localObject2).c);
        if (((g)localObject2).e())
          break label1650;
      }
      while (true)
      {
        while (true)
        {
          localObject1 = new com.sina.weibo.sdk.net.a(this);
          localObject2 = new l(this, (g)localObject2);
          com.sina.weibo.sdk.b.i.a(((com.sina.weibo.sdk.net.a)localObject1).a, paramBundle.b).a();
          new com.sina.weibo.sdk.net.c(((com.sina.weibo.sdk.net.a)localObject1).a, "http://service.weibo.com/share/mobilesdk_uppic.php", paramBundle, "POST", (h)localObject2).execute(new Void[1]);
          return;
          paramBundle = this.i;
          if (Build.VERSION.SDK_INT >= 11)
            break;
          try
          {
            paramBundle.getClass().getDeclaredMethod("removeJavascriptInterface", new Class[0]).invoke("searchBoxJavaBridge_", new Object[0]);
          }
          catch (Exception paramBundle)
          {
            com.sina.weibo.sdk.d.i.c(a, paramBundle.toString());
          }
        }
        break;
        label1650: paramBundle.a("img", new String(((g)localObject2).h));
      }
      label1672: e(this.e);
      return;
      label1681: e(this.e);
      return;
      label1690: paramBundle = null;
    }
  }

  protected void onDestroy()
  {
    CookieSyncManager.createInstance(this);
    CookieManager.getInstance().removeAllCookie();
    CookieSyncManager.getInstance().sync();
    super.onDestroy();
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.n != null)
        this.n.a(this);
      finish();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.WeiboSdkBrowser
 * JD-Core Version:    0.6.2
 */
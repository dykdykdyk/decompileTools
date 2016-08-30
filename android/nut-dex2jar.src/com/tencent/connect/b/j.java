package com.tencent.connect.b;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.open.a.h;
import com.tencent.open.utils.g;
import com.tencent.open.web.security.c;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;

public final class j extends Dialog
{
  com.tencent.open.c.b a;
  private String b;
  private p c;
  private com.tencent.tauth.b d;
  private Handler e;
  private FrameLayout f;
  private LinearLayout g;
  private FrameLayout h;
  private ProgressBar i;
  private String j;
  private Context k;
  private c l;
  private boolean m = false;
  private int n;
  private String o;
  private String p;
  private long q = 0L;
  private long r = 30000L;
  private HashMap<String, Runnable> s;

  static
  {
    try
    {
      Context localContext = g.a();
      if (localContext != null)
      {
        if (new File(localContext.getFilesDir().toString() + "/" + a.b).exists())
        {
          System.load(localContext.getFilesDir().toString() + "/" + a.b);
          h.c("openSDK_LOG.AuthDialog", "-->load lib success:" + a.b);
          return;
        }
        h.c("openSDK_LOG.AuthDialog", "-->fail, because so is not exists:" + a.b);
        return;
      }
    }
    catch (Exception localException)
    {
      h.b("openSDK_LOG.AuthDialog", "-->load lib error:" + a.b, localException);
      return;
    }
    h.c("openSDK_LOG.AuthDialog", "-->load lib fail, because context is null:" + a.b);
  }

  public j(Context paramContext, String paramString1, String paramString2, com.tencent.tauth.b paramb, v paramv)
  {
    super(paramContext, 16973840);
    this.k = paramContext;
    this.b = paramString2;
    this.c = new p(this, paramString1, paramString2, paramv.a, paramb);
    this.e = new q(this, this.c, paramContext.getMainLooper());
    this.d = paramb;
    this.j = paramString1;
    this.l = new c();
    getWindow().setSoftInputMode(32);
  }

  public final void dismiss()
  {
    this.s.clear();
    this.e.removeCallbacksAndMessages(null);
    if (isShowing())
      super.dismiss();
    if (this.a != null)
    {
      this.a.destroy();
      this.a = null;
    }
  }

  public final void onBackPressed()
  {
    if (!this.m)
      this.c.a();
    super.onBackPressed();
  }

  protected final void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    this.i = new ProgressBar(this.k);
    paramBundle = new LinearLayout.LayoutParams(-2, -2);
    this.i.setLayoutParams(paramBundle);
    this.g = new LinearLayout(this.k);
    paramBundle = null;
    Object localObject;
    if (this.j.equals("action_login"))
    {
      localObject = new LinearLayout.LayoutParams(-2, -2);
      ((LinearLayout.LayoutParams)localObject).gravity = 16;
      ((LinearLayout.LayoutParams)localObject).leftMargin = 5;
      paramBundle = new TextView(this.k);
      if (!Locale.getDefault().getLanguage().equals("zh"))
        break label663;
      paramBundle.setText("登录中...");
    }
    while (true)
    {
      paramBundle.setTextColor(Color.rgb(255, 255, 255));
      paramBundle.setTextSize(18.0F);
      paramBundle.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new FrameLayout.LayoutParams(-2, -2);
      ((FrameLayout.LayoutParams)localObject).gravity = 17;
      this.g.setLayoutParams((ViewGroup.LayoutParams)localObject);
      this.g.addView(this.i);
      if (paramBundle != null)
        this.g.addView(paramBundle);
      this.h = new FrameLayout(this.k);
      paramBundle = new FrameLayout.LayoutParams(-1, -2);
      paramBundle.leftMargin = 80;
      paramBundle.rightMargin = 80;
      paramBundle.topMargin = 40;
      paramBundle.bottomMargin = 40;
      paramBundle.gravity = 17;
      this.h.setLayoutParams(paramBundle);
      this.h.setBackgroundResource(17301504);
      this.h.addView(this.g);
      paramBundle = new FrameLayout.LayoutParams(-1, -1);
      this.a = new com.tencent.open.c.b(this.k);
      this.a.setLayoutParams(paramBundle);
      this.f = new FrameLayout(this.k);
      paramBundle.gravity = 17;
      this.f.setLayoutParams(paramBundle);
      this.f.addView(this.a);
      this.f.addView(this.h);
      setContentView(this.f);
      this.a.setVerticalScrollBarEnabled(false);
      this.a.setHorizontalScrollBarEnabled(false);
      this.a.setWebViewClient(new n(this, (byte)0));
      this.a.setWebChromeClient(new WebChromeClient());
      this.a.clearFormData();
      this.a.clearSslPreferences();
      this.a.setOnLongClickListener(new k(this));
      this.a.setOnTouchListener(new l(this));
      paramBundle = this.a.getSettings();
      paramBundle.setSavePassword(false);
      paramBundle.setSaveFormData(false);
      paramBundle.setCacheMode(-1);
      paramBundle.setNeedInitialFocus(false);
      paramBundle.setBuiltInZoomControls(true);
      paramBundle.setSupportZoom(true);
      paramBundle.setRenderPriority(WebSettings.RenderPriority.HIGH);
      paramBundle.setJavaScriptEnabled(true);
      paramBundle.setDatabaseEnabled(true);
      paramBundle.setDatabasePath(this.k.getDir("databases", 0).getPath());
      paramBundle.setDomStorageEnabled(true);
      h.a("openSDK_LOG.AuthDialog", "-->mUrl : " + this.b);
      this.o = this.b;
      this.a.loadUrl(this.b);
      this.a.setVisibility(4);
      this.a.getSettings().setSavePassword(false);
      this.l.a(new com.tencent.open.web.security.a(), "SecureJsInterface");
      com.tencent.open.web.security.a.a = false;
      super.setOnDismissListener(new m(this));
      this.s = new HashMap();
      return;
      label663: paramBundle.setText("Logging in...");
    }
  }

  protected final void onStop()
  {
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.j
 * JD-Core Version:    0.6.2
 */
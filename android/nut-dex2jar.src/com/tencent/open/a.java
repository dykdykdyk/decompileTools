package com.tencent.open;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.connect.b.v;
import com.tencent.open.a.h;
import java.io.File;
import java.lang.ref.WeakReference;

public final class a extends i
{
  static final FrameLayout.LayoutParams a = new FrameLayout.LayoutParams(-1, -1);
  static Toast b = null;
  private static WeakReference<ProgressDialog> f;
  private WeakReference<Context> e;
  private String g;
  private d h;
  private com.tencent.tauth.b i;
  private FrameLayout j;
  private com.tencent.open.c.a k;
  private Handler l;
  private boolean m = false;
  private v n = null;

  public a(Context paramContext, String paramString1, String paramString2, v paramv)
  {
    super(paramContext);
    this.e = new WeakReference(paramContext);
    this.g = paramString2;
    this.h = new d(paramContext, paramString1, paramString2, paramv.a);
    this.l = new e(this, this.h, paramContext.getMainLooper());
    this.i = null;
    this.n = paramv;
  }

  protected final void a(String paramString)
  {
    h.b("openSDK_LOG.TDialog", "--onConsoleMessage--");
    try
    {
      this.c.a(this.k, paramString);
      return;
    }
    catch (Exception paramString)
    {
    }
  }

  public final void onBackPressed()
  {
    if (this.h != null)
      this.h.a();
    super.onBackPressed();
  }

  protected final void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    new TextView((Context)this.e.get()).setText("test");
    paramBundle = new FrameLayout.LayoutParams(-1, -1);
    this.k = new com.tencent.open.c.a((Context)this.e.get());
    this.k.setLayoutParams(paramBundle);
    this.j = new FrameLayout((Context)this.e.get());
    paramBundle.gravity = 17;
    this.j.setLayoutParams(paramBundle);
    this.j.addView(this.k);
    setContentView(this.j);
    this.k.setVerticalScrollBarEnabled(false);
    this.k.setHorizontalScrollBarEnabled(false);
    this.k.setWebViewClient(new b(this, (byte)0));
    this.k.setWebChromeClient(this.d);
    this.k.clearFormData();
    paramBundle = this.k.getSettings();
    if (paramBundle != null)
    {
      paramBundle.setSavePassword(false);
      paramBundle.setSaveFormData(false);
      paramBundle.setCacheMode(-1);
      paramBundle.setNeedInitialFocus(false);
      paramBundle.setBuiltInZoomControls(true);
      paramBundle.setSupportZoom(true);
      paramBundle.setRenderPriority(WebSettings.RenderPriority.HIGH);
      paramBundle.setJavaScriptEnabled(true);
      if ((this.e != null) && (this.e.get() != null))
      {
        paramBundle.setDatabaseEnabled(true);
        paramBundle.setDatabasePath(((Context)this.e.get()).getApplicationContext().getDir("databases", 0).getPath());
      }
      paramBundle.setDomStorageEnabled(true);
      this.c.a(new c(this, (byte)0), "sdk_js_if");
      this.k.loadUrl(this.g);
      this.k.setLayoutParams(a);
      this.k.setVisibility(4);
      this.k.getSettings().setSavePassword(false);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.a
 * JD-Core Version:    0.6.2
 */
package com.baidu.android.pushservice.richmedia;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.baidu.android.pushservice.h.a;

public class MediaViewActivity extends Activity
{
  public WebView a;
  private RelativeLayout b;
  private WebChromeClient c = new MediaViewActivity.1(this);
  private WebViewClient d = new MediaViewActivity.2(this);

  @TargetApi(11)
  private void a()
  {
    this.a.removeJavascriptInterface("searchBoxJavaBridge_");
    this.a.removeJavascriptInterface("accessibility");
    this.a.removeJavascriptInterface("accessibilityTraversal");
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  @SuppressLint({"SetJavaScriptEnabled"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    getWindow().requestFeature(1);
    Object localObject = new LinearLayout.LayoutParams(-1, -1, 0.0F);
    this.b = new RelativeLayout(this);
    this.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
    this.b.setGravity(1);
    this.a = new WebView(this);
    if (Build.VERSION.SDK_INT >= 11)
      a();
    this.a.requestFocusFromTouch();
    this.a.setLongClickable(true);
    localObject = this.a.getSettings();
    ((WebSettings)localObject).setCacheMode(1);
    ((WebSettings)localObject).setDatabaseEnabled(true);
    ((WebSettings)localObject).setDomStorageEnabled(true);
    ((WebSettings)localObject).setAllowFileAccess(true);
    ((WebSettings)localObject).setAppCacheEnabled(true);
    ((WebSettings)localObject).setJavaScriptEnabled(true);
    ((WebSettings)localObject).setLightTouchEnabled(true);
    ((WebSettings)localObject).setDefaultTextEncodingName("utf-8");
    ((WebSettings)localObject).setSavePassword(false);
    this.a.setLayoutParams(new ActionBar.LayoutParams(-1, -1));
    this.a.setWebChromeClient(this.c);
    this.a.setWebViewClient(this.d);
    this.b.addView(this.a);
    setContentView(this.b);
    if ((this.b == null) || (this.a == null))
    {
      a.e("MediaViewActivity", "Set up Layout error.");
      finish();
    }
    a.c("MediaViewActivity", "uri=" + paramBundle.getData().toString());
    this.a.loadUrl(paramBundle.getData().toString());
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    a.c("MediaViewActivity", "uri=" + paramIntent.getData().toString());
    this.a.loadUrl(paramIntent.getData().toString());
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaViewActivity
 * JD-Core Version:    0.6.2
 */
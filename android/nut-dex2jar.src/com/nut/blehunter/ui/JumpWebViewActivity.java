package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.nut.blehunter.a;
import com.nut.blehunter.d.m;
import com.umeng.analytics.d;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class JumpWebViewActivity extends b
  implements View.OnClickListener
{
  private WebView m;
  private ProgressBar n;
  private String o;

  public void onBackPressed()
  {
    if (this.m.canGoBack())
    {
      this.m.goBack();
      return;
    }
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558580:
      this.m.goBack();
      return;
    case 2131558581:
      this.m.goForward();
      return;
    case 2131558583:
      this.m.reload();
      return;
    case 2131558582:
    }
    this.m.stopLoading();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    b(2131099730);
    this.o = getIntent().getStringExtra("URL");
    if (this.o.contains(a.o))
      b(2131099714);
    while (true)
    {
      this.m = ((WebView)findViewById(2131558584));
      this.n = ((ProgressBar)findViewById(2131558585));
      this.m.setScrollBarStyle(33554432);
      new d(this, this.m, new WebChromeClient());
      paramBundle = new HashMap();
      paramBundle.put("Accept-Language", m.b(this));
      this.m.loadUrl(this.o, paramBundle);
      this.m.setWebViewClient(new ar(this, (byte)0));
      if (Build.VERSION.SDK_INT >= 21)
        this.m.getSettings().setMixedContentMode(0);
      findViewById(2131558580).setOnClickListener(this);
      findViewById(2131558581).setOnClickListener(this);
      findViewById(2131558583).setOnClickListener(this);
      findViewById(2131558582).setOnClickListener(this);
      if (Build.VERSION.SDK_INT >= 19)
      {
        paramBundle = getApplicationInfo();
        int i = paramBundle.flags & 0x2;
        paramBundle.flags = i;
        if (i != 0)
          WebView.setWebContentsDebuggingEnabled(true);
      }
      return;
      if (this.o.contains(a.r))
        b(2131099916);
      else if (this.o.contains(a.l))
        b(2131100105);
      else if (this.o.contains(a.m))
        b(2131100019);
      else if (this.o.contains(a.k))
        b(2131099706);
      else if (this.o.contains(a.n))
        this.o += Locale.getDefault().getCountry();
    }
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.JumpWebViewActivity
 * JD-Core Version:    0.6.2
 */
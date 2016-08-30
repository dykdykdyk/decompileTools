package com.nut.blehunter.ui;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.b.j;
import android.text.TextUtils;
import android.widget.ListView;
import android.widget.TextView;
import b.a.a;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.ac;
import com.nut.blehunter.entity.ad;
import com.nut.blehunter.entity.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SelectWiFiActivity extends b
{
  private final BroadcastReceiver A = new ef(this);
  User m;
  private final int n = 1;
  private final int o = 11;
  private final int p = 12;
  private final int q = 13;
  private ListView r;
  private eh s;
  private List<ad> t;
  private TextView u;
  private ac v;
  private List<WifiConfiguration> w;
  private String x;
  private boolean y = false;
  private Handler z = new ed(this);

  private boolean a(String paramString1, String paramString2)
  {
    if (this.m == null);
    do
    {
      do
        return false;
      while ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)));
      paramString1 = this.m.a(paramString1);
    }
    while ((paramString1 == null) || (!paramString1.contains(paramString2)));
    return true;
  }

  private boolean c(String paramString)
  {
    if (this.m == null)
      return false;
    Object localObject = this.m.h();
    if (((ArrayList)localObject).isEmpty())
      return false;
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
      if (((String)((Iterator)localObject).next()).equals(paramString))
        return true;
    return false;
  }

  private boolean d(String paramString)
  {
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add("home");
    ((ArrayList)localObject).add("company");
    ((ArrayList)localObject).add("other");
    ((ArrayList)localObject).remove(this.x);
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
      if (a((String)((Iterator)localObject).next(), paramString))
        return true;
    return false;
  }

  private void g()
  {
    while (true)
    {
      int i;
      try
      {
        this.t.clear();
        Object localObject1 = this.m.h();
        Object localObject2 = this.v;
        ((ac)localObject2).a.startScan();
        ((ac)localObject2).b = ((ac)localObject2).a.getScanResults();
        ((ac)localObject2).c = ((ac)localObject2).a.getConfiguredNetworks();
        this.w = this.v.c;
        if (this.w != null)
        {
          i = 0;
          if (i < this.w.size())
          {
            localObject2 = ((WifiConfiguration)this.w.get(i)).SSID;
            localObject2 = ((String)localObject2).substring(1, ((String)localObject2).length() - 1);
            if (((List)localObject1).contains(localObject2))
              break label201;
            ((List)localObject1).add(localObject2);
            break label201;
          }
        }
        localObject1 = ((List)localObject1).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          localObject2 = new ad((String)localObject2, c((String)localObject2));
          this.t.add(localObject2);
          continue;
        }
      }
      catch (Exception localException)
      {
        a.b(localException, "initWIFIList Exception", new Object[0]);
      }
      return;
      label201: i += 1;
    }
  }

  public final int b(String paramString)
  {
    int i = 12;
    if (c(paramString))
    {
      if (a(this.x, paramString))
        if (!d(paramString))
          i = 11;
      while (d(paramString))
        return i;
    }
    return 13;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903100);
    b(2131100004);
    this.m = m.a().b();
    this.v = new ac(this);
    this.x = getIntent().getStringExtra("WIFIConf");
    this.r = ((ListView)findViewById(2131558702));
    this.u = ((TextView)findViewById(2131558701));
    this.t = new ArrayList();
    g();
    paramBundle = new IntentFilter();
    paramBundle.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    paramBundle.addAction("android.net.wifi.STATE_CHANGE");
    paramBundle.addAction("android.net.wifi.SCAN_RESULTS");
    j.a(this).a(this.A, paramBundle);
    this.s = new eh(this, this, this.t);
    this.r.setAdapter(this.s);
    this.r.setOnItemClickListener(new ee(this));
  }

  protected void onDestroy()
  {
    try
    {
      j.a(this).a(this.A);
      label11: super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      break label11;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.SelectWiFiActivity
 * JD-Core Version:    0.6.2
 */
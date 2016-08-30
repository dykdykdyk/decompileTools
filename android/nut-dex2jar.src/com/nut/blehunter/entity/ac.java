package com.nut.blehunter.entity;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.util.List;

public final class ac
{
  public WifiManager a;
  public List<ScanResult> b;
  public List<WifiConfiguration> c;
  private WifiInfo d;

  public ac(Context paramContext)
  {
    this.a = ((WifiManager)paramContext.getSystemService("wifi"));
    this.d = this.a.getConnectionInfo();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.ac
 * JD-Core Version:    0.6.2
 */
package com.baidu.loctp.str;

import android.net.wifi.ScanResult;
import java.util.List;

public class BDLocManager$WifiList
{
  public List<ScanResult> _WifiList = null;
  private long b = 0L;

  public BDLocManager$WifiList(List<ScanResult> paramList)
  {
    Object localObject;
    this._WifiList = localObject;
    this.b = System.currentTimeMillis();
    a();
  }

  private void a()
  {
    if (size() <= 0)
      return;
    int j = this._WifiList.size() - 1;
    int i = 1;
    label22: int k;
    if ((j > 0) && (i != 0))
    {
      k = 0;
      i = 0;
      label34: if (k < j)
      {
        if (((ScanResult)this._WifiList.get(k)).level >= ((ScanResult)this._WifiList.get(k + 1)).level)
          break label145;
        ScanResult localScanResult = (ScanResult)this._WifiList.get(k + 1);
        this._WifiList.set(k + 1, this._WifiList.get(k));
        this._WifiList.set(k, localScanResult);
        i = 1;
      }
    }
    label145: 
    while (true)
    {
      k += 1;
      break label34;
      j -= 1;
      break label22;
      break;
    }
  }

  private boolean b()
  {
    long l = System.currentTimeMillis() - this.b;
    return (l < 0L) || (l > 500L);
  }

  public int size()
  {
    if (this._WifiList == null)
      return 0;
    return this._WifiList.size();
  }

  public String toString(int paramInt)
  {
    Object localObject;
    if (size() <= 0)
    {
      localObject = null;
      return localObject;
    }
    boolean bool = BDLocManager.a(this.a);
    int k;
    int i;
    if (bool)
    {
      k = paramInt - 1;
      i = 0;
    }
    while (true)
    {
      StringBuffer localStringBuffer = new StringBuffer(512);
      int i1 = this._WifiList.size();
      int m = 0;
      int n = 0;
      paramInt = 1;
      int j = i;
      i = n;
      label70: String str;
      if (m < i1)
      {
        if (((ScanResult)this._WifiList.get(m)).level == 0)
          break label375;
        str = ((ScanResult)this._WifiList.get(m)).BSSID;
        n = ((ScanResult)this._WifiList.get(m)).level;
        str = str.replace(":", "");
        if ((BDLocManager.b(this.a) != null) && (str.equals(BDLocManager.b(this.a))))
        {
          BDLocManager.a(this.a, StrictMath.abs(n));
          n = i;
          j = 1;
          i = paramInt;
          paramInt = n;
        }
      }
      while (true)
      {
        label194: n = m + 1;
        m = i;
        i = paramInt;
        paramInt = m;
        m = n;
        break label70;
        if (i < k)
        {
          localStringBuffer.append("h");
          localStringBuffer.append(str);
          localStringBuffer.append("m");
          localStringBuffer.append(StrictMath.abs(n));
          paramInt = i + 1;
        }
        for (i = 0; ; i = n)
        {
          if (paramInt > k)
          {
            n = i;
            if (j != 0);
          }
          else
          {
            break label194;
            n = paramInt;
          }
          if (bool);
          for (str = "h" + BDLocManager.b(this.a) + "km" + BDLocManager.c(this.a); ; str = null)
          {
            localObject = str;
            if (n != 0)
              break;
            return str + localStringBuffer.toString();
          }
          n = paramInt;
          paramInt = i;
        }
        label375: n = paramInt;
        paramInt = i;
        i = n;
      }
      i = 1;
      k = paramInt;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.loctp.str.BDLocManager.WifiList
 * JD-Core Version:    0.6.2
 */
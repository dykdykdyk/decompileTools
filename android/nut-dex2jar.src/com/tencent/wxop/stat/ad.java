package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.d;
import com.tencent.wxop.stat.a.g;
import com.tencent.wxop.stat.b.b;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;

final class ad
  implements Runnable
{
  private Context a = null;
  private Map<String, Integer> b = null;
  private w c = null;

  public ad(Context paramContext)
  {
    this.a = paramContext;
    this.c = null;
  }

  private static s a(String paramString, int paramInt)
  {
    s locals = new s();
    Socket localSocket = new Socket();
    int i = 0;
    try
    {
      locals.c = paramString;
      locals.d = paramInt;
      long l = System.currentTimeMillis();
      paramString = new InetSocketAddress(paramString, paramInt);
      localSocket.connect(paramString, 30000);
      locals.a = (System.currentTimeMillis() - l);
      locals.e = paramString.getAddress().getHostAddress();
      localSocket.close();
      try
      {
        localSocket.close();
        paramInt = i;
        locals.b = paramInt;
        return locals;
      }
      catch (Throwable paramString)
      {
        while (true)
        {
          v.e().b(paramString);
          paramInt = i;
        }
      }
    }
    catch (IOException paramString)
    {
      while (true)
      {
        paramString = paramString;
        paramInt = -1;
        v.e().b(paramString);
        try
        {
          localSocket.close();
        }
        catch (Throwable paramString)
        {
          v.e().b(paramString);
        }
      }
    }
    finally
    {
    }
    try
    {
      localSocket.close();
      throw paramString;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        v.e().b(localThrowable);
    }
  }

  private static Map<String, Integer> a()
  {
    HashMap localHashMap = new HashMap();
    Object localObject = t.a("__MTA_TEST_SPEED__");
    if ((localObject == null) || (((String)localObject).trim().length() == 0))
      return localHashMap;
    localObject = ((String)localObject).split(";");
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = localObject[i].split(",");
      String str;
      if ((arrayOfString != null) && (arrayOfString.length == 2))
      {
        str = arrayOfString[0];
        if ((str == null) || (str.trim().length() == 0));
      }
      try
      {
        int k = Integer.valueOf(arrayOfString[1]).intValue();
        localHashMap.put(str, Integer.valueOf(k));
        i += 1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
          v.e().b(localNumberFormatException);
      }
    }
  }

  public final void run()
  {
    Object localObject;
    while (true)
    {
      Map.Entry localEntry;
      String str;
      try
      {
        if (this.b == null)
          this.b = a();
        if ((this.b == null) || (this.b.size() == 0))
        {
          v.e().a("empty domain list.");
          return;
        }
        JSONArray localJSONArray = new JSONArray();
        localObject = this.b.entrySet().iterator();
        if (!((Iterator)localObject).hasNext())
          break;
        localEntry = (Map.Entry)((Iterator)localObject).next();
        str = (String)localEntry.getKey();
        if ((str == null) || (str.length() == 0))
        {
          v.e().c("empty domain name.");
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        v.e().b(localThrowable);
        return;
      }
      if ((Integer)localEntry.getValue() == null)
        v.e().c("port is null for " + str);
      else
        localThrowable.put(a((String)localEntry.getKey(), ((Integer)localEntry.getValue()).intValue()).a());
    }
    if (localThrowable.length() != 0)
    {
      localObject = new g(this.a, v.a(this.a, this.c), this.c);
      ((g)localObject).a = localThrowable.toString();
      new ae((d)localObject).a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.ad
 * JD-Core Version:    0.6.2
 */
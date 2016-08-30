package com.baidu.android.pushservice.c;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class j extends e
{
  private static volatile j d;
  private static String e = "SDKClientManager";

  private j(Context paramContext)
  {
    super(paramContext, c.b);
  }

  public static j a(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new j(paramContext);
      while (true)
      {
        paramContext = d;
        return paramContext;
        d.b = paramContext.getApplicationContext();
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  public String a(List<a> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramList.size())
    {
      a locala = (a)paramList.get(i);
      localStringBuffer.append(locala.b());
      localStringBuffer.append(",");
      localStringBuffer.append(locala.c());
      localStringBuffer.append(",");
      localStringBuffer.append(locala.d());
      localStringBuffer.append(",");
      localStringBuffer.append(locala.a());
      if (i != paramList.size() - 1)
        localStringBuffer.append(";");
      i += 1;
    }
    return localStringBuffer.toString();
  }

  public ArrayList<a> a(String paramString)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
      localObject = null;
    ArrayList localArrayList;
    do
    {
      return localObject;
      localArrayList = new ArrayList();
      localObject = localArrayList;
    }
    while (TextUtils.isEmpty(paramString));
    paramString = paramString.trim().split(";");
    int j = paramString.length;
    int i = 0;
    while (true)
    {
      localObject = localArrayList;
      if (i >= j)
        break;
      String[] arrayOfString = paramString[i].trim().trim().split(",");
      if (arrayOfString.length >= 2)
        localObject = new i(arrayOfString[0], arrayOfString[1]);
      try
      {
        if (arrayOfString.length == 3)
          ((i)localObject).a(Integer.parseInt(arrayOfString[2]));
        while (true)
        {
          localArrayList.add(localObject);
          i += 1;
          break;
          if (arrayOfString.length == 4)
          {
            ((i)localObject).a(Integer.parseInt(arrayOfString[2]));
            ((i)localObject).a(arrayOfString[3]);
          }
        }
      }
      catch (Exception localException)
      {
        while (true)
          com.baidu.android.pushservice.h.a.c(e, "str2Clients E: " + localException);
      }
    }
  }

  public void a(i parami)
  {
    while (true)
    {
      synchronized (this.a)
      {
        if (!TextUtils.isEmpty(parami.a()))
        {
          Iterator localIterator = this.a.iterator();
          if (localIterator.hasNext())
          {
            a locala = (a)localIterator.next();
            if (!locala.b().equals(parami.b()))
              continue;
            locala.a(parami.a());
            i = 1;
            if (i != 0)
              parami = a(this.a);
            try
            {
              parami = com.baidu.android.pushservice.j.b.a(com.baidu.android.pushservice.j.a.a("2011121211143000", "1234567890123456", parami.getBytes()), "utf-8");
              com.baidu.android.pushservice.util.b.a(this.b, "com.baidu.push.sdkr", parami);
              return;
            }
            catch (Exception parami)
            {
              com.baidu.android.pushservice.h.a.e(e, "error : " + parami.getMessage());
              continue;
            }
          }
        }
      }
      int i = 0;
    }
  }

  public i d(String paramString)
  {
    i locali = null;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (!TextUtils.isEmpty(locala.a()))
      {
        if ((!locala.a().equals(paramString)) || ((locali != null) && (locali.d() >= locala.d())))
          break label80;
        locali = (i)locala;
      }
    }
    label80: 
    while (true)
    {
      break;
      return locali;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.c.j
 * JD-Core Version:    0.6.2
 */
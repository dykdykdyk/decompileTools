package com.baidu.android.pushservice.c;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class e
{
  protected ArrayList<a> a = new ArrayList();
  protected Context b;
  protected c c;

  public e(Context paramContext, c paramc)
  {
    this.b = paramContext.getApplicationContext();
    this.c = paramc;
    a();
  }

  public String a(a parama, boolean paramBoolean)
  {
    com.baidu.android.pushservice.h.a.c("IClientManager", "client sync addOrRemove:" + paramBoolean + ", " + parama);
    while (true)
    {
      synchronized (this.a)
      {
        Object localObject;
        a locala;
        if (!TextUtils.isEmpty(parama.a()))
        {
          localObject = this.a.iterator();
          if (!((Iterator)localObject).hasNext())
            break label391;
          locala = (a)((Iterator)localObject).next();
          if (((TextUtils.isEmpty(parama.b())) || (!TextUtils.equals(locala.b(), parama.b()))) && (!parama.a().equals(locala.a())))
            continue;
          this.a.remove(locala);
          if (!paramBoolean)
            break label386;
          this.a.add(parama);
          break label386;
          if ((i == 0) && (paramBoolean))
            this.a.add(parama);
          localObject = a(this.a);
          com.baidu.android.pushservice.h.a.c("IClientManager", "sync  strApps: " + (String)localObject);
          i = e.1.a[this.c.ordinal()];
        }
        switch (i)
        {
        default:
          parama = "";
          try
          {
            localObject = com.baidu.android.pushservice.j.b.a(com.baidu.android.pushservice.j.a.a("2011121211143000", "1234567890123456", ((String)localObject).getBytes()), "utf-8");
            com.baidu.android.pushservice.util.b.a(this.b, parama, (String)localObject);
            return localObject;
            localObject = this.a.iterator();
            if (((Iterator)localObject).hasNext())
            {
              locala = (a)((Iterator)localObject).next();
              if ((!TextUtils.isEmpty(parama.b())) && (TextUtils.equals(locala.b(), parama.b())))
                break label396;
              if (!TextUtils.isEmpty(locala.a()))
                continue;
            }
          }
          catch (Exception parama)
          {
            com.baidu.android.pushservice.h.a.e("IClientManager", "error : " + parama.getMessage());
            return "";
          }
        case 1:
        case 2:
        case 3:
        }
      }
      int i = 0;
      continue;
      label386: i = 1;
      continue;
      label391: i = 0;
      continue;
      label396: i = 1;
      continue;
      parama = "com.baidu.push.webr";
      continue;
      parama = "com.baidu.push.lappr";
      continue;
      parama = "com.baidu.push.sdkr";
    }
  }

  protected String a(List<a> paramList)
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
      localStringBuffer.append(locala.a());
      if (i != paramList.size() - 1)
        localStringBuffer.append(";");
      i += 1;
    }
    return localStringBuffer.toString();
  }

  protected ArrayList<a> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramString = null;
      return paramString;
    }
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = paramString.trim().split(";");
    int j = arrayOfString.length;
    int i = 0;
    while (true)
    {
      paramString = localArrayList;
      if (i >= j)
        break;
      paramString = arrayOfString[i].trim().trim().split(",");
      if ((paramString.length == 1) || (paramString.length == 2))
      {
        a locala = new a(paramString[0]);
        if (paramString.length == 2)
          locala.a(paramString[1]);
        localArrayList.add(locala);
      }
      i += 1;
    }
  }

  protected void a()
  {
    Object localObject = "";
    switch (e.1.a[this.c.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      localObject = com.baidu.android.pushservice.util.b.a(this.b, (String)localObject);
      if (TextUtils.isEmpty((CharSequence)localObject))
        break;
      try
      {
        localObject = new String(com.baidu.android.pushservice.j.a.b("2011121211143000", "1234567890123456", com.baidu.android.pushservice.j.b.a(((String)localObject).getBytes())));
        com.baidu.android.pushservice.h.a.b("IClientManager", "ClientManager init strApps : " + (String)localObject);
        localObject = a((String)localObject);
        if (localObject != null)
        {
          localObject = ((ArrayList)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            a locala = (a)((Iterator)localObject).next();
            this.a.add(locala);
          }
        }
      }
      catch (Exception localException)
      {
        com.baidu.android.pushservice.h.a.e("IClientManager", "error : " + localException.getMessage());
      }
      return;
      String str = "com.baidu.push.webr";
      continue;
      str = "com.baidu.push.lappr";
      continue;
      str = "com.baidu.push.sdkr";
    }
    com.baidu.android.pushservice.h.a.b("IClientManager", "ClientManager init strApps empty.");
  }

  public a b(String paramString)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((!TextUtils.isEmpty(locala.a())) && (locala.a().equals(paramString)))
        return locala;
    }
    return null;
  }

  public void b()
  {
    this.a.clear();
    a();
  }

  public a c(String paramString)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((!TextUtils.isEmpty(locala.b())) && (locala.b().equals(paramString)))
        return locala;
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.c.e
 * JD-Core Version:    0.6.2
 */
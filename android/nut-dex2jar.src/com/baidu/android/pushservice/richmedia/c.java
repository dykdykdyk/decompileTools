package com.baidu.android.pushservice.richmedia;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.util.LangUtils;

public class c
{
  public String a;
  public String b;
  public String c;
  public String d;
  protected c.a e;
  public HashMap<String, String> f = new HashMap();
  public boolean g = true;
  public boolean h = false;
  private String i;
  private Map<String, String> j = new HashMap();
  private String k;
  private String l;
  private String m;

  public c.a a()
  {
    return this.e;
  }

  public void a(c.a parama)
  {
    this.e = parama;
  }

  public void a(String paramString)
  {
    this.k = paramString;
  }

  public String b()
  {
    if (this.k == null)
      return "GET";
    return this.k;
  }

  public void b(String paramString)
  {
    this.l = paramString;
  }

  public String c()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (this.l != null)
      localStringBuffer.append(this.l);
    this.l = localStringBuffer.toString();
    if (this.l.endsWith("&"))
      return this.l.substring(0, this.l.length() - 1);
    return this.l;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    label47: label61: label75: label89: label103: label232: label247: 
    while (true)
    {
      return true;
      if (!(paramObject instanceof c))
        break;
      paramObject = (c)paramObject;
      if (this.i == null)
        if (paramObject.i == null)
        {
          if (this.e != null)
            break label147;
          if (paramObject.e == null)
          {
            if (this.j != null)
              break label164;
            if (paramObject.j == null)
            {
              if (this.k != null)
                break label181;
              if (paramObject.k == null)
              {
                if (this.l != null)
                  break label198;
                if (paramObject.l == null)
                {
                  if (this.m != null)
                    break label215;
                  if (paramObject.m == null)
                  {
                    if (this.f != null)
                      break label232;
                    if (paramObject.f != null);
                  }
                }
              }
            }
          }
        }
      while (true)
      {
        if (this.h == paramObject.h)
          break label247;
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                      return false;
                    while (!this.i.equals(paramObject.i));
                    break;
                  }
                  while (!this.e.equals(paramObject.e));
                  break label47;
                }
                while (!this.j.equals(paramObject.j));
                break label61;
              }
              while (!this.k.equals(paramObject.k));
              break label75;
            }
            while (!this.l.equals(paramObject.l));
            break label89;
          }
          while (!this.m.equals(paramObject.m));
          break label103;
        }
        while (!this.f.equals(paramObject.f));
      }
    }
    label147: label164: label181: label198: label215: return false;
  }

  public int hashCode()
  {
    return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.i), this.e), this.j), this.k), this.l), this.m), this.f), this.h);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.c
 * JD-Core Version:    0.6.2
 */
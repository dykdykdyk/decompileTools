package com.google.zxing.b.a;

import com.google.zxing.m;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class u
{
  private static final u[] a = { new f(), new c(), new j(), new b(), new af(), new e(), new ag(), new i(), new y(), new aa(), new v(), new x(), new n(), new ak(), new ae(), new ad(), new p(), new t(), new l(), new ai() };
  private static final Pattern b = Pattern.compile("\\d+");
  private static final Pattern c = Pattern.compile("&");
  private static final Pattern d = Pattern.compile("=");

  protected static int a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9'))
      return paramChar - '0';
    if ((paramChar >= 'a') && (paramChar <= 'f'))
      return paramChar - 'a' + 10;
    if ((paramChar >= 'A') && (paramChar <= 'F'))
      return paramChar - 'A' + 10;
    return -1;
  }

  private static String a(String paramString)
  {
    int j = paramString.indexOf('\\');
    if (j < 0)
      return paramString;
    int k = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(k - 1);
    localStringBuilder.append(paramString.toCharArray(), 0, j);
    int i = 0;
    if (j < k)
    {
      char c1 = paramString.charAt(j);
      if ((i != 0) || (c1 != '\\'))
        localStringBuilder.append(c1);
      for (i = 0; ; i = 1)
      {
        j += 1;
        break;
      }
    }
    return localStringBuilder.toString();
  }

  protected static boolean a(CharSequence paramCharSequence, int paramInt)
  {
    return (paramCharSequence != null) && (paramInt > 0) && (paramInt == paramCharSequence.length()) && (b.matcher(paramCharSequence).matches());
  }

  protected static boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if ((paramCharSequence == null) || (paramInt2 <= 0));
    do
    {
      return false;
      paramInt2 = paramInt1 + paramInt2;
    }
    while ((paramCharSequence.length() < paramInt2) || (!b.matcher(paramCharSequence.subSequence(paramInt1, paramInt2)).matches()));
    return true;
  }

  static String[] a(String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    int n = paramString2.length();
    int i = 0;
    Object localObject1 = null;
    while (i < n)
    {
      i = paramString2.indexOf(paramString1, i);
      if (i < 0)
        break;
      int m = i + paramString1.length();
      int j = 1;
      i = m;
      while (j != 0)
      {
        int i1 = paramString2.indexOf(paramChar, i);
        if (i1 < 0)
        {
          i = paramString2.length();
          j = 0;
        }
        else
        {
          i = i1 - 1;
          int k = 0;
          while ((i >= 0) && (paramString2.charAt(i) == '\\'))
          {
            k += 1;
            i -= 1;
          }
          if (k % 2 != 0)
          {
            i = i1 + 1;
          }
          else
          {
            Object localObject2 = localObject1;
            if (localObject1 == null)
              localObject2 = new ArrayList(3);
            String str = a(paramString2.substring(m, i1));
            localObject1 = str;
            if (paramBoolean)
              localObject1 = str.trim();
            if (!((String)localObject1).isEmpty())
              ((List)localObject2).add(localObject1);
            i = i1 + 1;
            j = 0;
            localObject1 = localObject2;
          }
        }
      }
    }
    if ((localObject1 == null) || (((List)localObject1).isEmpty()))
      return null;
    return (String[])((List)localObject1).toArray(new String[((List)localObject1).size()]);
  }

  protected static String b(m paramm)
  {
    String str = paramm.a;
    paramm = str;
    if (str.startsWith("﻿"))
      paramm = str.substring(1);
    return paramm;
  }

  static String b(String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    paramString1 = a(paramString1, paramString2, paramChar, paramBoolean);
    if (paramString1 == null)
      return null;
    return paramString1[0];
  }

  protected static String[] b(String paramString)
  {
    if (paramString == null)
      return null;
    return new String[] { paramString };
  }

  public static q c(m paramm)
  {
    u[] arrayOfu = a;
    int j = arrayOfu.length;
    int i = 0;
    while (i < j)
    {
      q localq = arrayOfu[i].a(paramm);
      if (localq != null)
        return localq;
      i += 1;
    }
    return new ab(paramm.a);
  }

  static Map<String, String> c(String paramString)
  {
    int i = paramString.indexOf('?');
    if (i < 0)
    {
      paramString = null;
      return paramString;
    }
    HashMap localHashMap = new HashMap(3);
    String[] arrayOfString = c.split(paramString.substring(i + 1));
    int j = arrayOfString.length;
    i = 0;
    while (true)
    {
      paramString = localHashMap;
      if (i >= j)
        break;
      paramString = arrayOfString[i];
      Object localObject = d.split(paramString, 2);
      if (localObject.length == 2)
      {
        paramString = localObject[0];
        localObject = localObject[1];
      }
      try
      {
        localHashMap.put(paramString, d((String)localObject));
        label98: i += 1;
      }
      catch (IllegalArgumentException paramString)
      {
        break label98;
      }
    }
  }

  static String d(String paramString)
  {
    try
    {
      paramString = URLDecoder.decode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
    }
    throw new IllegalStateException(paramString);
  }

  public abstract q a(m paramm);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.u
 * JD-Core Version:    0.6.2
 */
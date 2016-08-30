package com.google.zxing.b.a;

import com.google.zxing.m;
import java.util.List;

public final class ag extends u
{
  private static String a(CharSequence paramCharSequence, String paramString)
  {
    paramCharSequence = af.b(paramCharSequence, paramString, true, false);
    if ((paramCharSequence == null) || (paramCharSequence.isEmpty()))
      return null;
    return (String)paramCharSequence.get(0);
  }

  private static String a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
      if (!paramString.startsWith("mailto:"))
      {
        str = paramString;
        if (!paramString.startsWith("MAILTO:"));
      }
      else
      {
        str = paramString.substring(7);
      }
    return str;
  }

  private static g d(m paramm)
  {
    String str7 = b(paramm);
    if (str7.indexOf("BEGIN:VEVENT") < 0)
      return null;
    String str1 = a("SUMMARY", str7);
    String str2 = a("DTSTART", str7);
    if (str2 == null)
      return null;
    String str3 = a("DTEND", str7);
    String str4 = a("DURATION", str7);
    String str5 = a("LOCATION", str7);
    String str6 = a(a("ORGANIZER", str7));
    List localList = af.a("ATTENDEE", str7, true, false);
    int i;
    if ((localList == null) || (localList.isEmpty()))
    {
      paramm = null;
      if (paramm != null)
        i = 0;
    }
    else
    {
      while (i < paramm.length)
      {
        paramm[i] = a(paramm[i]);
        i += 1;
        continue;
        int j = localList.size();
        localObject = new String[j];
        i = 0;
        while (true)
        {
          paramm = (m)localObject;
          if (i >= j)
            break;
          localObject[i] = ((String)((List)localList.get(i)).get(0));
          i += 1;
        }
      }
    }
    Object localObject = a("DESCRIPTION", str7);
    str7 = a("GEO", str7);
    double d1;
    double d2;
    if (str7 == null)
    {
      d1 = (0.0D / 0.0D);
      d2 = (0.0D / 0.0D);
    }
    while (true)
    {
      try
      {
        paramm = new g(str1, str2, str3, str4, str5, str6, paramm, (String)localObject, d1, d2);
        return paramm;
      }
      catch (IllegalArgumentException paramm)
      {
        return null;
      }
      i = str7.indexOf(';');
      if (i < 0)
        return null;
      try
      {
        d1 = Double.parseDouble(str7.substring(0, i));
        d2 = Double.parseDouble(str7.substring(i + 1));
      }
      catch (NumberFormatException paramm)
      {
      }
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.ag
 * JD-Core Version:    0.6.2
 */
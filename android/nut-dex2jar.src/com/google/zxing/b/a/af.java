package com.google.zxing.b.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class af extends u
{
  private static final Pattern a = Pattern.compile("BEGIN:VCARD", 2);
  private static final Pattern b = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
  private static final Pattern c = Pattern.compile("\r\n[ \t]");
  private static final Pattern d = Pattern.compile("\\\\[nN]");
  private static final Pattern e = Pattern.compile("\\\\([,;\\\\])");
  private static final Pattern f = Pattern.compile("=");
  private static final Pattern g = Pattern.compile(";");
  private static final Pattern h = Pattern.compile("(?<!\\\\);+");
  private static final Pattern i = Pattern.compile(",");
  private static final Pattern j = Pattern.compile("[;,]");

  private static String a(CharSequence paramCharSequence, String paramString)
  {
    int n = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(n);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int k = 0;
    if (k < n)
    {
      char c1 = paramCharSequence.charAt(k);
      int m = k;
      switch (c1)
      {
      default:
        a(localByteArrayOutputStream, paramString, localStringBuilder);
        localStringBuilder.append(c1);
        m = k;
      case '\n':
      case '\r':
      case '=':
      }
      while (true)
      {
        k = m + 1;
        break;
        m = k;
        if (k < n - 2)
        {
          c1 = paramCharSequence.charAt(k + 1);
          m = k;
          if (c1 != '\r')
          {
            m = k;
            if (c1 != '\n')
            {
              char c2 = paramCharSequence.charAt(k + 2);
              m = a(c1);
              int i1 = a(c2);
              if ((m >= 0) && (i1 >= 0))
                localByteArrayOutputStream.write((m << 4) + i1);
              m = k + 2;
            }
          }
        }
      }
    }
    a(localByteArrayOutputStream, paramString, localStringBuilder);
    return localStringBuilder.toString();
  }

  private static String a(List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      return null;
    return (String)paramList.get(0);
  }

  static List<List<String>> a(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int k = 0;
    int n = paramString.length();
    Object localObject3 = null;
    Object localObject1;
    int m;
    int i1;
    Object localObject4;
    Object localObject2;
    Object localObject5;
    int i2;
    if (k < n)
    {
      localObject1 = Pattern.compile("(?:^|\n)" + paramCharSequence + "(?:;([^:]*))?:", 2).matcher(paramString);
      m = k;
      if (k > 0)
        m = k - 1;
      if (((Matcher)localObject1).find(m))
      {
        i1 = ((Matcher)localObject1).end(0);
        localObject4 = ((Matcher)localObject1).group(1);
        localObject2 = null;
        m = 0;
        k = 0;
        localObject1 = null;
        if (localObject4 == null)
          break label671;
        localObject5 = g.split((CharSequence)localObject4);
        i2 = localObject5.length;
        m = 0;
        if (m < i2)
        {
          Object localObject6 = localObject5[m];
          localObject4 = localObject2;
          if (localObject2 == null)
            localObject4 = new ArrayList(1);
          ((List)localObject4).add(localObject6);
          localObject2 = f.split(localObject6, 2);
          if (localObject2.length <= 1)
            break label668;
          localObject6 = localObject2[0];
          localObject2 = localObject2[1];
          if (("ENCODING".equalsIgnoreCase(localObject6)) && ("QUOTED-PRINTABLE".equalsIgnoreCase((String)localObject2)))
            k = 1;
          while (true)
          {
            label222: m += 1;
            localObject2 = localObject4;
            break;
            if (!"CHARSET".equalsIgnoreCase(localObject6))
              break label668;
            localObject1 = localObject2;
          }
        }
        m = k;
        localObject5 = localObject1;
      }
    }
    while (true)
    {
      k = i1;
      while (true)
      {
        i2 = paramString.indexOf('\n', k);
        if (i2 < 0)
          break;
        if ((i2 < paramString.length() - 1) && ((paramString.charAt(i2 + 1) == ' ') || (paramString.charAt(i2 + 1) == '\t')))
        {
          k = i2 + 2;
        }
        else
        {
          if ((m == 0) || (((i2 <= 0) || (paramString.charAt(i2 - 1) != '=')) && ((i2 < 2) || (paramString.charAt(i2 - 2) != '='))))
            break;
          k = i2 + 1;
        }
      }
      if (i2 < 0)
      {
        k = n;
        break;
      }
      if (i2 > i1)
      {
        localObject4 = localObject3;
        if (localObject3 == null)
          localObject4 = new ArrayList(1);
        k = i2;
        if (i2 > 0)
        {
          k = i2;
          if (paramString.charAt(i2 - 1) == '\r')
            k = i2 - 1;
        }
        localObject3 = paramString.substring(i1, k);
        localObject1 = localObject3;
        if (paramBoolean1)
          localObject1 = ((String)localObject3).trim();
        if (m != 0)
        {
          localObject3 = a((CharSequence)localObject1, (String)localObject5);
          localObject1 = localObject3;
          if (paramBoolean2)
            localObject1 = h.matcher((CharSequence)localObject3).replaceAll("\n").trim();
          label511: if (localObject2 != null)
            break label633;
          localObject2 = new ArrayList(1);
          ((List)localObject2).add(localObject1);
          ((List)localObject4).add(localObject2);
        }
        while (true)
        {
          k += 1;
          localObject3 = localObject4;
          break;
          localObject3 = localObject1;
          if (paramBoolean2)
            localObject3 = h.matcher((CharSequence)localObject1).replaceAll("\n").trim();
          localObject1 = c.matcher((CharSequence)localObject3).replaceAll("");
          localObject1 = d.matcher((CharSequence)localObject1).replaceAll("\n");
          localObject1 = e.matcher((CharSequence)localObject1).replaceAll("$1");
          break label511;
          label633: ((List)localObject2).add(0, localObject1);
          ((List)localObject4).add(localObject2);
        }
      }
      k = i2 + 1;
      break;
      return localObject3;
      label668: break label222;
      label671: localObject5 = null;
      localObject2 = null;
    }
  }

  private static void a(ByteArrayOutputStream paramByteArrayOutputStream, String paramString, StringBuilder paramStringBuilder)
  {
    byte[] arrayOfByte;
    if (paramByteArrayOutputStream.size() > 0)
    {
      arrayOfByte = paramByteArrayOutputStream.toByteArray();
      if (paramString != null)
        break label41;
      paramString = new String(arrayOfByte, Charset.forName("UTF-8"));
    }
    while (true)
    {
      paramByteArrayOutputStream.reset();
      paramStringBuilder.append(paramString);
      return;
      try
      {
        label41: paramString = new String(arrayOfByte, paramString);
      }
      catch (UnsupportedEncodingException paramString)
      {
        paramString = new String(arrayOfByte, Charset.forName("UTF-8"));
      }
    }
  }

  private static void a(String[] paramArrayOfString, int paramInt, StringBuilder paramStringBuilder)
  {
    if ((paramArrayOfString[paramInt] != null) && (!paramArrayOfString[paramInt].isEmpty()))
    {
      if (paramStringBuilder.length() > 0)
        paramStringBuilder.append(' ');
      paramStringBuilder.append(paramArrayOfString[paramInt]);
    }
  }

  private static String[] a(Collection<List<String>> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      return null;
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((List)localIterator.next()).get(0);
      if ((str != null) && (!str.isEmpty()))
        localArrayList.add(str);
    }
    return (String[])localArrayList.toArray(new String[paramCollection.size()]);
  }

  static List<String> b(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramCharSequence = a(paramCharSequence, paramString, paramBoolean1, paramBoolean2);
    if ((paramCharSequence == null) || (paramCharSequence.isEmpty()))
      return null;
    return (List)paramCharSequence.get(0);
  }

  private static String[] b(Collection<List<String>> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      return null;
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    int k;
    label62: String str;
    int m;
    if (localIterator.hasNext())
    {
      List localList = (List)localIterator.next();
      k = 1;
      if (k >= localList.size())
        break label161;
      str = (String)localList.get(k);
      m = str.indexOf('=');
      if (m >= 0);
    }
    while (true)
    {
      localArrayList.add(str);
      break;
      if ("TYPE".equalsIgnoreCase(str.substring(0, m)))
      {
        str = str.substring(m + 1);
      }
      else
      {
        k += 1;
        break label62;
        return (String[])localArrayList.toArray(new String[paramCollection.size()]);
        label161: str = null;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.af
 * JD-Core Version:    0.6.2
 */
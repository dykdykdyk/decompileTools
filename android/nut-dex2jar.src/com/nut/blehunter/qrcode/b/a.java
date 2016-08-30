package com.nut.blehunter.qrcode.b;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;

abstract class a
{
  static String a(String paramString)
  {
    if (paramString == null);
    do
    {
      return null;
      paramString = paramString.trim();
    }
    while (paramString.isEmpty());
    return paramString;
  }

  static void a(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString1, String paramString2, b paramb, char paramChar)
  {
    paramString2 = a(paramString2);
    if (paramString2 != null)
    {
      paramStringBuilder1.append(paramString1).append(paramb.a(paramString2, 0)).append(paramChar);
      paramStringBuilder2.append(paramString2).append('\n');
    }
  }

  static void a(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString, List<String> paramList, int paramInt, b paramb1, b paramb2, char paramChar)
  {
    if (paramList == null)
      return;
    HashSet localHashSet = new HashSet(2);
    int i = 0;
    int j = 0;
    label21: String str;
    int k;
    if (i < paramList.size())
    {
      str = a((String)paramList.get(i));
      k = j;
      if (str != null)
      {
        k = j;
        if (!str.isEmpty())
        {
          k = j;
          if (!localHashSet.contains(str))
          {
            paramStringBuilder1.append(paramString).append(paramb2.a(str, i)).append(paramChar);
            if (paramb1 != null)
              break label167;
          }
        }
      }
    }
    label167: for (Object localObject = str; ; localObject = paramb1.a(str, i))
    {
      paramStringBuilder2.append((CharSequence)localObject).append('\n');
      k = j + 1;
      if (k == paramInt)
        break;
      localHashSet.add(str);
      i += 1;
      j = k;
      break label21;
      break;
    }
  }

  abstract String[] a(List<String> paramList1, String paramString1, List<String> paramList2, List<String> paramList3, List<String> paramList4, List<String> paramList5, List<String> paramList6, String paramString2);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.a
 * JD-Core Version:    0.6.2
 */
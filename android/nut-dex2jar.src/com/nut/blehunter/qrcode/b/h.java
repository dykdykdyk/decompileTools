package com.nut.blehunter.qrcode.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class h extends a
{
  private static List<Map<String, Set<String>>> a(Collection<String> paramCollection, List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      return null;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramCollection.size())
    {
      if (paramList.size() <= i)
        localArrayList.add(null);
      Object localObject1;
      HashSet localHashSet;
      Object localObject2;
      while (true)
      {
        i += 1;
        break;
        localObject1 = new HashMap();
        localArrayList.add(localObject1);
        localHashSet = new HashSet();
        ((Map)localObject1).put("TYPE", localHashSet);
        localObject1 = (String)paramList.get(i);
        localObject2 = b((String)localObject1);
        if (localObject2 != null)
          break label133;
        localHashSet.add(localObject1);
      }
      label133: switch (((Integer)localObject2).intValue())
      {
      default:
        localObject1 = null;
        label206: switch (((Integer)localObject2).intValue())
        {
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        default:
          localObject2 = null;
        case 1:
        case 2:
        case 5:
        case 6:
        case 3:
        case 4:
        case 10:
        case 17:
        case 18:
        }
        break;
      case 4:
      case 5:
      case 13:
      case 6:
      case 18:
      case 16:
      case 20:
      }
      while (true)
      {
        if (localObject1 != null)
          localHashSet.add(localObject1);
        if (localObject2 == null)
          break;
        localHashSet.add(localObject2);
        break;
        localObject1 = "fax";
        break label206;
        localObject1 = "pager";
        break label206;
        localObject1 = "textphone";
        break label206;
        localObject1 = "text";
        break label206;
        localObject2 = "home";
        continue;
        localObject2 = "work";
      }
    }
    return localArrayList;
  }

  private static Integer b(String paramString)
  {
    try
    {
      paramString = Integer.valueOf(paramString);
      return paramString;
    }
    catch (NumberFormatException paramString)
    {
    }
    return null;
  }

  public final String[] a(List<String> paramList1, String paramString1, List<String> paramList2, List<String> paramList3, List<String> paramList4, List<String> paramList5, List<String> paramList6, String paramString2)
  {
    StringBuilder localStringBuilder1 = new StringBuilder(100);
    localStringBuilder1.append("BEGIN:VCARD\n");
    localStringBuilder1.append("VERSION:3.0\n");
    StringBuilder localStringBuilder2 = new StringBuilder(100);
    i locali = new i();
    a(localStringBuilder1, localStringBuilder2, "N", paramList1, 1, null, locali, '\n');
    a(localStringBuilder1, localStringBuilder2, "ORG", paramString1, locali, '\n');
    a(localStringBuilder1, localStringBuilder2, "ADR", paramList2, 1, null, locali, '\n');
    paramList1 = a(paramList3, paramList4);
    a(localStringBuilder1, localStringBuilder2, "TEL", paramList3, 2147483647, new j(paramList1), new i(paramList1), '\n');
    a(localStringBuilder1, localStringBuilder2, "EMAIL", paramList5, 2147483647, null, locali, '\n');
    a(localStringBuilder1, localStringBuilder2, "URL", paramList6, 2147483647, null, locali, '\n');
    a(localStringBuilder1, localStringBuilder2, "NOTE", paramString2, locali, '\n');
    localStringBuilder1.append("END:VCARD\n");
    return new String[] { localStringBuilder1.toString(), localStringBuilder2.toString() };
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.h
 * JD-Core Version:    0.6.2
 */
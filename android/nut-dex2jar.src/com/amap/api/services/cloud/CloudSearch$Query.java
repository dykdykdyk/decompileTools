package com.amap.api.services.cloud;

import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class CloudSearch$Query
  implements Cloneable
{
  private String a;
  private int b = 0;
  private int c = 20;
  private String d;
  private CloudSearch.SearchBound e;
  private CloudSearch.Sortingrules f;
  private ArrayList<y> g = new ArrayList();
  private HashMap<String, String> h = new HashMap();

  private CloudSearch$Query()
  {
  }

  public CloudSearch$Query(String paramString1, String paramString2, CloudSearch.SearchBound paramSearchBound)
    throws AMapException
  {
    if ((i.a(paramString1)) || (paramSearchBound == null))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    this.d = paramString1;
    this.a = paramString2;
    this.e = paramSearchBound;
  }

  private ArrayList<y> a()
  {
    if (this.g == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(this.g);
    return localArrayList;
  }

  private boolean a(CloudSearch.SearchBound paramSearchBound1, CloudSearch.SearchBound paramSearchBound2)
  {
    if ((paramSearchBound1 == null) && (paramSearchBound2 == null))
      return true;
    if ((paramSearchBound1 != null) && (paramSearchBound2 != null))
      return paramSearchBound1.equals(paramSearchBound2);
    return false;
  }

  private boolean a(CloudSearch.Sortingrules paramSortingrules1, CloudSearch.Sortingrules paramSortingrules2)
  {
    if ((paramSortingrules1 == null) && (paramSortingrules2 == null))
      return true;
    if ((paramSortingrules1 != null) && (paramSortingrules2 != null))
      return paramSortingrules1.equals(paramSortingrules2);
    return false;
  }

  private HashMap<String, String> b()
  {
    if (this.h == null)
      return null;
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(this.h);
    return localHashMap;
  }

  public void addFilterNum(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new y(paramString1, paramString2, paramString3);
    this.g.add(paramString1);
  }

  public void addFilterString(String paramString1, String paramString2)
  {
    this.h.put(paramString1, paramString2);
  }

  // ERROR //
  public Query clone()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 108	java/lang/Object:clone	()Ljava/lang/Object;
    //   4: pop
    //   5: new 2	com/amap/api/services/cloud/CloudSearch$Query
    //   8: dup
    //   9: aload_0
    //   10: getfield 56	com/amap/api/services/cloud/CloudSearch$Query:d	Ljava/lang/String;
    //   13: aload_0
    //   14: getfield 58	com/amap/api/services/cloud/CloudSearch$Query:a	Ljava/lang/String;
    //   17: aload_0
    //   18: getfield 60	com/amap/api/services/cloud/CloudSearch$Query:e	Lcom/amap/api/services/cloud/CloudSearch$SearchBound;
    //   21: invokespecial 110	com/amap/api/services/cloud/CloudSearch$Query:<init>	(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    //   24: astore_1
    //   25: aload_1
    //   26: aload_0
    //   27: getfield 28	com/amap/api/services/cloud/CloudSearch$Query:b	I
    //   30: invokevirtual 114	com/amap/api/services/cloud/CloudSearch$Query:setPageNum	(I)V
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 30	com/amap/api/services/cloud/CloudSearch$Query:c	I
    //   38: invokevirtual 117	com/amap/api/services/cloud/CloudSearch$Query:setPageSize	(I)V
    //   41: aload_1
    //   42: aload_0
    //   43: invokevirtual 121	com/amap/api/services/cloud/CloudSearch$Query:getSortingrules	()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;
    //   46: invokevirtual 125	com/amap/api/services/cloud/CloudSearch$Query:setSortingrules	(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)V
    //   49: aload_1
    //   50: aload_0
    //   51: invokespecial 127	com/amap/api/services/cloud/CloudSearch$Query:a	()Ljava/util/ArrayList;
    //   54: putfield 35	com/amap/api/services/cloud/CloudSearch$Query:g	Ljava/util/ArrayList;
    //   57: aload_1
    //   58: aload_0
    //   59: invokespecial 129	com/amap/api/services/cloud/CloudSearch$Query:b	()Ljava/util/HashMap;
    //   62: putfield 40	com/amap/api/services/cloud/CloudSearch$Query:h	Ljava/util/HashMap;
    //   65: aload_1
    //   66: astore_2
    //   67: aload_1
    //   68: ifnonnull +11 -> 79
    //   71: new 2	com/amap/api/services/cloud/CloudSearch$Query
    //   74: dup
    //   75: invokespecial 130	com/amap/api/services/cloud/CloudSearch$Query:<init>	()V
    //   78: astore_2
    //   79: aload_2
    //   80: areturn
    //   81: astore_1
    //   82: aload_1
    //   83: invokevirtual 133	java/lang/CloneNotSupportedException:printStackTrace	()V
    //   86: goto -81 -> 5
    //   89: astore_2
    //   90: aconst_null
    //   91: astore_1
    //   92: aload_2
    //   93: invokevirtual 134	com/amap/api/services/core/AMapException:printStackTrace	()V
    //   96: goto -31 -> 65
    //   99: astore_2
    //   100: goto -8 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   0	5	81	java/lang/CloneNotSupportedException
    //   5	25	89	com/amap/api/services/core/AMapException
    //   25	65	99	com/amap/api/services/core/AMapException
  }

  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramObject == null) || (!(paramObject instanceof Query)))
      bool1 = false;
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      }
      while (paramObject == this);
      paramObject = (Query)paramObject;
      if (!queryEquals(paramObject))
        break;
      bool1 = bool2;
    }
    while (paramObject.b == this.b);
    return false;
  }

  public CloudSearch.SearchBound getBound()
  {
    return this.e;
  }

  public String getFilterNumString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      Iterator localIterator = this.g.iterator();
      while (localIterator.hasNext())
      {
        y localy = (y)localIterator.next();
        localStringBuffer.append(localy.a());
        localStringBuffer.append(":[");
        localStringBuffer.append(localy.b());
        localStringBuffer.append(",");
        localStringBuffer.append(localy.c());
        localStringBuffer.append("]");
        localStringBuffer.append("+");
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    while (true)
    {
      return localStringBuffer.toString();
      if (localStringBuffer.length() > 0)
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
    }
  }

  public String getFilterString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      Iterator localIterator = this.h.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (Map.Entry)localIterator.next();
        Object localObject1 = ((Map.Entry)localObject2).getKey();
        localObject2 = ((Map.Entry)localObject2).getValue();
        localStringBuffer.append(localObject1.toString()).append(":").append(localObject2.toString()).append("+");
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    while (true)
    {
      return localStringBuffer.toString();
      if (localStringBuffer.length() > 0)
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
    }
  }

  public int getPageNum()
  {
    return this.b;
  }

  public int getPageSize()
  {
    return this.c;
  }

  public String getQueryString()
  {
    return this.a;
  }

  public CloudSearch.Sortingrules getSortingrules()
  {
    return this.f;
  }

  public String getTableID()
  {
    return this.d;
  }

  public int hashCode()
  {
    int i1 = 0;
    int i;
    int j;
    label21: int k;
    label30: int i2;
    int i3;
    int m;
    label52: int n;
    if (this.g == null)
    {
      i = 0;
      if (this.h != null)
        break label125;
      j = 0;
      if (this.e != null)
        break label136;
      k = 0;
      i2 = this.b;
      i3 = this.c;
      if (this.a != null)
        break label147;
      m = 0;
      if (this.f != null)
        break label159;
      n = 0;
      label62: if (this.d != null)
        break label171;
    }
    while (true)
    {
      return (n + (m + (((k + (j + (i + 31) * 31) * 31) * 31 + i2) * 31 + i3) * 31) * 31) * 31 + i1;
      i = this.g.hashCode();
      break;
      label125: j = this.h.hashCode();
      break label21;
      label136: k = this.e.hashCode();
      break label30;
      label147: m = this.a.hashCode();
      break label52;
      label159: n = this.f.hashCode();
      break label62;
      label171: i1 = this.d.hashCode();
    }
  }

  public boolean queryEquals(Query paramQuery)
  {
    if (paramQuery == null);
    do
    {
      return false;
      if (paramQuery == this)
        return true;
    }
    while ((!CloudSearch.a(paramQuery.a, this.a)) || (!CloudSearch.a(paramQuery.getTableID(), getTableID())) || (!CloudSearch.a(paramQuery.getFilterString(), getFilterString())) || (!CloudSearch.a(paramQuery.getFilterNumString(), getFilterNumString())) || (paramQuery.c != this.c) || (!a(paramQuery.getBound(), getBound())) || (!a(paramQuery.getSortingrules(), getSortingrules())));
    return true;
  }

  public void setBound(CloudSearch.SearchBound paramSearchBound)
  {
    this.e = paramSearchBound;
  }

  public void setPageNum(int paramInt)
  {
    this.b = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    if (paramInt <= 0)
    {
      this.c = 20;
      return;
    }
    if (paramInt > 100)
    {
      this.c = 100;
      return;
    }
    this.c = paramInt;
  }

  public void setSortingrules(CloudSearch.Sortingrules paramSortingrules)
  {
    this.f = paramSortingrules;
  }

  public void setTableID(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudSearch.Query
 * JD-Core Version:    0.6.2
 */
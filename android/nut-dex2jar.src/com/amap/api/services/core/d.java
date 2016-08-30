package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.busline.BusLineQuery;
import com.amap.api.services.busline.BusLineQuery.SearchType;
import com.amap.api.services.busline.BusStationQuery;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class d<T> extends b<T, ArrayList<?>>
{
  private int h = 0;
  private List<String> i = new ArrayList();
  private List<SuggestionCity> j = new ArrayList();

  public d(Context paramContext, T paramT)
  {
    super(paramContext, paramT);
  }

  protected ArrayList<?> d(String paramString)
    throws AMapException
  {
    try
    {
      paramString = new JSONObject(paramString);
      JSONObject localJSONObject = paramString.optJSONObject("suggestion");
      if (localJSONObject != null)
      {
        this.j = n.a(localJSONObject);
        this.i = n.b(localJSONObject);
      }
      this.h = paramString.optInt("count");
      if ((this.a instanceof BusLineQuery))
        return n.i(paramString);
      paramString = n.e(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      i.a(paramString, "BusSearchServerHandler", "paseJSON");
    }
    return null;
  }

  protected String e()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("output=json");
    Object localObject;
    if ((this.a instanceof BusLineQuery))
    {
      localObject = (BusLineQuery)this.a;
      localStringBuilder.append("&extensions=all");
      if (((BusLineQuery)localObject).getCategory() == BusLineQuery.SearchType.BY_LINE_ID)
        localStringBuilder.append("&id=").append(b(((BusLineQuery)this.a).getQueryString()));
    }
    while (true)
    {
      localStringBuilder.append("&key=" + aj.f(this.d));
      return localStringBuilder.toString();
      String str = ((BusLineQuery)localObject).getCity();
      if (!n.i(str))
      {
        str = b(str);
        localStringBuilder.append("&city=").append(str);
      }
      localStringBuilder.append("&keywords=" + b(((BusLineQuery)localObject).getQueryString()));
      localStringBuilder.append("&offset=" + ((BusLineQuery)localObject).getPageSize());
      localStringBuilder.append("&page=" + (((BusLineQuery)localObject).getPageNumber() + 1));
      continue;
      localObject = (BusStationQuery)this.a;
      str = ((BusStationQuery)localObject).getCity();
      if (!n.i(str))
      {
        str = b(str);
        localStringBuilder.append("&city=").append(str);
      }
      localStringBuilder.append("&keywords=" + b(((BusStationQuery)localObject).getQueryString()));
      localStringBuilder.append("&offset=" + ((BusStationQuery)localObject).getPageSize());
      localStringBuilder.append("&page=" + (((BusStationQuery)localObject).getPageNumber() + 1));
    }
  }

  public String g()
  {
    String str;
    if ((this.a instanceof BusLineQuery))
      if (((BusLineQuery)this.a).getCategory() == BusLineQuery.SearchType.BY_LINE_ID)
        str = "lineid";
    while (true)
    {
      return h.a() + "/bus/" + str + "?";
      if (((BusLineQuery)this.a).getCategory() == BusLineQuery.SearchType.BY_LINE_NAME)
      {
        str = "linename";
        continue;
        str = "stopname";
      }
      else
      {
        str = "";
      }
    }
  }

  public T h()
  {
    return this.a;
  }

  public int i()
  {
    return this.h;
  }

  public List<String> j()
  {
    return this.i;
  }

  public List<SuggestionCity> k()
  {
    return this.j;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.d
 * JD-Core Version:    0.6.2
 */
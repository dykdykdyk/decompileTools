package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.district.DistrictResult;
import com.amap.api.services.district.DistrictSearchQuery;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class j extends b<DistrictSearchQuery, DistrictResult>
{
  public j(Context paramContext, DistrictSearchQuery paramDistrictSearchQuery)
  {
    super(paramContext, paramDistrictSearchQuery);
  }

  protected DistrictResult d(String paramString)
    throws AMapException
  {
    ArrayList localArrayList = new ArrayList();
    DistrictResult localDistrictResult = new DistrictResult((DistrictSearchQuery)this.a, localArrayList);
    try
    {
      paramString = new JSONObject(paramString);
      localDistrictResult.setPageCount(paramString.optInt("count"));
      paramString = paramString.optJSONArray("districts");
      if (paramString == null)
        return localDistrictResult;
      n.a(paramString, localArrayList, null);
      return localDistrictResult;
    }
    catch (JSONException paramString)
    {
      while (true)
        i.a(paramString, "DistrictServerHandler", "paseJSONJSONException");
    }
    catch (Exception paramString)
    {
      while (true)
        i.a(paramString, "DistrictServerHandler", "paseJSONException");
    }
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("output=json");
    localStringBuffer.append("&page=").append(((DistrictSearchQuery)this.a).getPageNum() + 1);
    localStringBuffer.append("&offset=").append(((DistrictSearchQuery)this.a).getPageSize());
    localStringBuffer.append("&showChild=").append(((DistrictSearchQuery)this.a).isShowChild());
    if (((DistrictSearchQuery)this.a).isShowBoundary())
      localStringBuffer.append("&extensions=all");
    while (true)
    {
      if (((DistrictSearchQuery)this.a).checkKeyWords())
      {
        String str = b(((DistrictSearchQuery)this.a).getKeywords());
        localStringBuffer.append("&keywords=").append(str);
      }
      if (((DistrictSearchQuery)this.a).checkLevels())
        localStringBuffer.append("&level=").append(((DistrictSearchQuery)this.a).getKeywordsLevel());
      localStringBuffer.append("&key=" + aj.f(this.d));
      return localStringBuffer.toString();
      localStringBuffer.append("&extensions=base");
    }
  }

  public String g()
  {
    return h.a() + "/config/district?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.j
 * JD-Core Version:    0.6.2
 */
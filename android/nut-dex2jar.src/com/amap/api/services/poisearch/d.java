package com.amap.api.services.poisearch;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.SuggestionCity;
import com.amap.api.services.core.aa;
import com.amap.api.services.core.aj;
import com.amap.api.services.core.h;
import com.amap.api.services.core.i;
import com.amap.api.services.core.n;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

class d extends b<aa, ArrayList<PoiItem>>
{
  private int h = 1;
  private int i = 20;
  private int j = 0;
  private List<String> k = new ArrayList();
  private List<SuggestionCity> l = new ArrayList();

  public d(Context paramContext, aa paramaa)
  {
    super(paramContext, paramaa);
  }

  private String p()
  {
    if (((aa)this.a).b.isDistanceSort())
      return "distance";
    return "weight";
  }

  public void a(int paramInt)
  {
    this.h = (paramInt + 1);
  }

  public void b(int paramInt)
  {
    int m = 30;
    if (paramInt > 30)
      paramInt = 30;
    while (true)
    {
      if (paramInt <= 0)
        paramInt = m;
      while (true)
      {
        this.i = paramInt;
        return;
      }
    }
  }

  protected String e()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("output=json");
    double d1;
    double d2;
    Object localObject;
    if (((aa)this.a).b != null)
    {
      if (((aa)this.a).b.getShape().equals("Bound"))
      {
        d1 = i.a(((aa)this.a).b.getCenter().getLongitude());
        d2 = i.a(((aa)this.a).b.getCenter().getLatitude());
        localStringBuilder.append("&location=").append(d1 + "," + d2);
        localStringBuilder.append("&radius=").append(((aa)this.a).b.getRange());
        localStringBuilder.append("&sortrule=").append(p());
      }
    }
    else
    {
      localObject = ((aa)this.a).a.getCity();
      if (!d((String)localObject))
      {
        localObject = b((String)localObject);
        localStringBuilder.append("&city=").append((String)localObject);
      }
      localObject = b(((aa)this.a).a.getQueryString());
      localStringBuilder.append("&keywords=" + (String)localObject);
      localStringBuilder.append("&language=").append(h.c());
      localStringBuilder.append("&offset=" + this.i);
      localStringBuilder.append("&page=" + this.h);
      localObject = b(((aa)this.a).a.getCategory());
      localStringBuilder.append("&types=" + (String)localObject);
      localStringBuilder.append("&extensions=all");
      localStringBuilder.append("&key=" + aj.f(this.d));
      if (!((aa)this.a).a.getCityLimit())
        break label670;
      localStringBuilder.append("&citylimit=true");
      label417: if (!((aa)this.a).a.isRequireSubPois())
        break label681;
      localStringBuilder.append("&children=1");
    }
    while (true)
    {
      return localStringBuilder.toString();
      if (((aa)this.a).b.getShape().equals("Rectangle"))
      {
        localObject = ((aa)this.a).b.getLowerLeft();
        LatLonPoint localLatLonPoint = ((aa)this.a).b.getUpperRight();
        d1 = i.a(((LatLonPoint)localObject).getLatitude());
        d2 = i.a(((LatLonPoint)localObject).getLongitude());
        double d3 = i.a(localLatLonPoint.getLatitude());
        double d4 = i.a(localLatLonPoint.getLongitude());
        localStringBuilder.append("&polygon=" + d2 + "," + d1 + ";" + d4 + "," + d3);
        break;
      }
      if (!((aa)this.a).b.getShape().equals("Polygon"))
        break;
      localObject = ((aa)this.a).b.getPolyGonList();
      if ((localObject == null) || (((List)localObject).size() <= 0))
        break;
      localStringBuilder.append("&polygon=" + i.a((List)localObject));
      break;
      label670: localStringBuilder.append("&citylimit=false");
      break label417;
      label681: localStringBuilder.append("&children=0");
    }
  }

  public ArrayList<PoiItem> e(String paramString)
    throws AMapException
  {
    Object localObject1 = new ArrayList();
    if (paramString == null);
    Object localObject3;
    while (true)
    {
      return localObject1;
      Object localObject2 = localObject1;
      localObject3 = localObject1;
      try
      {
        JSONObject localJSONObject = new JSONObject(paramString);
        localObject2 = localObject1;
        localObject3 = localObject1;
        this.j = localJSONObject.optInt("count");
        localObject2 = localObject1;
        localObject3 = localObject1;
        paramString = n.c(localJSONObject);
        localObject1 = paramString;
        localObject2 = paramString;
        localObject3 = paramString;
        if (localJSONObject.has("suggestion"))
        {
          localObject2 = paramString;
          localObject3 = paramString;
          localJSONObject = localJSONObject.optJSONObject("suggestion");
          localObject1 = paramString;
          if (localJSONObject != null)
          {
            localObject2 = paramString;
            localObject3 = paramString;
            this.l = n.a(localJSONObject);
            localObject2 = paramString;
            localObject3 = paramString;
            this.k = n.b(localJSONObject);
            return paramString;
          }
        }
      }
      catch (JSONException paramString)
      {
        i.a(paramString, "PoiSearchKeywordHandler", "paseJSONJSONException");
        return localObject2;
      }
      catch (Exception paramString)
      {
        i.a(paramString, "PoiSearchKeywordHandler", "paseJSONException");
      }
    }
    return localObject3;
  }

  public String g()
  {
    String str = h.a() + "/place";
    if (((aa)this.a).b == null)
      return str + "/text?";
    if (((aa)this.a).b.getShape().equals("Bound"))
      return str + "/around?";
    if ((((aa)this.a).b.getShape().equals("Rectangle")) || (((aa)this.a).b.getShape().equals("Polygon")))
      return str + "/polygon?";
    return str;
  }

  public int h()
  {
    return this.i;
  }

  public int i()
  {
    return this.j;
  }

  public PoiSearch.Query j()
  {
    return ((aa)this.a).a;
  }

  public PoiSearch.SearchBound k()
  {
    return ((aa)this.a).b;
  }

  public List<String> l()
  {
    return this.k;
  }

  public List<SuggestionCity> m()
  {
    return this.l;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.d
 * JD-Core Version:    0.6.2
 */
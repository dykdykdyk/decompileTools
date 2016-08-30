package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.cloud.CloudItem;
import com.amap.api.services.cloud.CloudItemDetail;
import com.amap.api.services.cloud.CloudSearch.Query;
import com.amap.api.services.cloud.CloudSearch.SearchBound;
import com.amap.api.services.cloud.CloudSearch.Sortingrules;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class g extends e<CloudSearch.Query, ArrayList<CloudItem>>
{
  private int h = 1;
  private int i = 20;
  private int j = 0;

  public g(Context paramContext, CloudSearch.Query paramQuery)
  {
    super(paramContext, paramQuery);
  }

  private ArrayList<CloudItem> b(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject.has("datas"))
    {
      JSONArray localJSONArray = paramJSONObject.optJSONArray("datas");
      this.j = paramJSONObject.getInt("count");
      int k = 0;
      while (k < localJSONArray.length())
      {
        paramJSONObject = localJSONArray.optJSONObject(k);
        CloudItemDetail localCloudItemDetail = a(paramJSONObject);
        a(localCloudItemDetail, paramJSONObject);
        localArrayList.add(localCloudItemDetail);
        k += 1;
      }
    }
    return localArrayList;
    return localArrayList;
  }

  private String l()
  {
    if (((CloudSearch.Query)this.a).getSortingrules() != null)
      return ((CloudSearch.Query)this.a).getSortingrules().toString();
    return "";
  }

  private String m()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str1 = ((CloudSearch.Query)this.a).getFilterString();
    String str2 = ((CloudSearch.Query)this.a).getFilterNumString();
    localStringBuffer.append(str1);
    if ((!i.a(str1)) && (!i.a(str2)))
      localStringBuffer.append("+");
    localStringBuffer.append(str2);
    return localStringBuffer.toString();
  }

  public void a(int paramInt)
  {
    this.h = (paramInt + 1);
    ((CloudSearch.Query)this.a).getBound();
  }

  public void b(int paramInt)
  {
    int k = paramInt;
    if (paramInt <= 0)
      k = 20;
    this.i = k;
  }

  protected String e()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("output=json");
    double d1;
    double d2;
    Object localObject;
    if (((CloudSearch.Query)this.a).getBound() != null)
    {
      if (((CloudSearch.Query)this.a).getBound().getShape().equals("Bound"))
      {
        d1 = i.a(((CloudSearch.Query)this.a).getBound().getCenter().getLongitude());
        d2 = i.a(((CloudSearch.Query)this.a).getBound().getCenter().getLatitude());
        localStringBuilder.append("&center=").append(d1 + "," + d2);
        localStringBuilder.append("&radius=").append(((CloudSearch.Query)this.a).getBound().getRange());
      }
    }
    else
    {
      localStringBuilder.append("&tableid=" + ((CloudSearch.Query)this.a).getTableID());
      if (!i.a(m()))
      {
        m();
        localObject = b(m());
        localStringBuilder.append("&filter=").append((String)localObject);
      }
      if (!i.a(l()))
        localStringBuilder.append("&sortrule=").append(l());
      localObject = b(((CloudSearch.Query)this.a).getQueryString());
      if ((((CloudSearch.Query)this.a).getQueryString() == null) || (((CloudSearch.Query)this.a).getQueryString().equals("")))
        break label676;
      localStringBuilder.append("&keywords=" + (String)localObject);
    }
    while (true)
    {
      localStringBuilder.append("&limit=" + this.i);
      localStringBuilder.append("&page=" + this.h);
      localStringBuilder.append("&key=" + aj.f(this.d));
      return localStringBuilder.toString();
      if (((CloudSearch.Query)this.a).getBound().getShape().equals("Rectangle"))
      {
        localObject = ((CloudSearch.Query)this.a).getBound().getLowerLeft();
        LatLonPoint localLatLonPoint = ((CloudSearch.Query)this.a).getBound().getUpperRight();
        d1 = i.a(((LatLonPoint)localObject).getLatitude());
        d2 = i.a(((LatLonPoint)localObject).getLongitude());
        double d3 = i.a(localLatLonPoint.getLatitude());
        double d4 = i.a(localLatLonPoint.getLongitude());
        localStringBuilder.append("&polygon=" + d2 + "," + d1 + ";" + d4 + "," + d3);
        break;
      }
      if (((CloudSearch.Query)this.a).getBound().getShape().equals("Polygon"))
      {
        localObject = ((CloudSearch.Query)this.a).getBound().getPolyGonList();
        if ((localObject == null) || (((List)localObject).size() <= 0))
          break;
        localStringBuilder.append("&polygon=" + i.a((List)localObject));
        break;
      }
      if (!((CloudSearch.Query)this.a).getBound().getShape().equals("Local"))
        break;
      localObject = b(((CloudSearch.Query)this.a).getBound().getCity());
      localStringBuilder.append("&city=").append((String)localObject);
      break;
      label676: localStringBuilder.append("&keywords=");
    }
  }

  public ArrayList<CloudItem> e(String paramString)
    throws AMapException
  {
    if ((paramString == null) || (paramString.equals("")))
      return null;
    try
    {
      paramString = b(new JSONObject(paramString));
      return paramString;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }

  public String g()
  {
    String str1 = h.b() + "/datasearch";
    String str2 = ((CloudSearch.Query)this.a).getBound().getShape();
    if (str2.equals("Bound"))
      return str1 + "/around?";
    if ((str2.equals("Polygon")) || (str2.equals("Rectangle")))
      return str1 + "/polygon?";
    if (str2.equals("Local"))
      return str1 + "/local?";
    return str1;
  }

  public int h()
  {
    return this.i;
  }

  public int i()
  {
    return this.j;
  }

  public CloudSearch.Query j()
  {
    return (CloudSearch.Query)this.a;
  }

  public CloudSearch.SearchBound k()
  {
    return ((CloudSearch.Query)this.a).getBound();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.g
 * JD-Core Version:    0.6.2
 */
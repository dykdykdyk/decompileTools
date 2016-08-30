package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.help.InputtipsQuery;
import com.amap.api.services.help.Tip;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class m extends b<InputtipsQuery, ArrayList<Tip>>
{
  public m(Context paramContext, InputtipsQuery paramInputtipsQuery)
  {
    super(paramContext, paramInputtipsQuery);
  }

  protected ArrayList<Tip> d(String paramString)
    throws AMapException
  {
    try
    {
      paramString = n.m(new JSONObject(paramString));
      return paramString;
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "InputtipsHandler", "paseJSON");
    }
    return null;
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("output=json&keywords=").append(b(((InputtipsQuery)this.a).getKeyword()));
    String str = ((InputtipsQuery)this.a).getCity();
    if (!n.i(str))
    {
      str = b(str);
      localStringBuffer.append("&city=").append(str);
    }
    str = ((InputtipsQuery)this.a).getType();
    if (!n.i(str))
    {
      str = b(str);
      localStringBuffer.append("&type=").append(str);
    }
    if (((InputtipsQuery)this.a).getCityLimit())
      localStringBuffer.append("&citylimit=true");
    while (true)
    {
      localStringBuffer.append("&key=").append(aj.f(this.d));
      localStringBuffer.append("&language=").append(h.c());
      return localStringBuffer.toString();
      localStringBuffer.append("&citylimit=false");
    }
  }

  public String g()
  {
    return h.a() + "/assistant/inputtips?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.m
 * JD-Core Version:    0.6.2
 */
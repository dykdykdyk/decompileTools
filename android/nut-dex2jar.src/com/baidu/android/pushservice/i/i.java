package com.baidu.android.pushservice.i;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.c;
import com.baidu.android.pushservice.util.d;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class i extends p
{
  private static i e = null;
  private String c = "LbsSender";
  private c d = null;

  private i(Context paramContext)
  {
    super(paramContext);
    this.b = "http://lbsonline.pushct.baidu.com/lbsupload";
  }

  public static i a(Context paramContext)
  {
    if (e == null)
      e = new i(paramContext);
    return e;
  }

  String a(boolean paramBoolean)
  {
    return d.a(this.a, paramBoolean);
  }

  public void a(c paramc)
  {
    this.d = paramc;
  }

  void a(String paramString)
  {
    d.a(this.a, System.currentTimeMillis());
    a.b(this.c, "<<< Location info send result return OK!");
    a.c(this.c, "Lbs upload respponse: " + paramString);
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("lbsInfo"))
      {
        paramString = paramString.optJSONObject("lbsInfo");
        if (paramString != null)
        {
          paramString = d.a(this.a, paramString);
          if ((this.d != null) && (!TextUtils.isEmpty(paramString)))
          {
            this.d.a(0, paramString);
            this.d = null;
          }
        }
        return;
      }
    }
    catch (JSONException paramString)
    {
      while (true)
      {
        a.e(this.c, " e " + paramString.getMessage());
        paramString = null;
      }
    }
  }

  void a(String paramString, HashMap<String, String> paramHashMap)
  {
    paramHashMap.put("method", "uploadGeo");
    a.c(this.c, "Sending LBS data: " + paramString);
    paramHashMap.put("data", paramString);
  }

  boolean a()
  {
    return true;
  }

  boolean b()
  {
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.i
 * JD-Core Version:    0.6.2
 */
package com.baidu.android.pushservice.e;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.g.e;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.m;
import com.baidu.android.pushservice.i.t;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class u extends c
{
  protected String e;
  private e f;
  private String g = null;
  private String h = "";
  private String i = "";
  private String j = "";
  private String k = "";
  private int l = 0;

  public u(l paraml, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, e parame, Context paramContext, int paramInt)
  {
    super(paraml, paramContext);
    this.e = paramString1;
    this.h = paramString2;
    this.i = paramString3;
    this.j = paramString4;
    this.k = paramString5;
    this.f = parame;
    this.l = paramInt;
  }

  private void b(int paramInt)
  {
    com.baidu.android.pushservice.i.c localc = new com.baidu.android.pushservice.i.c();
    if (this.l == 1)
    {
      localc.f = "020706";
      localc.g = System.currentTimeMillis();
      localc.h = com.baidu.android.pushservice.i.a.b.d(this.a);
      localc.j = this.e;
      if (paramInt != 0)
        break label131;
      localc.c = this.k;
      m localm = new m(this.e);
      localm.c(m.b);
      t.a(this.a, localm);
    }
    while (true)
    {
      t.a(this.a, localc);
      return;
      if (this.l == 0)
      {
        localc.f = "020704";
        break;
      }
      if (this.l != 2)
        break;
      localc.f = "020708";
      break;
      label131: localc.i = paramInt;
      localc.a = this.g;
    }
  }

  protected void a(int paramInt)
  {
    if (this.f != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("details", this.g);
      this.f.a(paramInt, localHashMap);
    }
    b(paramInt);
  }

  protected void a(int paramInt, byte[] paramArrayOfByte)
  {
    HashMap localHashMap;
    if (this.f != null)
    {
      localHashMap = new HashMap();
      if (paramInt != 0)
        break label47;
      localHashMap.put("details", this.g);
    }
    while (true)
    {
      this.f.a(paramInt, localHashMap);
      b(paramInt);
      return;
      try
      {
        label47: localHashMap.put("error_msg", new JSONObject(new String(paramArrayOfByte)).getString("error_msg"));
      }
      catch (Exception paramArrayOfByte)
      {
        a.c("BaseApiProcessor", "sendResult E: " + paramArrayOfByte);
      }
    }
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "lightapp_settags");
    paramHashMap.put("tags", this.e);
    paramHashMap.put("cuid", com.baidu.android.pushservice.j.c.a(this.a));
    paramHashMap.put("csrftoken", this.h);
    paramHashMap.put("nonce", this.i);
    if ((this.l == 1) || (this.l == 0))
      paramHashMap.put("push_type", "2");
    while (true)
    {
      if (!TextUtils.isEmpty(this.j))
        paramHashMap.put("referer", this.j);
      a.c("BaseApiProcessor", "lightapp_subscribe_service param -- " + b.a(paramHashMap));
      return;
      if (this.l == 2)
        paramHashMap.put("push_type", "6");
    }
  }

  protected String b(String paramString)
  {
    paramString = super.b(paramString);
    try
    {
      this.g = new JSONObject(paramString).getJSONObject("response_params").getJSONArray("details").toString();
      return paramString;
    }
    catch (JSONException localJSONException)
    {
      a.e("BaseApiProcessor", "error " + localJSONException.getMessage());
    }
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.u
 * JD-Core Version:    0.6.2
 */
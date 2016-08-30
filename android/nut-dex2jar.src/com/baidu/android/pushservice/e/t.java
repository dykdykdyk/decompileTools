package com.baidu.android.pushservice.e;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.g.e;
import com.baidu.android.pushservice.i.m;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class t extends d
{
  private int f = 2;
  private e g;
  private String h = "";
  private String i = "";
  private String j = "";
  private String k = "";
  private String l = "";
  private String m = "";
  private String n = "DEFAULT";
  private String o = "";

  public t(l paraml, int paramInt, String paramString1, String paramString2, String paramString3, e parame, Context paramContext)
  {
    super(paraml, paramContext);
    this.f = paramInt;
    this.g = parame;
    this.o = paramString2;
    if (!TextUtils.isEmpty(paramString1))
      this.n = paramString1;
    this.h = paraml.f;
  }

  public t(l paraml, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, e parame, Context paramContext)
  {
    super(paraml, paramContext);
    this.f = paramInt;
    this.g = parame;
    this.k = paramString1;
    if (!TextUtils.isEmpty(paramString2))
      this.l = paramString2;
    if (!TextUtils.isEmpty(paramString3))
      this.m = paramString3;
    if (!TextUtils.isEmpty(paramString4))
      this.n = paramString4;
  }

  protected void a(int paramInt)
  {
    a(paramInt, PushConstants.a(paramInt).getBytes());
  }

  protected void a(int paramInt, byte[] paramArrayOfByte)
  {
    label309: 
    while (true)
    {
      Object localObject;
      try
      {
        if (this.g != null)
        {
          localObject = new HashMap();
          if (paramInt == 0)
          {
            ((HashMap)localObject).put("app_id", this.h);
            ((HashMap)localObject).put("channel_id", this.j);
            ((HashMap)localObject).put("user_id", this.i);
            this.g.a(paramInt, (HashMap)localObject);
          }
        }
        else
        {
          localObject = new com.baidu.android.pushservice.i.c();
          if (this.f != 2)
            break label241;
          ((com.baidu.android.pushservice.i.c)localObject).f = "020701";
          ((com.baidu.android.pushservice.i.c)localObject).g = System.currentTimeMillis();
          ((com.baidu.android.pushservice.i.c)localObject).h = com.baidu.android.pushservice.i.a.b.d(this.a);
          ((com.baidu.android.pushservice.i.c)localObject).j = this.h;
          if (paramInt != 0)
            break label309;
          ((com.baidu.android.pushservice.i.c)localObject).c = this.j;
          paramArrayOfByte = new m(this.h);
          paramArrayOfByte.c(m.b);
          com.baidu.android.pushservice.i.t.a(this.a, paramArrayOfByte);
          com.baidu.android.pushservice.i.t.a(this.a, (com.baidu.android.pushservice.i.c)localObject);
          return;
        }
        try
        {
          ((HashMap)localObject).put("error_msg", new JSONObject(new String(paramArrayOfByte)).getString("error_msg"));
        }
        catch (Exception localException)
        {
          com.baidu.android.pushservice.h.a.c("BaseApiProcessor", "sendResult E: " + localException);
        }
        continue;
      }
      catch (Exception paramArrayOfByte)
      {
        com.baidu.android.pushservice.h.a.d("BaseApiProcessor", "e: " + paramArrayOfByte);
        return;
      }
      label241: if (this.f == 1)
      {
        ((com.baidu.android.pushservice.i.c)localObject).f = "020703";
      }
      else if (this.f == 3)
      {
        ((com.baidu.android.pushservice.i.c)localObject).f = "020702";
      }
      else if (this.f == 4)
      {
        ((com.baidu.android.pushservice.i.c)localObject).f = "020705";
      }
      else if (this.f == 5)
      {
        ((com.baidu.android.pushservice.i.c)localObject).f = "020707";
        continue;
        ((com.baidu.android.pushservice.i.c)localObject).i = paramInt;
        try
        {
          ((com.baidu.android.pushservice.i.c)localObject).a = new JSONObject(new String(paramArrayOfByte)).getString("error_msg");
        }
        catch (JSONException paramArrayOfByte)
        {
          com.baidu.android.pushservice.h.a.c("BaseApiProcessor", "insert BE: " + paramArrayOfByte);
        }
      }
    }
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "lightapp_bind");
    String str2 = Build.MODEL;
    String str1 = str2;
    if (!TextUtils.isEmpty(str2))
      str1 = "unknown";
    paramHashMap.put("bind_name", str1);
    if ((this.f == 1) || (this.f == 4) || (this.f == 5))
    {
      paramHashMap.put("nonce", this.l);
      if (!TextUtils.isEmpty(this.m))
        paramHashMap.put("referer", this.m);
      if (this.f == 5)
      {
        paramHashMap.put("push_type", "5");
        if (TextUtils.isEmpty(this.k))
          break label270;
        paramHashMap.put("csrftoken", this.k);
        paramHashMap.put("cuid", com.baidu.android.pushservice.j.c.a(this.a));
      }
    }
    while (true)
    {
      paramHashMap.put("host_app", this.n);
      paramHashMap.put("push_sdk_version", com.baidu.android.pushservice.a.a());
      com.baidu.android.pushservice.h.a.c("BaseApiProcessor", "L BIND url: " + this.c);
      com.baidu.android.pushservice.h.a.c("BaseApiProcessor", "L BIND param -- " + b.a(paramHashMap));
      return;
      paramHashMap.put("push_type", "1");
      break;
      if ((this.f != 2) && (this.f != 3))
        break;
      paramHashMap.put("push_type", "3");
      break;
      label270: paramHashMap.put("push_hash", this.o);
      paramHashMap.put("appid", this.h);
    }
  }

  protected String b(String paramString)
  {
    paramString = super.b(paramString);
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString).getJSONObject("response_params");
      this.h = localJSONObject.getString("appid");
      this.i = localJSONObject.getString("user_id");
      this.j = localJSONObject.getString("channel_id");
      return paramString;
    }
    catch (JSONException localJSONException)
    {
      com.baidu.android.pushservice.h.a.c("BaseApiProcessor", "bindData Exception: " + localJSONException);
    }
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.t
 * JD-Core Version:    0.6.2
 */
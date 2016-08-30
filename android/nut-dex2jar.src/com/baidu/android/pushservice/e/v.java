package com.baidu.android.pushservice.e;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.g.e;
import com.baidu.android.pushservice.j.c;
import java.util.HashMap;
import org.json.JSONObject;

public class v extends d
{
  private int f;
  private e g;
  private String h = "";
  private String i = "";
  private String j = "";
  private String k = "DEFAULT";
  private String l;
  private String m;
  private String n;

  public v(l paraml, int paramInt, String paramString1, String paramString2, e parame, Context paramContext)
  {
    super(paraml, paramContext);
    this.f = paramInt;
    this.g = parame;
    if (!TextUtils.isEmpty(paramString1))
      this.k = paramString1;
    this.m = paramString2;
    this.n = paraml.f;
  }

  public v(l paraml, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, e parame, Context paramContext)
  {
    super(paraml, paramContext);
    this.f = paramInt;
    this.g = parame;
    this.h = paramString1;
    if (!TextUtils.isEmpty(paramString2))
      this.i = paramString2;
    if (!TextUtils.isEmpty(paramString3))
      this.j = paramString3;
    if (!TextUtils.isEmpty(paramString4))
      this.k = paramString4;
    if (!TextUtils.isEmpty(paraml.i))
      this.l = paraml.i;
  }

  protected void a(int paramInt)
  {
    a(paramInt, PushConstants.a(paramInt).getBytes());
  }

  protected void a(int paramInt, byte[] paramArrayOfByte)
  {
    HashMap localHashMap;
    if (this.g != null)
      localHashMap = new HashMap();
    try
    {
      localHashMap.put("error_msg", new JSONObject(new String(paramArrayOfByte)).getString("error_msg"));
      label42: this.g.a(paramInt, localHashMap);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      break label42;
    }
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "lightapp_unbind");
    if (this.f == 1)
    {
      paramHashMap.put("push_type", "1");
      paramHashMap.put("nonce", this.i);
      paramHashMap.put("referer", this.j);
      if (TextUtils.isEmpty(this.h))
        break label199;
      paramHashMap.put("csrftoken", this.h);
      paramHashMap.put("cuid", c.a(this.a));
    }
    while (true)
    {
      paramHashMap.put("host_app", this.k);
      paramHashMap.put("push_sdk_version", com.baidu.android.pushservice.a.a());
      com.baidu.android.pushservice.h.a.c("BaseRegisterProcessor", "L BIND url: " + this.c);
      com.baidu.android.pushservice.h.a.c("BaseRegisterProcessor", "L UNBIND param -- " + b.a(paramHashMap));
      return;
      if ((this.f != 2) && (this.f != 3))
        break;
      paramHashMap.put("push_type", "3");
      break;
      label199: paramHashMap.put("push_hash", this.m);
      paramHashMap.put("appid", this.n);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.v
 * JD-Core Version:    0.6.2
 */
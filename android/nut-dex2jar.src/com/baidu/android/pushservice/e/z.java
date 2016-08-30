package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class z extends e
{
  protected String e = null;
  protected String f = null;
  protected String g = null;
  protected String h = null;

  public z(l paraml, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paraml, paramContext);
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    this.h = paramString4;
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "sendmsgtouser");
    paramHashMap.put("appid", this.e);
    paramHashMap.put("user_id", this.f);
    if ((this.h != null) && (this.g != null))
    {
      a.c("user_id", this.f);
      StringBuilder localStringBuilder1 = new StringBuilder("[\"");
      localStringBuilder1.append(this.g).append("\"]");
      StringBuilder localStringBuilder2 = new StringBuilder("[\"");
      localStringBuilder2.append(this.h).append("\"]");
      paramHashMap.put("msg_keys", localStringBuilder1.toString());
      paramHashMap.put("messages", localStringBuilder2.toString());
      a.c("Send", "key:" + this.g.toString() + " messages:" + this.h.toString());
      a.c("Send", "sendMsgToUser param -- " + b.a(paramHashMap));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.z
 * JD-Core Version:    0.6.2
 */
package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;
import org.json.JSONArray;

public class k extends c
{
  String[] e;

  public k(l paraml, Context paramContext, String[] paramArrayOfString)
  {
    super(paraml, paramContext);
    this.e = paramArrayOfString;
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    int j = this.e.length;
    if (j == 0)
    {
      a(30602);
      a.c("Delete", "Delete param -- msgIds == null");
      return;
    }
    paramHashMap.put("method", "delete");
    JSONArray localJSONArray = new JSONArray();
    int i = 0;
    while (i < j)
    {
      localJSONArray.put(this.e[i]);
      i += 1;
    }
    paramHashMap.put("msg_ids", localJSONArray.toString());
    a.c("Delete", "Delete param -- " + b.a(paramHashMap));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.k
 * JD-Core Version:    0.6.2
 */
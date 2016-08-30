package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.m;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class w extends c
{
  private ArrayList<String> e = new ArrayList();

  public w(l paraml, Context paramContext)
  {
    super(paraml, paramContext);
  }

  protected void a(int paramInt, byte[] paramArrayOfByte)
  {
    Intent localIntent = new Intent();
    if (this.b.a.equals("method_list_lapp_tags"))
      localIntent.setAction("com.baidu.android.pushservice.action.lapp.RECEIVE");
    while (true)
    {
      localIntent.putExtra("method", this.b.a);
      localIntent.putExtra("error_msg", paramInt);
      localIntent.putExtra("content", paramArrayOfByte);
      if (!this.e.isEmpty())
        localIntent.putStringArrayListExtra("tags_list", this.e);
      localIntent.setFlags(32);
      a(localIntent);
      if (!TextUtils.isEmpty(this.b.e))
        break;
      if ((this.b.a.equals("method_list_lapp_tags")) || (this.b.a.equals("method_list_sdk_tags")))
        break label214;
      return;
      if (this.b.a.equals("method_list_sdk_tags"))
        localIntent.setAction("com.baidu.android.pushservice.action.sdk.RECEIVE");
      else
        localIntent.setAction("com.baidu.android.pushservice.action.RECEIVE");
    }
    if ((!this.b.a.equals("method_list_lapp_tags")) && (!this.b.a.equals("method_list_sdk_tags")))
      localIntent.setPackage(this.b.e);
    label214: a.c("Glist", "> sendResult to " + this.b.i + " ,method:" + this.b.a + " ,errorCode : " + paramInt + " ,content : " + new String(paramArrayOfByte));
    m.a(this.a, localIntent, localIntent.getAction(), localIntent.getPackage());
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "glist");
    a.c("Glist", "Glist param -- " + b.a(paramHashMap));
  }

  protected String b(String paramString)
  {
    paramString = super.b(paramString);
    try
    {
      JSONArray localJSONArray = new JSONObject(paramString).getJSONObject("response_params").getJSONArray("groups");
      int i = 0;
      while (i < localJSONArray.length())
      {
        this.e.add(localJSONArray.getJSONObject(i).getString("name"));
        i += 1;
      }
    }
    catch (JSONException localJSONException)
    {
      a.e("Glist", "error " + localJSONException.getMessage());
    }
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.w
 * JD-Core Version:    0.6.2
 */
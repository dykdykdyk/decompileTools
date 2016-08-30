package com.baidu.android.pushservice;

import android.os.RemoteException;
import android.text.TextUtils;
import com.baidu.android.pushservice.b.b.a;
import org.json.JSONException;
import org.json.JSONObject;

class PushLightapp$4 extends b.a
{
  PushLightapp$4(PushLightapp paramPushLightapp, IPushLightappListener paramIPushLightappListener, String paramString)
  {
  }

  public void a(int paramInt, String paramString)
    throws RemoteException
  {
  }

  public void b(int paramInt, String paramString)
    throws RemoteException
  {
    Object localObject;
    if (this.a != null)
    {
      localObject = paramString;
      if (paramInt == 0);
    }
    try
    {
      localObject = new JSONObject(paramString);
      if (((JSONObject)localObject).optString("api_key", "null").equals("null"))
        ((JSONObject)localObject).put("api_key", this.b);
      if (!TextUtils.isEmpty(((JSONObject)localObject).optString("app_id", "")))
        ((JSONObject)localObject).remove("app_id");
      localObject = ((JSONObject)localObject).toString();
      this.a.onSubscribeByApiKey(paramInt, (String)localObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        String str = paramString;
    }
  }

  public void c(int paramInt, String paramString)
    throws RemoteException
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushLightapp.4
 * JD-Core Version:    0.6.2
 */
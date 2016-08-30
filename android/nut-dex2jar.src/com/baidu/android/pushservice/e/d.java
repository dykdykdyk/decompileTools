package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.b;
import com.baidu.android.pushservice.c.f;
import com.baidu.android.pushservice.c.g;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.c.i;
import com.baidu.android.pushservice.c.k;
import com.baidu.android.pushservice.util.m;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class d extends c
{
  protected boolean e = false;

  public d(l paraml, Context paramContext)
  {
    super(paraml, paramContext);
  }

  protected String b(String paramString)
  {
    try
    {
      Object localObject1 = new JSONObject(paramString);
      Object localObject5 = ((JSONObject)localObject1).getJSONObject("response_params");
      Object localObject2 = ((JSONObject)localObject5).getString("user_id");
      Object localObject4 = ((JSONObject)localObject5).getString("appid");
      ((JSONObject)localObject5).put("channel_id", com.baidu.android.pushservice.j.a(this.a).b());
      this.b.g = ((String)localObject2);
      this.b.f = ((String)localObject4);
      localObject1 = ((JSONObject)localObject1).toString();
      while (true)
      {
        try
        {
          if ((this.b.a.equals("method_deal_webapp_bind_intent")) && (!TextUtils.isEmpty(this.b.i)))
          {
            localObject5 = (k)com.baidu.android.pushservice.c.l.a(this.a).c(this.b.i);
            if (localObject5 == null)
              break label753;
            ((k)localObject5).a((String)localObject4);
            com.baidu.android.pushservice.c.l.a(this.a).a((com.baidu.android.pushservice.c.a)localObject5, this.e);
            localObject2 = new Intent("com.baidu.android.pushservice.action.BIND_SYNC");
            ((Intent)localObject2).putExtra("r_sync_type", 1);
            ((Intent)localObject2).putExtra("r_sync_from", this.a.getPackageName());
            ((Intent)localObject2).setFlags(32);
            this.a.sendBroadcast((Intent)localObject2);
            return localObject1;
          }
          if ((!this.b.a.equals("method_deal_lapp_bind_intent")) || (TextUtils.isEmpty(this.b.i)))
            break label643;
          localObject5 = (f)g.a(this.a).c(this.b.i);
          if (localObject5 == null)
            break label753;
          ((f)localObject5).a((String)localObject4);
          g.a(this.a).a((com.baidu.android.pushservice.c.a)localObject5, this.e);
          localObject2 = new Intent("com.baidu.android.pushservice.action.BIND_SYNC");
          ((Intent)localObject2).putExtra("r_sync_type", 2);
          ((Intent)localObject2).putExtra("r_sync_from", this.a.getPackageName());
          ((Intent)localObject2).setFlags(32);
          this.a.sendBroadcast((Intent)localObject2);
          return localObject1;
        }
        catch (JSONException localJSONException2)
        {
          try
          {
            if ((!TextUtils.isEmpty(new JSONObject(paramString).getString("request_id"))) && (this.b.a.equals("method_lapp_unbind")) && (!TextUtils.isEmpty(this.b.i)))
            {
              f localf = (f)g.a(this.a).c(this.b.i);
              if (localf != null)
              {
                g.a(this.a).a(localf, false);
                return localObject1;
              }
            }
          }
          catch (JSONException localJSONException3)
          {
            localJSONException3.printStackTrace();
            com.baidu.android.pushservice.h.a.c("BaseRegisterProcessor", "Appid or user_id not found @: \r\n" + paramString);
          }
          if (TextUtils.isEmpty(this.b.b))
            break label472;
        }
        if (this.b.b.equals("internal"))
          break;
        label472: Object localObject3 = new h();
        ((h)localObject3).b(this.b.e);
        ((h)localObject3).a(this.b.f);
        ((h)localObject3).e = this.b.g;
        paramString = new Intent("com.baidu.android.pushservice.action.BIND_SYNC");
        paramString.putExtra("r_sync_type", 0);
        paramString.putExtra("r_sync_rdata_v2", b.a(this.a).a((h)localObject3, this.e));
        paramString.putExtra("r_sync_from", this.a.getPackageName());
        paramString.setFlags(32);
        localObject3 = this.a.getPackageManager().queryBroadcastReceivers(new Intent("com.baidu.android.pushservice.action.BIND_SYNC"), 544).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (ResolveInfo)((Iterator)localObject3).next();
          m.a(this.a, paramString, "com.baidu.android.pushservice.action.BIND_SYNC", ((ResolveInfo)localObject4).activityInfo.packageName);
        }
        label643: if (this.b.a.equals("method_sdk_bind"))
        {
          localObject5 = (i)com.baidu.android.pushservice.c.j.a(this.a).c(this.b.i);
          if (localObject5 != null)
          {
            ((i)localObject5).a((String)localObject4);
            com.baidu.android.pushservice.c.j.a(this.a).a((i)localObject5);
            localObject3 = new Intent("com.baidu.android.pushservice.action.BIND_SYNC");
            ((Intent)localObject3).putExtra("r_sync_type", 3);
            ((Intent)localObject3).putExtra("r_sync_sdk_from", this.a.getPackageName());
            ((Intent)localObject3).setFlags(32);
            this.a.sendBroadcast((Intent)localObject3);
            return localObject1;
          }
        }
        label753: com.baidu.android.pushservice.h.a.b("BaseRegisterProcessor", "RegisterThread userId :  " + (String)localObject3);
        com.baidu.android.pushservice.h.a.b("BaseRegisterProcessor", "RegisterThread appId :  " + (String)localObject4);
        com.baidu.android.pushservice.h.a.b("BaseRegisterProcessor", "RegisterThread content :  " + paramString);
      }
    }
    catch (JSONException localJSONException1)
    {
      String str;
      while (true)
        str = paramString;
      return str;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.d
 * JD-Core Version:    0.6.2
 */
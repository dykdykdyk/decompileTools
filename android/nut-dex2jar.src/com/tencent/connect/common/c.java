package com.tencent.connect.common;

import android.content.Intent;
import com.tencent.open.a.h;
import com.tencent.open.utils.o;
import com.tencent.open.utils.s;
import com.tencent.tauth.b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  private static c a = null;
  private Map<String, d> b = Collections.synchronizedMap(new HashMap());

  private c()
  {
    if (this.b == null)
      this.b = Collections.synchronizedMap(new HashMap());
  }

  public static c a()
  {
    if (a == null)
      a = new c();
    return a;
  }

  public final b a(String paramString)
  {
    if (paramString == null)
    {
      h.e("openSDK_LOG.UIListenerManager", "getListnerWithAction action is null!");
      return null;
    }
    d locald;
    synchronized (this.b)
    {
      locald = (d)this.b.get(paramString);
      this.b.remove(paramString);
      if (locald == null)
        return null;
    }
    return locald.b;
  }

  public final Object a(int paramInt, b paramb)
  {
    String str = o.a(paramInt);
    if (str == null)
    {
      h.e("openSDK_LOG.UIListenerManager", "setListener action is null! rquestCode=" + paramInt);
      return null;
    }
    synchronized (this.b)
    {
      paramb = (d)this.b.put(str, new d(this, paramInt, paramb));
      if (paramb == null)
        return null;
    }
    return paramb.b;
  }

  public final Object a(String paramString, b paramb)
  {
    int i;
    if ("shareToQQ".equals(paramString))
      i = 10103;
    while (i == -1)
    {
      h.e("openSDK_LOG.UIListenerManager", "setListnerWithAction fail, action = " + paramString);
      return null;
      if ("shareToQzone".equals(paramString))
        i = 10104;
      else if ("addToQQFavorites".equals(paramString))
        i = 10105;
      else if ("sendToMyComputer".equals(paramString))
        i = 10106;
      else if ("shareToTroopBar".equals(paramString))
        i = 10107;
      else if ("action_login".equals(paramString))
        i = 11101;
      else if ("action_request".equals(paramString))
        i = 10100;
      else
        i = -1;
    }
    synchronized (this.b)
    {
      paramString = (d)this.b.put(paramString, new d(this, i, paramb));
      if (paramString == null)
        return null;
    }
    return paramString.b;
  }

  public final boolean a(int paramInt1, int paramInt2, Intent paramIntent, b paramb)
  {
    h.c("openSDK_LOG.UIListenerManager", "onActivityResult req=" + paramInt1 + " res=" + paramInt2);
    Object localObject = o.a(paramInt1);
    if (localObject == null)
    {
      h.e("openSDK_LOG.UIListenerManager", "getListner action is null! rquestCode=" + paramInt1);
      localObject = null;
      if (localObject != null)
        break label619;
      if (paramb == null)
        break label181;
      if (paramInt1 != 11101)
        break label135;
      h.e("openSDK_LOG.UIListenerManager", "登录的接口回调不能重新构建，暂时无法提供，先记录下来这种情况是否存在");
      localObject = paramb;
    }
    label135: label181: label619: 
    while (true)
    {
      if (paramInt2 == -1)
      {
        if (paramIntent == null)
        {
          ((b)localObject).a(new com.tencent.tauth.d(-6, "onActivityResult intent data is null.", "onActivityResult intent data is null."));
          return true;
          localObject = a((String)localObject);
          break;
          if (paramInt1 == 11105)
          {
            h.e("openSDK_LOG.UIListenerManager", "Social Api 的接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在");
            localObject = paramb;
            continue;
          }
          localObject = paramb;
          if (paramInt1 != 11106)
            continue;
          h.e("openSDK_LOG.UIListenerManager", "Social Api 的H5接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在");
          localObject = paramb;
          continue;
          h.e("openSDK_LOG.UIListenerManager", "onActivityResult can't find the listener");
          return false;
        }
        paramb = paramIntent.getStringExtra("key_action");
        if ("action_login".equals(paramb))
        {
          paramInt1 = paramIntent.getIntExtra("key_error_code", 0);
          if (paramInt1 == 0)
          {
            paramIntent = paramIntent.getStringExtra("key_response");
            if (paramIntent == null);
          }
        }
      }
      while (true)
      {
        try
        {
          ((b)localObject).a(s.d(paramIntent));
          return true;
        }
        catch (JSONException paramb)
        {
          ((b)localObject).a(new com.tencent.tauth.d(-4, "服务器返回数据格式有误!", paramIntent));
          h.b("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, json error", paramb);
          continue;
        }
        h.b("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, onComplete");
        ((b)localObject).a(new JSONObject());
        continue;
        h.e("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, onError = " + paramInt1);
        ((b)localObject).a(new com.tencent.tauth.d(paramInt1, paramIntent.getStringExtra("key_error_msg"), paramIntent.getStringExtra("key_error_detail")));
        continue;
        if ("action_share".equals(paramb))
        {
          String str = paramIntent.getStringExtra("result");
          paramb = paramIntent.getStringExtra("response");
          if ("cancel".equals(str))
          {
            ((b)localObject).a();
          }
          else if ("error".equals(str))
          {
            ((b)localObject).a(new com.tencent.tauth.d(-6, "unknown error", paramb));
          }
          else if ("complete".equals(str))
          {
            if (paramb == null);
            for (paramIntent = "{\"ret\": 0}"; ; paramIntent = paramb)
            {
              try
              {
                ((b)localObject).a(new JSONObject(paramIntent));
              }
              catch (JSONException paramIntent)
              {
                paramIntent.printStackTrace();
                ((b)localObject).a(new com.tencent.tauth.d(-4, "json error", paramb));
              }
              break;
            }
          }
        }
        else
        {
          paramInt1 = paramIntent.getIntExtra("key_error_code", 0);
          if (paramInt1 == 0)
          {
            paramIntent = paramIntent.getStringExtra("key_response");
            if (paramIntent != null)
              try
              {
                ((b)localObject).a(s.d(paramIntent));
              }
              catch (JSONException paramb)
              {
                ((b)localObject).a(new com.tencent.tauth.d(-4, "服务器返回数据格式有误!", paramIntent));
              }
            else
              ((b)localObject).a(new JSONObject());
          }
          else
          {
            ((b)localObject).a(new com.tencent.tauth.d(paramInt1, paramIntent.getStringExtra("key_error_msg"), paramIntent.getStringExtra("key_error_detail")));
            continue;
            ((b)localObject).a();
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.common.c
 * JD-Core Version:    0.6.2
 */
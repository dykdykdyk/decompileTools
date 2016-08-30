package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.d;
import com.baidu.android.pushservice.c.i;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.j.e;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.m;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class h extends c
{
  private static final String b = h.class.getSimpleName();

  public h(Context paramContext)
  {
    super(paramContext);
  }

  public static String[] a(Context paramContext, int paramInt, String paramString1, String paramString2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    String[] arrayOfString = new String[2];
    do
    {
      try
      {
        Object localObject = com.baidu.android.pushservice.j.f.a(paramArrayOfByte1, "MIIBUwIBADANBgkqhkiG9w0BAQEFAASCAT0wggE5AgEAAkEAw8a6IWcegMVqTifD\rWKkKvoSIIDaBIEm1QpJ8vjUajP6HihfYWzq429zRc0+WjBnDU2nUAUobBGBUu4u+\ri3peeQIDAQABAkBYi6QZgXMpWKBo8tEGY4YpfvW2ZBBo0w15K5nhyVDV3Wo2tFDp\rJaBx7HY1WihCd6STczrO6yTGF2WXYA8rkUEBAiEA6IPQzZc7KgnIUSF2Asf7PCSf\rJqblINFEY9qpSzMWdmECIQDXjPQSnvoPUjTESsPBcuIoQZQDapjnXGq8dKt/z60v\rGQIgeNbo0bBjIznqTZ/iQRfFzkAKJoBeXGvl6y9dBKQMbIECIDJUAPEQGYbWROfI\rJSjX8CJCHZMmoojytSFHhHuVO/SRAiASwQ74b9JvnomuFX4cq4yCoWiBWVoxMyCd\rNAD4k4FVMw==\r");
        paramArrayOfByte1 = e.a(m.a(paramString2.getBytes(), paramArrayOfByte2), false);
        localObject = new String((byte[])localObject);
        if (paramArrayOfByte1 != null)
        {
          boolean bool = paramArrayOfByte1.equals(localObject);
          if (bool);
        }
        else
        {
          paramArrayOfByte1 = null;
          return paramArrayOfByte1;
        }
      }
      catch (Exception paramContext)
      {
        a.e(b, paramContext.getMessage());
        return null;
      }
      if ((paramInt == l.b.a()) || (paramInt == l.c.a()))
      {
        arrayOfString[0] = new String(paramArrayOfByte2);
        arrayOfString[1] = null;
        return arrayOfString;
      }
      paramArrayOfByte1 = arrayOfString;
    }
    while (paramInt != l.g.a());
    paramContext = j.a(paramContext, paramString2, paramString1, paramArrayOfByte2);
    arrayOfString[0] = paramContext.mDescription;
    arrayOfString[1] = paramContext.mCustomContent;
    return arrayOfString;
  }

  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    int j = 0;
    d locald = d.a(this.a, paramString1);
    switch (h.1.a[locald.a().ordinal()])
    {
    default:
      i = 7;
      paramString2 = ">>> NOT found client for privateMessageHandler appid " + paramString1;
      f.a(this.a, paramString1);
      a.b(b, paramString2 + " msgbody " + new String(paramArrayOfByte2));
      m.a(paramString2, this.a);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return i;
      Object localObject = this.a.getPackageManager();
      boolean bool;
      try
      {
        ((PackageManager)localObject).getPackageInfo(locald.a.c(), 128);
        PublicMsg localPublicMsg = j.a(this.a, paramString2, paramString1, paramArrayOfByte2);
        bool = a(paramArrayOfByte2);
        i = j;
        if (localPublicMsg == null)
          continue;
        Intent localIntent = new Intent();
        if (bool)
        {
          i = 5;
          localObject = "com.baidu.android.pushservice.action.FB_MESSAGE";
          localIntent.putExtra("message_string", localPublicMsg.mDescription);
          localIntent.putExtra("message_id", paramString2);
          localIntent.putExtra("baidu_message_type", paramInt);
          localIntent.putExtra("baidu_message_body", paramArrayOfByte2);
          localIntent.putExtra("app_id", paramString1);
          localIntent.putExtra("baidu_message_secur_info", paramArrayOfByte1);
          bool = TextUtils.isEmpty(localPublicMsg.mCustomContent);
          if (!bool)
            try
            {
              paramString2 = new JSONObject(localPublicMsg.mCustomContent);
              paramArrayOfByte1 = paramString2.keys();
              while (paramArrayOfByte1.hasNext())
              {
                paramArrayOfByte2 = (String)paramArrayOfByte1.next();
                localIntent.putExtra(paramArrayOfByte2, paramString2.getString(paramArrayOfByte2));
              }
            }
            catch (JSONException paramString2)
            {
              a.e(b, "Custom content to JSONObject exception::" + paramString2.getMessage());
            }
        }
        while (true)
        {
          m.a(this.a, localIntent, (String)localObject, locald.a.c());
          paramString2 = ">>> Deliver message to client: " + locald.a.c() + " msg: " + localPublicMsg.mDescription;
          a.b(b, paramString2);
          m.a(paramString2, this.a);
          return i;
          localIntent.putExtra("msg_id", paramString2);
          localObject = "com.baidu.android.pushservice.action.MESSAGE";
          i = 0;
          break;
          localIntent.putExtra("extra_extra_custom_content", localPublicMsg.mCustomContent);
        }
      }
      catch (PackageManager.NameNotFoundException paramString2)
      {
        paramString2 = ">>> NOT deliver to app: " + locald.a.c() + ", package has been uninstalled.";
        f.a(this.a, paramString1);
        a.b(b, paramString2);
        m.a(paramString2, this.a);
        return 8;
      }
      a.c(b, "receive sdk message " + new String(paramArrayOfByte2) + " pkgName = " + locald.b.c());
      try
      {
        paramString1 = new JSONObject(new String(paramArrayOfByte2)).optString("description");
        bool = TextUtils.isEmpty(paramString1);
        if (!bool)
          try
          {
            this.a.getPackageManager().getPackageInfo(locald.b.c(), 128);
            localObject = new Intent();
            ((Intent)localObject).setPackage(locald.b.c());
            ((Intent)localObject).putExtra("message", paramArrayOfByte2);
            ((Intent)localObject).putExtra("message_string", paramString1);
            ((Intent)localObject).setFlags(32);
            ((Intent)localObject).putExtra("baidu_message_body", paramArrayOfByte2);
            ((Intent)localObject).putExtra("baidu_message_secur_info", paramArrayOfByte1);
            ((Intent)localObject).putExtra("message_id", paramString2);
            ((Intent)localObject).putExtra("baidu_message_type", paramInt);
            m.a(this.a, (Intent)localObject, "com.baidu.android.pushservice.action.SDK_MESSAGE", locald.b.c());
            return 0;
          }
          catch (PackageManager.NameNotFoundException paramString1)
          {
            paramString1 = ">>> NOT deliver to app: " + locald.b.c() + ", package has been uninstalled.";
            com.baidu.android.pushservice.c.j.a(this.a).a(locald.b, false);
            a.b(b, paramString1);
            return 8;
          }
        return 2;
      }
      catch (JSONException paramString1)
      {
        a.c(b, "description is null return invalid");
        return 2;
      }
      paramString2 = "";
      try
      {
        paramArrayOfByte1 = new JSONObject(new String(paramArrayOfByte2));
        paramInt = i;
        paramString1 = paramString2;
        if (!paramArrayOfByte1.isNull("description"))
        {
          paramString1 = paramArrayOfByte1.getString("description");
          paramInt = i;
        }
        i = paramInt;
        if (TextUtils.isEmpty(paramString1))
          continue;
        paramString2 = new Intent();
        paramString2.putExtra("message", paramArrayOfByte2);
        paramString2.putExtra("message_string", paramString1);
        m.a(this.a, paramString2, "com.baidu.android.pushservice.action.LAPP_MESSAGE", locald.c.c());
        return paramInt;
      }
      catch (JSONException paramString1)
      {
        while (true)
        {
          paramInt = 2;
          paramString1 = paramString2;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.h
 * JD-Core Version:    0.6.2
 */
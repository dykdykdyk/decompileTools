package com.nut.blehunter.rxApi;

import android.content.Context;
import android.content.Intent;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.entity.CommonPushMsg;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.rxApi.service.NutService;
import com.nut.blehunter.rxApi.service.UploadFileService;
import com.nut.blehunter.ui.DialogBoxForPushActivity;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import okhttp3.am;
import okhttp3.ao;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Retrofit;
import retrofit2.Retrofit.Builder;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

public final class a
{
  public static String a = "https://api.find.nutspace.com/";
  public static String b = "https://qa-find.nutspace.com/";
  public static String c = a;
  private static final Object d = new Object();
  private static AuthLoginService e = null;
  private static AccountService f = null;
  private static NutService g = null;
  private static UploadFileService h = null;

  public static ApiError a(String paramString, boolean paramBoolean)
  {
    try
    {
      Object localObject1 = new JSONObject(paramString);
      int i = ((JSONObject)localObject1).optInt("ret", -1);
      if (i != 0)
      {
        paramString = ((JSONObject)localObject1).optString("error");
        if ((paramBoolean) && (i == 201))
        {
          localObject1 = new Intent();
          ((Intent)localObject1).putExtra("type", 7);
          a((Intent)localObject1);
        }
        while (true)
        {
          return new ApiError(i, paramString);
          if ((i == 225) && (!NutTrackerApplication.b))
          {
            Object localObject2 = ((JSONObject)localObject1).optJSONObject("message");
            if (localObject2 != null)
            {
              localObject1 = ((JSONObject)localObject2).optString("downloadUrl");
              localObject2 = ((JSONObject)localObject2).optString("description");
              Intent localIntent = new Intent();
              localIntent.putExtra("type", 8);
              localIntent.putExtra("downloadUrl", (String)localObject1);
              localIntent.putExtra("description", (String)localObject2);
              a(localIntent);
            }
          }
        }
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return e.a(paramString);
    }
    catch (NullPointerException paramString)
    {
      paramString.printStackTrace();
      return e.a(paramString);
    }
    return null;
  }

  public static AuthLoginService a()
  {
    if (e == null);
    synchronized (d)
    {
      e = (AuthLoginService)a(false).create(AuthLoginService.class);
      return e;
    }
  }

  public static HashMap<String, String> a(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(paramString1, paramString2);
    return localHashMap;
  }

  private static Retrofit a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localObject = m.a().b();
      if (localObject != null)
        localObject = new d(((User)localObject).i);
    }
    ao localao;
    SSLSocketFactory localSSLSocketFactory;
    while (true)
    {
      localao = new ao();
      localSSLSocketFactory = f();
      if (localSSLSocketFactory != null)
        break;
      throw new NullPointerException("sslSocketFactory == null");
      localObject = new h();
      continue;
      localObject = new h();
    }
    localao.l = localSSLSocketFactory;
    localao.m = null;
    localao.n = new c((byte)0);
    localao.e.add(localObject);
    Object localObject = new am(localao, (byte)0);
    return new Retrofit.Builder().baseUrl(c).client((am)localObject).addConverterFactory(new j()).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJavaCallAdapterFactory.create()).build();
  }

  private static void a(Intent paramIntent)
  {
    Context localContext = NutTrackerApplication.a().getApplicationContext();
    paramIntent.setClass(localContext, DialogBoxForPushActivity.class);
    paramIntent.setFlags(805306368);
    paramIntent.putExtra("push_msg", new CommonPushMsg());
    localContext.startActivity(paramIntent);
  }

  public static boolean a(String paramString)
  {
    boolean bool = false;
    try
    {
      int i = new JSONObject(paramString).optInt("ret", -1);
      if (i == 0)
        bool = true;
      return bool;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }

  public static AccountService b()
  {
    if (f == null);
    synchronized (d)
    {
      f = (AccountService)a(true).create(AccountService.class);
      return f;
    }
  }

  public static JSONObject b(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      return paramString;
    }
    catch (JSONException paramString)
    {
    }
    return null;
  }

  public static NutService c()
  {
    if (g == null);
    synchronized (d)
    {
      g = (NutService)a(true).create(NutService.class);
      return g;
    }
  }

  public static UploadFileService d()
  {
    if (h == null);
    synchronized (d)
    {
      h = (UploadFileService)a(true).create(UploadFileService.class);
      return h;
    }
  }

  public static void e()
  {
    h = null;
    g = null;
    f = null;
    e = null;
  }

  private static SSLSocketFactory f()
  {
    try
    {
      Object localObject = new b();
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      SecureRandom localSecureRandom = new SecureRandom();
      localSSLContext.init(null, new TrustManager[] { localObject }, localSecureRandom);
      localObject = localSSLContext.getSocketFactory();
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException);
    }
    catch (KeyManagementException localKeyManagementException)
    {
      label45: break label45;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.a
 * JD-Core Version:    0.6.2
 */
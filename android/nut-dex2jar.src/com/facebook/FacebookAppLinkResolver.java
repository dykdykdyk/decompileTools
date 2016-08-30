package com.facebook;

import android.net.Uri;
import android.os.Bundle;
import bolts.c;
import bolts.d;
import bolts.h;
import bolts.m;
import bolts.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookAppLinkResolver
{
  private static final String APP_LINK_ANDROID_TARGET_KEY = "android";
  private static final String APP_LINK_KEY = "app_links";
  private static final String APP_LINK_TARGET_APP_NAME_KEY = "app_name";
  private static final String APP_LINK_TARGET_CLASS_KEY = "class";
  private static final String APP_LINK_TARGET_PACKAGE_KEY = "package";
  private static final String APP_LINK_TARGET_SHOULD_FALLBACK_KEY = "should_fallback";
  private static final String APP_LINK_TARGET_URL_KEY = "url";
  private static final String APP_LINK_WEB_TARGET_KEY = "web";
  private final HashMap<Uri, c> cachedAppLinks = new HashMap();

  private static d getAndroidTargetFromJson(JSONObject paramJSONObject)
  {
    Object localObject = null;
    String str1 = tryGetStringFromJson(paramJSONObject, "package", null);
    if (str1 == null)
      return null;
    String str2 = tryGetStringFromJson(paramJSONObject, "class", null);
    String str3 = tryGetStringFromJson(paramJSONObject, "app_name", null);
    String str4 = tryGetStringFromJson(paramJSONObject, "url", null);
    paramJSONObject = localObject;
    if (str4 != null)
      paramJSONObject = Uri.parse(str4);
    return new d(str1, str2, paramJSONObject, str3);
  }

  private static Uri getWebFallbackUriFromJson(Uri paramUri, JSONObject paramJSONObject)
  {
    Object localObject = null;
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("web");
      if (!tryGetBooleanFromJson(paramJSONObject, "should_fallback", true))
        return null;
      String str = tryGetStringFromJson(paramJSONObject, "url", null);
      paramJSONObject = localObject;
      if (str != null)
        paramJSONObject = Uri.parse(str);
      if (paramJSONObject != null)
        return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
    }
    return paramUri;
  }

  private static boolean tryGetBooleanFromJson(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    try
    {
      boolean bool = paramJSONObject.getBoolean(paramString);
      return bool;
    }
    catch (JSONException paramJSONObject)
    {
    }
    return paramBoolean;
  }

  private static String tryGetStringFromJson(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString(paramString1);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
    }
    return paramString2;
  }

  public h<c> getAppLinkFromUrlInBackground(Uri paramUri)
  {
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add(paramUri);
    localObject = getAppLinkFromUrlsInBackground((List)localObject);
    paramUri = new FacebookAppLinkResolver.1(this, paramUri);
    Executor localExecutor = h.b;
    return ((h)localObject).a(new m((h)localObject, paramUri), localExecutor);
  }

  public h<Map<Uri, c>> getAppLinkFromUrlsInBackground(List<Uri> arg1)
  {
    HashMap localHashMap = new HashMap();
    HashSet localHashSet = new HashSet();
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject2 = ???.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Uri localUri = (Uri)((Iterator)localObject2).next();
      synchronized (this.cachedAppLinks)
      {
        c localc = (c)this.cachedAppLinks.get(localUri);
        if (localc != null)
          localHashMap.put(localUri, localc);
      }
      if (!localHashSet.isEmpty())
        localStringBuilder.append(',');
      localStringBuilder.append(localUri.toString());
      localHashSet.add(localUri);
    }
    if (localHashSet.isEmpty())
      return h.a(localObject1);
    ??? = h.a();
    localObject2 = new Bundle();
    ((Bundle)localObject2).putString("ids", localStringBuilder.toString());
    ((Bundle)localObject2).putString("fields", String.format("%s.fields(%s,%s)", new Object[] { "app_links", "android", "web" }));
    new Request(null, "", (Bundle)localObject2, null, new FacebookAppLinkResolver.2(this, ???, localObject1, localHashSet)).executeAsync();
    return ???.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.FacebookAppLinkResolver
 * JD-Core Version:    0.6.2
 */
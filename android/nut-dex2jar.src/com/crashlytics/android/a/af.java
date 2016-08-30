package com.crashlytics.android.a;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import io.fabric.sdk.android.services.c.c;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

final class af
  implements c<ab>
{
  @TargetApi(9)
  private static JSONObject a(ab paramab)
    throws IOException
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      ae localae = paramab.a;
      localJSONObject.put("appBundleId", localae.a);
      localJSONObject.put("executionId", localae.b);
      localJSONObject.put("installationId", localae.c);
      localJSONObject.put("androidId", localae.d);
      localJSONObject.put("advertisingId", localae.e);
      localJSONObject.put("limitAdTrackingEnabled", localae.f);
      localJSONObject.put("betaDeviceToken", localae.g);
      localJSONObject.put("buildId", localae.h);
      localJSONObject.put("osVersion", localae.i);
      localJSONObject.put("deviceModel", localae.j);
      localJSONObject.put("appVersionCode", localae.k);
      localJSONObject.put("appVersionName", localae.l);
      localJSONObject.put("timestamp", paramab.b);
      localJSONObject.put("type", paramab.c.toString());
      if (paramab.d != null)
        localJSONObject.put("details", new JSONObject(paramab.d));
      localJSONObject.put("customType", paramab.e);
      if (paramab.f != null)
        localJSONObject.put("customAttributes", new JSONObject(paramab.f));
      localJSONObject.put("predefinedType", paramab.g);
      if (paramab.h != null)
        localJSONObject.put("predefinedAttributes", new JSONObject(paramab.h));
      return localJSONObject;
    }
    catch (JSONException paramab)
    {
      if (Build.VERSION.SDK_INT >= 9)
        throw new IOException(paramab.getMessage(), paramab);
    }
    throw new IOException(paramab.getMessage());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.af
 * JD-Core Version:    0.6.2
 */
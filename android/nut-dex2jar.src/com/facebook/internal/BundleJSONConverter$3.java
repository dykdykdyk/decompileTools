package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

final class BundleJSONConverter$3
  implements BundleJSONConverter.Setter
{
  public final void setOnBundle(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    paramBundle.putLong(paramString, ((Long)paramObject).longValue());
  }

  public final void setOnJSON(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.BundleJSONConverter.3
 * JD-Core Version:    0.6.2
 */
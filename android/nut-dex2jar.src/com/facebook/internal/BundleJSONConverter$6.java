package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class BundleJSONConverter$6
  implements BundleJSONConverter.Setter
{
  public final void setOnBundle(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    throw new IllegalArgumentException("Unexpected type from JSON");
  }

  public final void setOnJSON(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    paramObject = (String[])paramObject;
    int j = paramObject.length;
    int i = 0;
    while (i < j)
    {
      localJSONArray.put(paramObject[i]);
      i += 1;
    }
    paramJSONObject.put(paramString, localJSONArray);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.BundleJSONConverter.6
 * JD-Core Version:    0.6.2
 */
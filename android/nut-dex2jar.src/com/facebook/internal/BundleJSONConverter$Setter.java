package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

public abstract interface BundleJSONConverter$Setter
{
  public abstract void setOnBundle(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException;

  public abstract void setOnJSON(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.BundleJSONConverter.Setter
 * JD-Core Version:    0.6.2
 */
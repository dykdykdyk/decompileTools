package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class BundleJSONConverter$7
  implements BundleJSONConverter.Setter
{
  public final void setOnBundle(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    paramObject = (JSONArray)paramObject;
    ArrayList localArrayList = new ArrayList();
    if (paramObject.length() == 0)
    {
      paramBundle.putStringArrayList(paramString, localArrayList);
      return;
    }
    int i = 0;
    while (i < paramObject.length())
    {
      Object localObject = paramObject.get(i);
      if ((localObject instanceof String))
      {
        localArrayList.add((String)localObject);
        i += 1;
      }
      else
      {
        throw new IllegalArgumentException("Unexpected type in an array: " + localObject.getClass());
      }
    }
    paramBundle.putStringArrayList(paramString, localArrayList);
  }

  public final void setOnJSON(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.BundleJSONConverter.7
 * JD-Core Version:    0.6.2
 */
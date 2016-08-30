package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import com.facebook.model.GraphObject;
import org.json.JSONObject;

final class Utility$1 extends AsyncTask<Void, Void, GraphObject>
{
  Utility$1(String paramString1, Context paramContext, String paramString2)
  {
  }

  protected final GraphObject doInBackground(Void[] paramArrayOfVoid)
  {
    return Utility.access$000(this.val$applicationId);
  }

  protected final void onPostExecute(GraphObject paramGraphObject)
  {
    if (paramGraphObject != null)
    {
      paramGraphObject = paramGraphObject.getInnerJSONObject();
      Utility.access$100(this.val$applicationId, paramGraphObject);
      this.val$context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(this.val$settingsKey, paramGraphObject.toString()).apply();
    }
    Utility.access$202(null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.Utility.1
 * JD-Core Version:    0.6.2
 */
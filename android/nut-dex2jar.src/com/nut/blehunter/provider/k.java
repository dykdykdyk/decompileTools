package com.nut.blehunter.provider;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.x;
import org.json.JSONException;
import org.json.JSONObject;

public final class k extends a
{
  public static final String[] b = { "uuid", "user_info" };
  private static k c;

  private static User a(Cursor paramCursor)
  {
    String str = paramCursor.getString(paramCursor.getColumnIndex("user_info"));
    if (!TextUtils.isEmpty(str))
    {
      paramCursor = (User)e.a(str, User.class);
      paramCursor.r = ((x)e.a(paramCursor.o, x.class));
      if ((!TextUtils.isEmpty(paramCursor.a)) && (TextUtils.isEmpty(paramCursor.i)));
      try
      {
        paramCursor.i = new JSONObject(str).getString("accessToken");
        return paramCursor;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return paramCursor;
      }
    }
    return null;
  }

  private User a(String paramString)
  {
    Object localObject = null;
    if (TextUtils.isEmpty(paramString));
    Cursor localCursor;
    do
    {
      return null;
      localCursor = a(b, "uuid = ? ", new String[] { paramString }, null);
    }
    while (localCursor == null);
    paramString = localObject;
    try
    {
      if (localCursor.moveToFirst())
        paramString = a(localCursor);
      return paramString;
    }
    finally
    {
      localCursor.close();
    }
    throw paramString;
  }

  private static ContentValues b(User paramUser)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("uuid", paramUser.a);
    localContentValues.put("user_info", e.a().toJson(paramUser));
    return localContentValues;
  }

  public static k b()
  {
    try
    {
      if (c == null)
        c = new k();
      k localk = c;
      return localk;
    }
    finally
    {
    }
  }

  protected final Uri a()
  {
    return f.a;
  }

  public final void a(User paramUser)
  {
    if (a(paramUser.a) == null)
    {
      a(b(paramUser));
      return;
    }
    a(b(paramUser), "uuid = ? ", new String[] { paramUser.a });
  }

  public final User c()
  {
    Object localObject1 = null;
    Object localObject3 = null;
    Cursor localCursor = a(b, null, null, null);
    if (localCursor != null)
      localObject1 = localObject3;
    try
    {
      if (localCursor.moveToFirst())
        localObject1 = a(localCursor);
      return localObject1;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final void d()
  {
    a(null, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.k
 * JD-Core Version:    0.6.2
 */
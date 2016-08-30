package com.twitter.sdk.android.core;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.twitter.sdk.android.core.a.a;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.UnsupportedEncodingException;
import retrofit.RetrofitError;
import retrofit.client.Response;
import retrofit.mime.TypedByteArray;

public class TwitterApiException extends TwitterException
{
  private final RetrofitError a;
  private final x b;
  private final a c;

  private TwitterApiException(RetrofitError paramRetrofitError)
  {
  }

  public static final TwitterApiException a(RetrofitError paramRetrofitError)
  {
    return new TwitterApiException(paramRetrofitError);
  }

  private static a a(String paramString)
  {
    Object localObject = new Gson();
    try
    {
      localObject = (a[])((Gson)localObject).fromJson(new JsonParser().parse(paramString).getAsJsonObject().get("errors"), [Lcom.twitter.sdk.android.core.a.a.class);
      if (localObject.length == 0)
        return null;
      paramString = localObject[0];
      return paramString;
    }
    catch (JsonSyntaxException localJsonSyntaxException)
    {
      f.b().c("Twitter", "Invalid json: " + paramString, localJsonSyntaxException);
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        f.b().c("Twitter", "Unexpected response: " + paramString, localException);
    }
  }

  private static a b(RetrofitError paramRetrofitError)
  {
    if ((paramRetrofitError == null) || (paramRetrofitError.getResponse() == null) || (paramRetrofitError.getResponse().getBody() == null))
      return null;
    paramRetrofitError = ((TypedByteArray)paramRetrofitError.getResponse().getBody()).getBytes();
    if (paramRetrofitError == null)
      return null;
    try
    {
      paramRetrofitError = a(new String(paramRetrofitError, "UTF-8"));
      return paramRetrofitError;
    }
    catch (UnsupportedEncodingException paramRetrofitError)
    {
      f.b().c("Twitter", "Failed to convert to string", paramRetrofitError);
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.TwitterApiException
 * JD-Core Version:    0.6.2
 */
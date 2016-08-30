package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.IOException;
import java.util.List;

class AssetRequestHandler extends RequestHandler
{
  protected static final String ANDROID_ASSET = "android_asset";
  private static final int ASSET_PREFIX_LENGTH = 22;
  private final AssetManager assetManager;

  public AssetRequestHandler(Context paramContext)
  {
    this.assetManager = paramContext.getAssets();
  }

  static String getFilePath(Request paramRequest)
  {
    return paramRequest.uri.toString().substring(ASSET_PREFIX_LENGTH);
  }

  public boolean canHandleRequest(Request paramRequest)
  {
    boolean bool2 = false;
    paramRequest = paramRequest.uri;
    boolean bool1 = bool2;
    if ("file".equals(paramRequest.getScheme()))
    {
      bool1 = bool2;
      if (!paramRequest.getPathSegments().isEmpty())
      {
        bool1 = bool2;
        if ("android_asset".equals(paramRequest.getPathSegments().get(0)))
          bool1 = true;
      }
    }
    return bool1;
  }

  public RequestHandler.Result load(Request paramRequest, int paramInt)
    throws IOException
  {
    return new RequestHandler.Result(this.assetManager.open(getFilePath(paramRequest)), Picasso.LoadedFrom.DISK);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.AssetRequestHandler
 * JD-Core Version:    0.6.2
 */
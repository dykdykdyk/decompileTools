package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

class ContentStreamRequestHandler extends RequestHandler
{
  final Context context;

  ContentStreamRequestHandler(Context paramContext)
  {
    this.context = paramContext;
  }

  public boolean canHandleRequest(Request paramRequest)
  {
    return "content".equals(paramRequest.uri.getScheme());
  }

  InputStream getInputStream(Request paramRequest)
    throws FileNotFoundException
  {
    return this.context.getContentResolver().openInputStream(paramRequest.uri);
  }

  public RequestHandler.Result load(Request paramRequest, int paramInt)
    throws IOException
  {
    return new RequestHandler.Result(getInputStream(paramRequest), Picasso.LoadedFrom.DISK);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.ContentStreamRequestHandler
 * JD-Core Version:    0.6.2
 */
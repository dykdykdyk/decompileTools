package com.squareup.picasso;

import java.io.IOException;

final class BitmapHunter$2 extends RequestHandler
{
  public final boolean canHandleRequest(Request paramRequest)
  {
    return true;
  }

  public final RequestHandler.Result load(Request paramRequest, int paramInt)
    throws IOException
  {
    throw new IllegalStateException("Unrecognized type of request: " + paramRequest);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.BitmapHunter.2
 * JD-Core Version:    0.6.2
 */
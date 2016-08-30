package com.squareup.picasso;

public abstract interface Picasso$RequestTransformer
{
  public static final RequestTransformer IDENTITY = new Picasso.RequestTransformer.1();

  public abstract Request transformRequest(Request paramRequest);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Picasso.RequestTransformer
 * JD-Core Version:    0.6.2
 */
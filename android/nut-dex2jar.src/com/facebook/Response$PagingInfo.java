package com.facebook;

import com.facebook.model.GraphObject;

abstract interface Response$PagingInfo extends GraphObject
{
  public abstract String getNext();

  public abstract String getPrevious();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Response.PagingInfo
 * JD-Core Version:    0.6.2
 */
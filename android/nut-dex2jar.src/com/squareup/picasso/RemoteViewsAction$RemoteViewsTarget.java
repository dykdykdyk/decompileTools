package com.squareup.picasso;

import android.widget.RemoteViews;

class RemoteViewsAction$RemoteViewsTarget
{
  final RemoteViews remoteViews;
  final int viewId;

  RemoteViewsAction$RemoteViewsTarget(RemoteViews paramRemoteViews, int paramInt)
  {
    this.remoteViews = paramRemoteViews;
    this.viewId = paramInt;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (RemoteViewsTarget)paramObject;
    }
    while ((this.viewId == paramObject.viewId) && (this.remoteViews.equals(paramObject.remoteViews)));
    return false;
  }

  public int hashCode()
  {
    return this.remoteViews.hashCode() * 31 + this.viewId;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.RemoteViewsAction.RemoteViewsTarget
 * JD-Core Version:    0.6.2
 */
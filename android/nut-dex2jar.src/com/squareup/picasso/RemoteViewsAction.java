package com.squareup.picasso;

import android.graphics.Bitmap;
import android.widget.RemoteViews;

abstract class RemoteViewsAction extends Action<RemoteViewsAction.RemoteViewsTarget>
{
  final RemoteViews remoteViews;
  private RemoteViewsAction.RemoteViewsTarget target;
  final int viewId;

  RemoteViewsAction(Picasso paramPicasso, Request paramRequest, RemoteViews paramRemoteViews, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Object paramObject, String paramString)
  {
    super(paramPicasso, null, paramRequest, paramInt3, paramInt4, paramInt2, null, paramString, paramObject, false);
    this.remoteViews = paramRemoteViews;
    this.viewId = paramInt1;
  }

  void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    this.remoteViews.setImageViewBitmap(this.viewId, paramBitmap);
    update();
  }

  public void error()
  {
    if (this.errorResId != 0)
      setImageResource(this.errorResId);
  }

  RemoteViewsAction.RemoteViewsTarget getTarget()
  {
    if (this.target == null)
      this.target = new RemoteViewsAction.RemoteViewsTarget(this.remoteViews, this.viewId);
    return this.target;
  }

  void setImageResource(int paramInt)
  {
    this.remoteViews.setImageViewResource(this.viewId, paramInt);
    update();
  }

  abstract void update();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.RemoteViewsAction
 * JD-Core Version:    0.6.2
 */
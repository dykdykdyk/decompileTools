package com.squareup.picasso;

import android.appwidget.AppWidgetManager;
import android.widget.RemoteViews;

class RemoteViewsAction$AppWidgetAction extends RemoteViewsAction
{
  private final int[] appWidgetIds;

  RemoteViewsAction$AppWidgetAction(Picasso paramPicasso, Request paramRequest, RemoteViews paramRemoteViews, int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3, String paramString, Object paramObject, int paramInt4)
  {
    super(paramPicasso, paramRequest, paramRemoteViews, paramInt1, paramInt4, paramInt2, paramInt3, paramObject, paramString);
    this.appWidgetIds = paramArrayOfInt;
  }

  void update()
  {
    AppWidgetManager.getInstance(this.picasso.context).updateAppWidget(this.appWidgetIds, this.remoteViews);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.RemoteViewsAction.AppWidgetAction
 * JD-Core Version:    0.6.2
 */
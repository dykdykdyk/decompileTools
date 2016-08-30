package com.squareup.picasso;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

class DeferredRequestCreator
  implements ViewTreeObserver.OnPreDrawListener
{
  Callback callback;
  final RequestCreator creator;
  final WeakReference<ImageView> target;

  DeferredRequestCreator(RequestCreator paramRequestCreator, ImageView paramImageView)
  {
    this(paramRequestCreator, paramImageView, null);
  }

  DeferredRequestCreator(RequestCreator paramRequestCreator, ImageView paramImageView, Callback paramCallback)
  {
    this.creator = paramRequestCreator;
    this.target = new WeakReference(paramImageView);
    this.callback = paramCallback;
    paramImageView.getViewTreeObserver().addOnPreDrawListener(this);
  }

  void cancel()
  {
    this.callback = null;
    Object localObject = (ImageView)this.target.get();
    if (localObject == null);
    do
    {
      return;
      localObject = ((ImageView)localObject).getViewTreeObserver();
    }
    while (!((ViewTreeObserver)localObject).isAlive());
    ((ViewTreeObserver)localObject).removeOnPreDrawListener(this);
  }

  public boolean onPreDraw()
  {
    ImageView localImageView = (ImageView)this.target.get();
    if (localImageView == null);
    ViewTreeObserver localViewTreeObserver;
    int i;
    int j;
    do
    {
      do
      {
        return true;
        localViewTreeObserver = localImageView.getViewTreeObserver();
      }
      while (!localViewTreeObserver.isAlive());
      i = localImageView.getWidth();
      j = localImageView.getHeight();
    }
    while ((i <= 0) || (j <= 0));
    localViewTreeObserver.removeOnPreDrawListener(this);
    this.creator.unfit().resize(i, j).into(localImageView, this.callback);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.DeferredRequestCreator
 * JD-Core Version:    0.6.2
 */
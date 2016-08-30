package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

final class TargetAction extends Action<Target>
{
  TargetAction(Picasso paramPicasso, Target paramTarget, Request paramRequest, int paramInt1, int paramInt2, Drawable paramDrawable, String paramString, Object paramObject, int paramInt3)
  {
    super(paramPicasso, paramTarget, paramRequest, paramInt1, paramInt2, paramInt3, paramDrawable, paramString, paramObject, false);
  }

  final void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    if (paramBitmap == null)
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    Target localTarget = (Target)getTarget();
    if (localTarget != null)
    {
      localTarget.onBitmapLoaded(paramBitmap, paramLoadedFrom);
      if (paramBitmap.isRecycled())
        throw new IllegalStateException("Target callback must not recycle bitmap!");
    }
  }

  final void error()
  {
    Target localTarget = (Target)getTarget();
    if (localTarget != null)
    {
      if (this.errorResId != 0)
        localTarget.onBitmapFailed(this.picasso.context.getResources().getDrawable(this.errorResId));
    }
    else
      return;
    localTarget.onBitmapFailed(this.errorDrawable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.TargetAction
 * JD-Core Version:    0.6.2
 */
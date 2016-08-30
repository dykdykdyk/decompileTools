package com.squareup.picasso;

final class BitmapHunter$5
  implements Runnable
{
  BitmapHunter$5(Transformation paramTransformation)
  {
  }

  public final void run()
  {
    throw new IllegalStateException("Transformation " + this.val$transformation.key() + " returned input Bitmap but recycled it.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.BitmapHunter.5
 * JD-Core Version:    0.6.2
 */
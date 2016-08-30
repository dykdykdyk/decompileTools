package com.squareup.picasso;

final class BitmapHunter$6
  implements Runnable
{
  BitmapHunter$6(Transformation paramTransformation)
  {
  }

  public final void run()
  {
    throw new IllegalStateException("Transformation " + this.val$transformation.key() + " mutated input Bitmap but failed to recycle the original.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.BitmapHunter.6
 * JD-Core Version:    0.6.2
 */
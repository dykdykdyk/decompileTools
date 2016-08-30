package com.squareup.picasso;

final class BitmapHunter$3
  implements Runnable
{
  BitmapHunter$3(Transformation paramTransformation, RuntimeException paramRuntimeException)
  {
  }

  public final void run()
  {
    throw new RuntimeException("Transformation " + this.val$transformation.key() + " crashed with exception.", this.val$e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.BitmapHunter.3
 * JD-Core Version:    0.6.2
 */
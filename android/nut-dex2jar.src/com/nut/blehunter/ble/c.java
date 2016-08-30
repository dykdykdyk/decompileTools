package com.nut.blehunter.ble;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class c
  implements MediaPlayer.OnCompletionListener
{
  private boolean b;

  public c(a parama, int paramInt, boolean paramBoolean)
  {
    parama.b = paramInt;
    this.b = paramBoolean;
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    a locala = this.a;
    locala.b -= 1;
    if (this.a.b <= 0)
    {
      paramMediaPlayer.stop();
      paramMediaPlayer.release();
      if (a.c(this.a))
        this.a.a();
      this.a.e();
    }
    do
    {
      return;
      paramMediaPlayer.start();
    }
    while (!this.b);
    a.d(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.c
 * JD-Core Version:    0.6.2
 */
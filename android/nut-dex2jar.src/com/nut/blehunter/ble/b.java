package com.nut.blehunter.ble;

import android.media.AudioManager.OnAudioFocusChangeListener;

final class b
  implements AudioManager.OnAudioFocusChangeListener
{
  b(a parama)
  {
  }

  public final void onAudioFocusChange(int paramInt)
  {
    if (paramInt == -2)
      a.a(this.a);
    do
    {
      return;
      if (paramInt == 1)
      {
        a.b(this.a);
        return;
      }
    }
    while (paramInt != -1);
    this.a.e();
    this.a.b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.b
 * JD-Core Version:    0.6.2
 */
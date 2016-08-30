package com.nut.blehunter.qrcode;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.nut.blehunter.qrcode.a.f;

final class a
  implements SensorEventListener
{
  final Context a;
  f b;
  Sensor c;

  a(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    float f = paramSensorEvent.values[0];
    if (this.b != null)
    {
      if (f > 45.0F)
        break label30;
      this.b.a(true);
    }
    label30: 
    while (f < 450.0F)
      return;
    this.b.a(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a
 * JD-Core Version:    0.6.2
 */
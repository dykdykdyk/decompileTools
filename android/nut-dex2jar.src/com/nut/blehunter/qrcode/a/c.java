package com.nut.blehunter.qrcode.a;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Display;

final class c
{
  final Context a;
  Point b;
  Point c;
  Camera.CameraInfo d;
  Display e;

  c(Context paramContext)
  {
    this.a = paramContext;
  }

  final void a(Camera paramCamera, boolean paramBoolean)
  {
    int j = 0;
    Object localObject = paramCamera.getParameters();
    if (localObject == null)
    {
      Log.w("CameraConfiguration", "Device error: no camera parameters are available. Proceeding without configuration.");
      return;
    }
    Log.i("CameraConfiguration", "Initial camera parameters: " + ((Camera.Parameters)localObject).flatten());
    if (paramBoolean)
      Log.w("CameraConfiguration", "In camera config safe mode -- most settings will not be honored");
    PreferenceManager.getDefaultSharedPreferences(this.a);
    boolean bool;
    if (g.a() == g.a)
    {
      bool = true;
      d.b((Camera.Parameters)localObject, bool);
      d.a((Camera.Parameters)localObject, paramBoolean);
      ((Camera.Parameters)localObject).setPreviewSize(this.c.x, this.c.y);
      Log.i("CameraConfiguration", "Final camera parameters: " + ((Camera.Parameters)localObject).flatten());
      paramCamera.setParameters((Camera.Parameters)localObject);
      localObject = paramCamera.getParameters().getPreviewSize();
      if ((localObject != null) && ((this.c.x != ((Camera.Size)localObject).width) || (this.c.y != ((Camera.Size)localObject).height)))
      {
        Log.w("CameraConfiguration", "Camera said it supported preview size " + this.c.x + 'x' + this.c.y + ", but after setting it, preview size is " + ((Camera.Size)localObject).width + 'x' + ((Camera.Size)localObject).height);
        this.c.x = ((Camera.Size)localObject).width;
        this.c.y = ((Camera.Size)localObject).height;
      }
      i = j;
      switch (this.e.getRotation())
      {
      default:
        i = j;
      case 0:
        label327: if (this.d.facing != 1)
          break;
      case 1:
      case 2:
      case 3:
      }
    }
    for (int i = (360 - (this.d.orientation + i) % 360) % 360; ; i = (this.d.orientation - i + 360) % 360)
    {
      Log.i("CameraConfiguration", "Camera Display Orientation: " + i);
      paramCamera.setDisplayOrientation(i);
      return;
      bool = false;
      break;
      i = 90;
      break label327;
      i = 180;
      break label327;
      i = 270;
      break label327;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.c
 * JD-Core Version:    0.6.2
 */
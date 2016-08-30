package com.nut.blehunter.d;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.soundcloud.android.crop.CropImageActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

public final class j
{
  public static String a(Intent paramIntent)
  {
    return ((Uri)paramIntent.getParcelableExtra("output")).getPath();
  }

  public static void a(Activity paramActivity)
  {
    Object localObject = d.b(paramActivity);
    if (!((File)localObject).exists())
    {
      b.a.a.d("beginCropImage fail, temp file no exist", new Object[0]);
      return;
    }
    localObject = Uri.fromFile((File)localObject);
    String str1 = UUID.randomUUID().toString().replace("-", "");
    String str2 = d.a(paramActivity);
    localObject = new com.soundcloud.android.crop.a((Uri)localObject, Uri.fromFile(new File(str2 + str1 + ".png")));
    ((com.soundcloud.android.crop.a)localObject).a.putExtra("max_x", 900);
    ((com.soundcloud.android.crop.a)localObject).a.putExtra("max_y", 900);
    ((com.soundcloud.android.crop.a)localObject).a.putExtra("aspect_x", 1);
    ((com.soundcloud.android.crop.a)localObject).a.putExtra("aspect_y", 1);
    ((com.soundcloud.android.crop.a)localObject).a.setClass(paramActivity, CropImageActivity.class);
    paramActivity.startActivityForResult(((com.soundcloud.android.crop.a)localObject).a, 6709);
  }

  public static boolean a(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramIntent = paramContext.getContentResolver().openInputStream(paramIntent.getData());
      paramContext = new FileOutputStream(d.b(paramContext));
      d.a(paramIntent, paramContext);
      paramContext.close();
      paramIntent.close();
      return true;
    }
    catch (IOException paramContext)
    {
      b.a.a.a(paramContext, "when take picture from camera", new Object[0]);
      return false;
    }
    catch (Exception paramContext)
    {
      b.a.a.a(paramContext, "when take picture from camera (Exception)", new Object[0]);
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.j
 * JD-Core Version:    0.6.2
 */
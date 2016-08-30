package com.facebook;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

class NativeAppCallAttachmentStore$1
  implements NativeAppCallAttachmentStore.ProcessAttachment<Bitmap>
{
  NativeAppCallAttachmentStore$1(NativeAppCallAttachmentStore paramNativeAppCallAttachmentStore)
  {
  }

  public void processAttachment(Bitmap paramBitmap, File paramFile)
    throws IOException
  {
    paramFile = new FileOutputStream(paramFile);
    try
    {
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, paramFile);
      return;
    }
    finally
    {
      Utility.closeQuietly(paramFile);
    }
    throw paramBitmap;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.NativeAppCallAttachmentStore.1
 * JD-Core Version:    0.6.2
 */
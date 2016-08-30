package com.facebook;

import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

class NativeAppCallAttachmentStore$2
  implements NativeAppCallAttachmentStore.ProcessAttachment<File>
{
  NativeAppCallAttachmentStore$2(NativeAppCallAttachmentStore paramNativeAppCallAttachmentStore)
  {
  }

  public void processAttachment(File paramFile1, File paramFile2)
    throws IOException
  {
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile2);
    try
    {
      paramFile2 = new FileInputStream(paramFile1);
      try
      {
        paramFile1 = new byte[1024];
        while (true)
        {
          int i = paramFile2.read(paramFile1);
          if (i <= 0)
            break;
          localFileOutputStream.write(paramFile1, 0, i);
        }
      }
      finally
      {
      }
      Utility.closeQuietly(localFileOutputStream);
      Utility.closeQuietly(paramFile2);
      throw paramFile1;
      Utility.closeQuietly(localFileOutputStream);
      Utility.closeQuietly(paramFile2);
      return;
    }
    finally
    {
      while (true)
        paramFile2 = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.NativeAppCallAttachmentStore.2
 * JD-Core Version:    0.6.2
 */
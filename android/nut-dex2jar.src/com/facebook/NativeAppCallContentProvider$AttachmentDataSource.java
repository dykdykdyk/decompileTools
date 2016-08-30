package com.facebook;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;

abstract interface NativeAppCallContentProvider$AttachmentDataSource
{
  public abstract File openAttachment(UUID paramUUID, String paramString)
    throws FileNotFoundException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.NativeAppCallContentProvider.AttachmentDataSource
 * JD-Core Version:    0.6.2
 */
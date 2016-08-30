package com.facebook;

import java.io.File;
import java.io.IOException;

abstract interface NativeAppCallAttachmentStore$ProcessAttachment<T>
{
  public abstract void processAttachment(T paramT, File paramFile)
    throws IOException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.NativeAppCallAttachmentStore.ProcessAttachment
 * JD-Core Version:    0.6.2
 */
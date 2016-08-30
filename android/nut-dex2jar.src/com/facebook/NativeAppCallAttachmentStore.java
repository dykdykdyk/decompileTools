package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public final class NativeAppCallAttachmentStore
  implements NativeAppCallContentProvider.AttachmentDataSource
{
  static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
  private static final String TAG = NativeAppCallAttachmentStore.class.getName();
  private static File attachmentsDirectory;

  private <T> void addAttachments(Context paramContext, UUID paramUUID, Map<String, T> paramMap, NativeAppCallAttachmentStore.ProcessAttachment<T> paramProcessAttachment)
  {
    if (paramMap.size() == 0);
    while (true)
    {
      return;
      if (attachmentsDirectory == null)
        cleanupAllAttachments(paramContext);
      ensureAttachmentsDirectoryExists(paramContext);
      paramContext = new ArrayList();
      try
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Object localObject2 = (Map.Entry)paramMap.next();
          Object localObject1 = (String)((Map.Entry)localObject2).getKey();
          localObject2 = ((Map.Entry)localObject2).getValue();
          localObject1 = getAttachmentFile(paramUUID, (String)localObject1, true);
          paramContext.add(localObject1);
          paramProcessAttachment.processAttachment(localObject2, (File)localObject1);
        }
      }
      catch (IOException paramUUID)
      {
        Log.e(TAG, "Got unexpected exception:" + paramUUID);
        paramContext = paramContext.iterator();
        while (paramContext.hasNext())
        {
          paramMap = (File)paramContext.next();
          try
          {
            paramMap.delete();
          }
          catch (Exception paramMap)
          {
          }
        }
      }
    }
    throw new FacebookException(paramUUID);
  }

  static File getAttachmentsDirectory(Context paramContext)
  {
    try
    {
      if (attachmentsDirectory == null)
        attachmentsDirectory = new File(paramContext.getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
      paramContext = attachmentsDirectory;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void addAttachmentFilesForCall(Context paramContext, UUID paramUUID, Map<String, File> paramMap)
  {
    Validate.notNull(paramContext, "context");
    Validate.notNull(paramUUID, "callId");
    Validate.containsNoNulls(paramMap.values(), "mediaAttachmentFiles");
    Validate.containsNoNullOrEmpty(paramMap.keySet(), "mediaAttachmentFiles");
    addAttachments(paramContext, paramUUID, paramMap, new NativeAppCallAttachmentStore.2(this));
  }

  public final void addAttachmentsForCall(Context paramContext, UUID paramUUID, Map<String, Bitmap> paramMap)
  {
    Validate.notNull(paramContext, "context");
    Validate.notNull(paramUUID, "callId");
    Validate.containsNoNulls(paramMap.values(), "imageAttachments");
    Validate.containsNoNullOrEmpty(paramMap.keySet(), "imageAttachments");
    addAttachments(paramContext, paramUUID, paramMap, new NativeAppCallAttachmentStore.1(this));
  }

  final void cleanupAllAttachments(Context paramContext)
  {
    Utility.deleteDirectory(getAttachmentsDirectory(paramContext));
  }

  public final void cleanupAttachmentsForCall(Context paramContext, UUID paramUUID)
  {
    Utility.deleteDirectory(getAttachmentsDirectoryForCall(paramUUID, false));
  }

  final File ensureAttachmentsDirectoryExists(Context paramContext)
  {
    paramContext = getAttachmentsDirectory(paramContext);
    paramContext.mkdirs();
    return paramContext;
  }

  final File getAttachmentFile(UUID paramUUID, String paramString, boolean paramBoolean)
    throws IOException
  {
    paramUUID = getAttachmentsDirectoryForCall(paramUUID, paramBoolean);
    if (paramUUID == null)
      return null;
    try
    {
      paramUUID = new File(paramUUID, URLEncoder.encode(paramString, "UTF-8"));
      return paramUUID;
    }
    catch (UnsupportedEncodingException paramUUID)
    {
    }
    return null;
  }

  final File getAttachmentsDirectoryForCall(UUID paramUUID, boolean paramBoolean)
  {
    if (attachmentsDirectory == null)
      paramUUID = null;
    File localFile;
    do
    {
      do
      {
        return paramUUID;
        localFile = new File(attachmentsDirectory, paramUUID.toString());
        paramUUID = localFile;
      }
      while (!paramBoolean);
      paramUUID = localFile;
    }
    while (localFile.exists());
    localFile.mkdirs();
    return localFile;
  }

  public final File openAttachment(UUID paramUUID, String paramString)
    throws FileNotFoundException
  {
    if ((Utility.isNullOrEmpty(paramString)) || (paramUUID == null))
      throw new FileNotFoundException();
    try
    {
      paramUUID = getAttachmentFile(paramUUID, paramString, false);
      return paramUUID;
    }
    catch (IOException paramUUID)
    {
    }
    throw new FileNotFoundException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.NativeAppCallAttachmentStore
 * JD-Core Version:    0.6.2
 */
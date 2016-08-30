package no.nordicsemi.android.dfu;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.security.InvalidParameterException;

public class DfuServiceInitiator
{
  private final String deviceAddress;
  private String deviceName;
  private String filePath;
  private int fileResId;
  private int fileType = -1;
  private Uri fileUri;
  private String initFilePath;
  private int initFileResId;
  private Uri initFileUri;
  private boolean keepBond;
  private String mimeType;

  public DfuServiceInitiator(String paramString)
  {
    this.deviceAddress = paramString;
  }

  private DfuServiceInitiator init(Uri paramUri, String paramString, int paramInt)
  {
    if ("application/zip".equals(this.mimeType))
      throw new InvalidParameterException("Init file must be located inside the ZIP");
    this.initFileUri = paramUri;
    this.initFilePath = paramString;
    this.initFileResId = paramInt;
    return this;
  }

  private DfuServiceInitiator init(Uri paramUri, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    this.fileUri = paramUri;
    this.filePath = paramString1;
    this.fileResId = paramInt1;
    this.fileType = paramInt2;
    this.mimeType = paramString2;
    if ("application/zip".equals(paramString2))
    {
      this.initFileUri = null;
      this.initFilePath = null;
      this.initFileResId = 0;
    }
    return this;
  }

  @Deprecated
  public DfuServiceInitiator setBinOrHex(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
      throw new UnsupportedOperationException("You must specify the file type");
    return init(null, null, paramInt2, paramInt1, "application/octet-stream");
  }

  @Deprecated
  public DfuServiceInitiator setBinOrHex(int paramInt, Uri paramUri)
  {
    if (paramInt == 0)
      throw new UnsupportedOperationException("You must specify the file type");
    return init(paramUri, null, 0, paramInt, "application/octet-stream");
  }

  @Deprecated
  public DfuServiceInitiator setBinOrHex(int paramInt, Uri paramUri, String paramString)
  {
    if (paramInt == 0)
      throw new UnsupportedOperationException("You must specify the file type");
    return init(paramUri, paramString, 0, paramInt, "application/octet-stream");
  }

  @Deprecated
  public DfuServiceInitiator setBinOrHex(int paramInt, String paramString)
  {
    if (paramInt == 0)
      throw new UnsupportedOperationException("You must specify the file type");
    return init(null, paramString, 0, paramInt, "application/octet-stream");
  }

  public DfuServiceInitiator setDeviceName(String paramString)
  {
    this.deviceName = paramString;
    return this;
  }

  @Deprecated
  public DfuServiceInitiator setInitFile(int paramInt)
  {
    return init(null, null, paramInt);
  }

  @Deprecated
  public DfuServiceInitiator setInitFile(Uri paramUri)
  {
    return init(paramUri, null, 0);
  }

  @Deprecated
  public DfuServiceInitiator setInitFile(Uri paramUri, String paramString)
  {
    return init(paramUri, paramString, 0);
  }

  @Deprecated
  public DfuServiceInitiator setInitFile(String paramString)
  {
    return init(null, paramString, 0);
  }

  public DfuServiceInitiator setKeepBond(boolean paramBoolean)
  {
    this.keepBond = paramBoolean;
    return this;
  }

  public DfuServiceInitiator setZip(int paramInt)
  {
    return init(null, null, paramInt, 0, "application/zip");
  }

  public DfuServiceInitiator setZip(Uri paramUri)
  {
    return init(paramUri, null, 0, 0, "application/zip");
  }

  public DfuServiceInitiator setZip(Uri paramUri, String paramString)
  {
    return init(paramUri, paramString, 0, 0, "application/zip");
  }

  public DfuServiceInitiator setZip(String paramString)
  {
    return init(null, paramString, 0, 0, "application/zip");
  }

  public void start(Context paramContext, Class<? extends DfuBaseService> paramClass)
  {
    if (this.fileType == -1)
      throw new UnsupportedOperationException("You must specify the firmware file before starting the service");
    paramClass = new Intent(paramContext, paramClass);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS", this.deviceAddress);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME", this.deviceName);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE", this.mimeType);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE", this.fileType);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI", this.fileUri);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH", this.filePath);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID", this.fileResId);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI", this.initFileUri);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH", this.initFilePath);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID", this.initFileResId);
    paramClass.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND", this.keepBond);
    paramContext.startService(paramClass);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuServiceInitiator
 * JD-Core Version:    0.6.2
 */
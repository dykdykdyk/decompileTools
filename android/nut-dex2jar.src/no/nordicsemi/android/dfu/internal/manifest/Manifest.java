package no.nordicsemi.android.dfu.internal.manifest;

import com.google.gson.annotations.SerializedName;

public class Manifest
{
  protected FileInfo application;
  protected FileInfo bootloader;
  protected FileInfo softdevice;

  @SerializedName("softdevice_bootloader")
  protected SoftDeviceBootloaderFileInfo softdeviceBootloader;

  public FileInfo getApplicationInfo()
  {
    return this.application;
  }

  public FileInfo getBootloaderInfo()
  {
    return this.bootloader;
  }

  public SoftDeviceBootloaderFileInfo getSoftdeviceBootloaderInfo()
  {
    return this.softdeviceBootloader;
  }

  public FileInfo getSoftdeviceInfo()
  {
    return this.softdevice;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.manifest.Manifest
 * JD-Core Version:    0.6.2
 */
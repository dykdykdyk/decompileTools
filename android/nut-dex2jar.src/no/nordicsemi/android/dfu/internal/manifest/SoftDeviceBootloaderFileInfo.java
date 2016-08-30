package no.nordicsemi.android.dfu.internal.manifest;

import com.google.gson.annotations.SerializedName;

public class SoftDeviceBootloaderFileInfo extends FileInfo
{

  @SerializedName("bl_size")
  protected int bootloaderSize;

  @SerializedName("sd_size")
  protected int softdeviceSize;

  public int getBootloaderSize()
  {
    return this.bootloaderSize;
  }

  public int getSoftdeviceSize()
  {
    return this.softdeviceSize;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.manifest.SoftDeviceBootloaderFileInfo
 * JD-Core Version:    0.6.2
 */
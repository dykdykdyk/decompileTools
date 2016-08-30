package no.nordicsemi.android.dfu.internal.manifest;

import com.google.gson.annotations.SerializedName;

public class FileInfo
{

  @SerializedName("bin_file")
  protected String binFile;

  @SerializedName("dat_file")
  protected String datFile;

  @SerializedName("init_packet_data")
  protected InitPacketData initPacketData;

  public String getBinFileName()
  {
    return this.binFile;
  }

  public String getDatFileName()
  {
    return this.datFile;
  }

  public InitPacketData getInitPacketData()
  {
    return this.initPacketData;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.manifest.FileInfo
 * JD-Core Version:    0.6.2
 */
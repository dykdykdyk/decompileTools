package no.nordicsemi.android.dfu.internal.manifest;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class InitPacketData
{

  @SerializedName("application_version")
  protected long applicationVersion;

  @SerializedName("compression_type")
  protected int compressionType;

  @SerializedName("device_revision")
  protected int deviceRevision;

  @SerializedName("device_type")
  protected int deviceType;

  @SerializedName("firmware_crc16")
  protected int firmwareCRC16;

  @SerializedName("firmware_hash")
  protected String firmwareHash;

  @SerializedName("packet_version")
  protected int packetVersion;

  @SerializedName("softdevice_req")
  protected List<Integer> softdeviceReq;

  public long getApplicationVersion()
  {
    return this.applicationVersion;
  }

  public int getCompressionType()
  {
    return this.compressionType;
  }

  public int getDeviceRevision()
  {
    return this.deviceRevision;
  }

  public int getDeviceType()
  {
    return this.deviceType;
  }

  public int getFirmwareCRC16()
  {
    return this.firmwareCRC16;
  }

  public String getFirmwareHash()
  {
    return this.firmwareHash;
  }

  public int getPacketVersion()
  {
    return this.packetVersion;
  }

  public List<Integer> getSoftdeviceReq()
  {
    return this.softdeviceReq;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.manifest.InitPacketData
 * JD-Core Version:    0.6.2
 */
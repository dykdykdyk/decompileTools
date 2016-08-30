package no.nordicsemi.android.dfu.internal;

import com.google.gson.Gson;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import no.nordicsemi.android.dfu.internal.manifest.FileInfo;
import no.nordicsemi.android.dfu.internal.manifest.Manifest;
import no.nordicsemi.android.dfu.internal.manifest.ManifestFile;
import no.nordicsemi.android.dfu.internal.manifest.SoftDeviceBootloaderFileInfo;

public class ArchiveInputStream extends ZipInputStream
{
  private static final String APPLICATION_BIN = "application.bin";
  private static final String APPLICATION_HEX = "application.hex";
  private static final String APPLICATION_INIT = "application.dat";
  private static final String BOOTLOADER_BIN = "bootloader.bin";
  private static final String BOOTLOADER_HEX = "bootloader.hex";
  private static final String MANIFEST = "manifest.json";
  private static final String SOFTDEVICE_BIN = "softdevice.bin";
  private static final String SOFTDEVICE_HEX = "softdevice.hex";
  private static final String SYSTEM_INIT = "system.dat";
  private byte[] applicationBytes;
  private byte[] applicationInitBytes;
  private int applicationSize;
  private byte[] bootloaderBytes;
  private int bootloaderSize;
  private int bytesRead = 0;
  private int bytesReadFromCurrentSource = 0;
  private byte[] currentSource;
  private Map<String, byte[]> entries = new HashMap();
  private Manifest manifest;
  private byte[] softDeviceAndBootloaderBytes;
  private byte[] softDeviceBytes;
  private int softDeviceSize;
  private byte[] systemInitBytes;

  public ArchiveInputStream(InputStream paramInputStream, int paramInt1, int paramInt2)
    throws IOException
  {
    super(paramInputStream);
    try
    {
      parseZip(paramInt1);
      if (this.manifest == null)
        break label942;
      if ((this.manifest.getApplicationInfo() == null) || ((paramInt2 != 0) && ((paramInt2 & 0x4) <= 0)))
        break label936;
      paramInputStream = this.manifest.getApplicationInfo();
      this.applicationBytes = ((byte[])this.entries.get(paramInputStream.getBinFileName()));
      this.applicationInitBytes = ((byte[])this.entries.get(paramInputStream.getDatFileName()));
      if (this.applicationBytes == null)
        throw new IOException("Application file " + paramInputStream.getBinFileName() + " not found.");
    }
    finally
    {
      super.close();
    }
    this.applicationSize = this.applicationBytes.length;
    this.currentSource = this.applicationBytes;
    i = 1;
    paramInt1 = i;
    if (this.manifest.getBootloaderInfo() != null)
      if (paramInt2 != 0)
      {
        paramInt1 = i;
        if ((paramInt2 & 0x2) <= 0);
      }
      else
      {
        if (this.systemInitBytes != null)
          throw new IOException("Manifest: softdevice and bootloader specified. Use softdevice_bootloader instead.");
        paramInputStream = this.manifest.getBootloaderInfo();
        this.bootloaderBytes = ((byte[])this.entries.get(paramInputStream.getBinFileName()));
        this.systemInitBytes = ((byte[])this.entries.get(paramInputStream.getDatFileName()));
        if (this.bootloaderBytes == null)
          throw new IOException("Bootloader file " + paramInputStream.getBinFileName() + " not found.");
        this.bootloaderSize = this.bootloaderBytes.length;
        this.currentSource = this.bootloaderBytes;
        paramInt1 = 1;
      }
    i = paramInt1;
    if (this.manifest.getSoftdeviceInfo() != null)
      if (paramInt2 != 0)
      {
        i = paramInt1;
        if ((paramInt2 & 0x1) <= 0);
      }
      else
      {
        paramInputStream = this.manifest.getSoftdeviceInfo();
        this.softDeviceBytes = ((byte[])this.entries.get(paramInputStream.getBinFileName()));
        this.systemInitBytes = ((byte[])this.entries.get(paramInputStream.getDatFileName()));
        if (this.softDeviceBytes == null)
          throw new IOException("SoftDevice file " + paramInputStream.getBinFileName() + " not found.");
        this.softDeviceSize = this.softDeviceBytes.length;
        this.currentSource = this.softDeviceBytes;
        i = 1;
      }
    label724: if ((this.manifest.getSoftdeviceBootloaderInfo() != null) && ((paramInt2 == 0) || (((paramInt2 & 0x1) > 0) && ((paramInt2 & 0x2) > 0))))
    {
      if (this.systemInitBytes != null)
        throw new IOException("Manifest: The softdevice_bootloader may not be used together with softdevice or bootloader.");
      paramInputStream = this.manifest.getSoftdeviceBootloaderInfo();
      this.softDeviceAndBootloaderBytes = ((byte[])this.entries.get(paramInputStream.getBinFileName()));
      this.systemInitBytes = ((byte[])this.entries.get(paramInputStream.getDatFileName()));
      if (this.softDeviceAndBootloaderBytes == null)
        throw new IOException("File " + paramInputStream.getBinFileName() + " not found.");
      this.softDeviceSize = paramInputStream.getSoftdeviceSize();
      this.bootloaderSize = paramInputStream.getBootloaderSize();
      this.currentSource = this.softDeviceAndBootloaderBytes;
      paramInt1 = j;
      label617: if (paramInt1 == 0)
      {
        throw new IOException("Manifest file must specify at least one file.");
        label631: this.applicationBytes = ((byte[])this.entries.get("application.hex"));
        if (this.applicationBytes == null)
          this.applicationBytes = ((byte[])this.entries.get("application.bin"));
        paramInt1 = i;
        if (this.applicationBytes == null)
          break label958;
        this.applicationSize = this.applicationBytes.length;
        this.applicationInitBytes = ((byte[])this.entries.get("application.dat"));
        this.currentSource = this.applicationBytes;
        paramInt1 = 1;
        break label958;
        this.bootloaderBytes = ((byte[])this.entries.get("bootloader.hex"));
        if (this.bootloaderBytes == null)
          this.bootloaderBytes = ((byte[])this.entries.get("bootloader.bin"));
        i = paramInt1;
        if (this.bootloaderBytes == null)
          break label974;
        this.bootloaderSize = this.bootloaderBytes.length;
        this.systemInitBytes = ((byte[])this.entries.get("system.dat"));
        this.currentSource = this.bootloaderBytes;
        i = 1;
        break label974;
      }
    }
    while (true)
    {
      label818: this.softDeviceBytes = ((byte[])this.entries.get("softdevice.hex"));
      if (this.softDeviceBytes == null)
        this.softDeviceBytes = ((byte[])this.entries.get("softdevice.bin"));
      if (this.softDeviceBytes != null)
      {
        this.softDeviceSize = this.softDeviceBytes.length;
        this.systemInitBytes = ((byte[])this.entries.get("system.dat"));
        this.currentSource = this.softDeviceBytes;
        paramInt1 = 1;
        label905: if (paramInt1 == 0)
          throw new IOException("The ZIP file must contain an Application, a Soft Device and/or a Bootloader.");
        super.close();
        return;
      }
      label936: label942: label958: label974: 
      do
      {
        paramInt1 = i;
        break label905;
        paramInt1 = i;
        break label617;
        i = 0;
        break;
        if (paramInt2 == 0)
          break label631;
        paramInt1 = i;
        if ((paramInt2 & 0x4) > 0)
          break label631;
        if (paramInt2 == 0)
          break label724;
        i = paramInt1;
        if ((paramInt2 & 0x2) > 0)
          break label724;
        if (paramInt2 == 0)
          break label818;
      }
      while ((paramInt2 & 0x1) <= 0);
    }
  }

  private void parseZip(int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[1024];
    String str1 = null;
    while (true)
    {
      Object localObject1 = getNextEntry();
      if (localObject1 == null)
        break;
      String str2 = ((ZipEntry)localObject1).getName();
      localObject1 = new ByteArrayOutputStream();
      while (true)
      {
        int i = super.read(arrayOfByte);
        if (i == -1)
          break;
        ((ByteArrayOutputStream)localObject1).write(arrayOfByte, 0, i);
      }
      Object localObject2 = ((ByteArrayOutputStream)localObject1).toByteArray();
      localObject1 = localObject2;
      if (str2.toLowerCase(Locale.US).endsWith("hex"))
      {
        localObject2 = new HexInputStream((byte[])localObject2, paramInt);
        localObject1 = new byte[((HexInputStream)localObject2).available()];
        ((HexInputStream)localObject2).read((byte[])localObject1);
        ((HexInputStream)localObject2).close();
      }
      if ("manifest.json".equals(str2))
        str1 = new String((byte[])localObject1, "UTF-8");
      else
        this.entries.put(str2, localObject1);
    }
    if (str1 != null)
      this.manifest = ((ManifestFile)new Gson().fromJson(str1, ManifestFile.class)).getManifest();
  }

  private byte[] startNextFile()
  {
    byte[] arrayOfByte;
    if ((this.currentSource == this.softDeviceBytes) && (this.bootloaderBytes != null))
    {
      arrayOfByte = this.bootloaderBytes;
      this.currentSource = arrayOfByte;
    }
    while (true)
    {
      this.bytesReadFromCurrentSource = 0;
      return arrayOfByte;
      if ((this.currentSource != this.applicationBytes) && (this.applicationBytes != null))
      {
        arrayOfByte = this.applicationBytes;
        this.currentSource = arrayOfByte;
      }
      else
      {
        arrayOfByte = null;
        this.currentSource = null;
      }
    }
  }

  public int applicationImageSize()
  {
    return this.applicationSize;
  }

  public int available()
  {
    return this.softDeviceSize + this.bootloaderSize + this.applicationSize - this.bytesRead;
  }

  public int bootloaderImageSize()
  {
    return this.bootloaderSize;
  }

  public void close()
    throws IOException
  {
    this.softDeviceBytes = null;
    this.bootloaderBytes = null;
    this.softDeviceBytes = null;
    this.softDeviceAndBootloaderBytes = null;
    this.applicationSize = 0;
    this.bootloaderSize = 0;
    this.softDeviceSize = 0;
    this.currentSource = null;
    this.bytesReadFromCurrentSource = 0;
    this.bytesRead = 0;
    super.close();
  }

  public byte[] getApplicationInit()
  {
    return this.applicationInitBytes;
  }

  public int getContentType()
  {
    int j = 0;
    if (this.softDeviceSize > 0)
      j = 1;
    int i = j;
    if (this.bootloaderSize > 0)
      i = (byte)(j | 0x2);
    j = i;
    if (this.applicationSize > 0)
      j = (byte)(i | 0x4);
    return j;
  }

  public Manifest getManifest()
  {
    return this.manifest;
  }

  public byte[] getSystemInit()
  {
    return this.systemInitBytes;
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    int j = this.currentSource.length - this.bytesReadFromCurrentSource;
    int i = j;
    if (paramArrayOfByte.length <= j)
      i = paramArrayOfByte.length;
    System.arraycopy(this.currentSource, this.bytesReadFromCurrentSource, paramArrayOfByte, 0, i);
    this.bytesReadFromCurrentSource += i;
    j = i;
    if (paramArrayOfByte.length > i)
    {
      if (startNextFile() == null)
      {
        this.bytesRead += i;
        return i;
      }
      int k = this.currentSource.length;
      j = k;
      if (paramArrayOfByte.length - i <= k)
        j = paramArrayOfByte.length - i;
      System.arraycopy(this.currentSource, 0, paramArrayOfByte, i, j);
      this.bytesReadFromCurrentSource += j;
      j = i + j;
    }
    this.bytesRead += j;
    return j;
  }

  public int setContentType(int paramInt)
  {
    if (this.bytesRead > 0)
      throw new UnsupportedOperationException("Content type must not be change after reading content");
    paramInt = getContentType() & paramInt;
    if ((paramInt & 0x1) == 0)
    {
      this.softDeviceBytes = null;
      if (this.softDeviceAndBootloaderBytes != null)
      {
        this.softDeviceAndBootloaderBytes = null;
        this.bootloaderSize = 0;
      }
      this.softDeviceSize = 0;
    }
    if ((paramInt & 0x2) == 0)
    {
      this.bootloaderBytes = null;
      if (this.softDeviceAndBootloaderBytes != null)
      {
        this.softDeviceAndBootloaderBytes = null;
        this.softDeviceSize = 0;
      }
      this.bootloaderSize = 0;
    }
    if ((paramInt & 0x4) == 0)
    {
      this.applicationBytes = null;
      this.applicationSize = 0;
    }
    return paramInt;
  }

  public int softDeviceImageSize()
  {
    return this.softDeviceSize;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.ArchiveInputStream
 * JD-Core Version:    0.6.2
 */
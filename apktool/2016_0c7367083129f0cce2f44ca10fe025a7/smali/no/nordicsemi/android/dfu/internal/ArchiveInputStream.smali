.class public Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "ArchiveInputStream.java"


# static fields
.field private static final APPLICATION_BIN:Ljava/lang/String; = "application.bin"

.field private static final APPLICATION_HEX:Ljava/lang/String; = "application.hex"

.field private static final APPLICATION_INIT:Ljava/lang/String; = "application.dat"

.field private static final BOOTLOADER_BIN:Ljava/lang/String; = "bootloader.bin"

.field private static final BOOTLOADER_HEX:Ljava/lang/String; = "bootloader.hex"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.json"

.field private static final SOFTDEVICE_BIN:Ljava/lang/String; = "softdevice.bin"

.field private static final SOFTDEVICE_HEX:Ljava/lang/String; = "softdevice.hex"

.field private static final SYSTEM_INIT:Ljava/lang/String; = "system.dat"


# instance fields
.field private applicationBytes:[B

.field private applicationInitBytes:[B

.field private applicationSize:I

.field private bootloaderBytes:[B

.field private bootloaderSize:I

.field private bytesRead:I

.field private bytesReadFromCurrentSource:I

.field private currentSource:[B

.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

.field private softDeviceAndBootloaderBytes:[B

.field private softDeviceBytes:[B

.field private softDeviceSize:I

.field private systemInitBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    .line 107
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 108
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 115
    :try_start_0
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->parseZip(I)V

    .line 120
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getApplicationInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p3, :cond_0

    and-int/lit8 v0, p3, 0x4

    if-lez v0, :cond_18

    .line 125
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getApplicationInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    .line 126
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 127
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationInitBytes:[B

    .line 129
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    .line 132
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move v0, v2

    .line 137
    :goto_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p3, :cond_2

    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_5

    .line 138
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    if-eqz v0, :cond_3

    .line 139
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Manifest: softdevice and bootloader specified. Use softdevice_bootloader instead."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    .line 142
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 143
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 145
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v0, :cond_4

    .line 146
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bootloader file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 148
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move v0, v2

    .line 153
    :cond_5
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_6

    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_8

    .line 154
    :cond_6
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 156
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 158
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v0, :cond_7

    .line 159
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SoftDevice file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_7
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 161
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move v0, v2

    .line 166
    :cond_8
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    if-eqz p3, :cond_9

    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_17

    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_17

    .line 168
    :cond_9
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    if-eqz v0, :cond_a

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Manifest: The softdevice_bootloader may not be used together with softdevice or bootloader."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_a
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;

    move-result-object v1

    .line 172
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 173
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 175
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-nez v0, :cond_b

    .line 176
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_b
    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getSoftdeviceSize()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 178
    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getBootloaderSize()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 179
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    .line 183
    :goto_1
    if-nez v2, :cond_15

    .line 184
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Manifest file must specify at least one file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_c
    if-eqz p3, :cond_d

    and-int/lit8 v0, p3, 0x4

    if-lez v0, :cond_f

    .line 201
    :cond_d
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v3, "application.hex"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 202
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-nez v0, :cond_e

    .line 203
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v3, "application.bin"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 204
    :cond_e
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-eqz v0, :cond_f

    .line 205
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    .line 206
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "application.dat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationInitBytes:[B

    .line 207
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move v1, v2

    .line 213
    :cond_f
    if-eqz p3, :cond_10

    and-int/lit8 v0, p3, 0x2

    if-lez v0, :cond_12

    .line 214
    :cond_10
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v3, "bootloader.hex"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 215
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v0, :cond_11

    .line 216
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v3, "bootloader.bin"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 217
    :cond_11
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v0, :cond_12

    .line 218
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 219
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "system.dat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 220
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move v1, v2

    .line 226
    :cond_12
    if-eqz p3, :cond_13

    and-int/lit8 v0, p3, 0x1

    if-lez v0, :cond_16

    .line 227
    :cond_13
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v3, "softdevice.hex"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 228
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v0, :cond_14

    .line 229
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v3, "softdevice.bin"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 230
    :cond_14
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz v0, :cond_16

    .line 231
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 232
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "system.dat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 233
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move v0, v2

    .line 238
    :goto_2
    if-nez v0, :cond_15

    .line 239
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The ZIP file must contain an Application, a Soft Device and/or a Bootloader."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_15
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 244
    return-void

    :cond_16
    move v0, v1

    goto :goto_2

    :cond_17
    move v2, v0

    goto/16 :goto_1

    :cond_18
    move v0, v1

    goto/16 :goto_0
.end method

.method private parseZip(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 259
    const/4 v0, 0x0

    .line 262
    :goto_0
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 266
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    :goto_1
    invoke-super {p0, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 269
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 274
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    new-instance v4, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {v4, v1, p1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>([BI)V

    .line 276
    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 277
    invoke-virtual {v4, v1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->read([B)I

    .line 278
    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->close()V

    .line 282
    :cond_1
    const-string v4, "manifest.json"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v4, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :cond_3
    if-eqz v0, :cond_4

    .line 289
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;

    .line 290
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;->getManifest()Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    move-result-object v0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    .line 292
    :cond_4
    return-void
.end method

.method private startNextFile()[B
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    .line 403
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 404
    return-object v0

    .line 398
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    goto :goto_0
.end method


# virtual methods
.method public applicationImageSize()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    return v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bootloaderImageSize()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 297
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 298
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 299
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 300
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 301
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    .line 302
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 303
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 304
    return-void
.end method

.method public getApplicationInit()[B
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationInitBytes:[B

    return-object v0
.end method

.method public getContentType()I
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    if-lez v1, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 346
    :cond_0
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    if-lez v1, :cond_1

    .line 347
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 348
    :cond_1
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    if-lez v1, :cond_2

    .line 349
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 350
    :cond_2
    return v0
.end method

.method public getManifest()Lno/nordicsemi/android/dfu/internal/manifest/Manifest;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    return-object v0
.end method

.method public getSystemInit()[B
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    return-object v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    array-length v0, v0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    sub-int/2addr v0, v1

    .line 309
    array-length v1, p1

    if-gt v1, v0, :cond_0

    array-length v0, p1

    .line 310
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v1, v0

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 312
    array-length v1, p1

    if-le v1, v0, :cond_3

    .line 313
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->startNextFile()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 314
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 325
    :goto_0
    return v0

    .line 318
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    array-length v1, v1

    .line 319
    array-length v2, p1

    sub-int/2addr v2, v0

    if-gt v2, v1, :cond_2

    array-length v1, p1

    sub-int/2addr v1, v0

    .line 320
    :cond_2
    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    invoke-static {v2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iget v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v2, v1

    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 322
    add-int/2addr v0, v1

    .line 324
    :cond_3
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    goto :goto_0
.end method

.method public setContentType(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 361
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    if-lez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Content type must not be change after reading content"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getContentType()I

    move-result v0

    and-int/2addr v0, p1

    .line 366
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 367
    iput-object v3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 368
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_1

    .line 369
    iput-object v3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 370
    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 372
    :cond_1
    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 374
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4

    .line 375
    iput-object v3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 376
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_3

    .line 377
    iput-object v3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 378
    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 380
    :cond_3
    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 382
    :cond_4
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5

    .line 383
    iput-object v3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 384
    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    .line 386
    :cond_5
    return v0
.end method

.method public softDeviceImageSize()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    return v0
.end method

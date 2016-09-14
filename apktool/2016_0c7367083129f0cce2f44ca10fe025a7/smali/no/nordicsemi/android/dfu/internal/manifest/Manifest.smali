.class public Lno/nordicsemi/android/dfu/internal/manifest/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field protected application:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

.field protected bootloader:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

.field protected softdevice:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

.field protected softdeviceBootloader:Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softdevice_bootloader"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->application:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    return-object v0
.end method

.method public getBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->bootloader:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    return-object v0
.end method

.method public getSoftdeviceBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->softdeviceBootloader:Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;

    return-object v0
.end method

.method public getSoftdeviceInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->softdevice:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    return-object v0
.end method

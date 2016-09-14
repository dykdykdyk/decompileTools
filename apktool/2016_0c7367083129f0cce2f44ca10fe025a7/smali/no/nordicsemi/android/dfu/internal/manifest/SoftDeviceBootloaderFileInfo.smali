.class public Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;
.super Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
.source "SoftDeviceBootloaderFileInfo.java"


# instance fields
.field protected bootloaderSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bl_size"
    .end annotation
.end field

.field protected softdeviceSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sd_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootloaderSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->bootloaderSize:I

    return v0
.end method

.method public getSoftdeviceSize()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->softdeviceSize:I

    return v0
.end method

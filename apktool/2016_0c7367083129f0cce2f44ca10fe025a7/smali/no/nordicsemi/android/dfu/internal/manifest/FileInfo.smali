.class public Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field protected binFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bin_file"
    .end annotation
.end field

.field protected datFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dat_file"
    .end annotation
.end field

.field protected initPacketData:Lno/nordicsemi/android/dfu/internal/manifest/InitPacketData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "init_packet_data"
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
.method public getBinFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->binFile:Ljava/lang/String;

    return-object v0
.end method

.method public getDatFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->datFile:Ljava/lang/String;

    return-object v0
.end method

.method public getInitPacketData()Lno/nordicsemi/android/dfu/internal/manifest/InitPacketData;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->initPacketData:Lno/nordicsemi/android/dfu/internal/manifest/InitPacketData;

    return-object v0
.end method

.class public final Lcom/nut/blehunter/qrcode/a/a/a;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/nut/blehunter/qrcode/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a(I)Landroid/hardware/Camera;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    sget-object v1, Lcom/nut/blehunter/qrcode/a/a/a;->a:Ljava/lang/String;

    const-string v2, "No cameras!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-object v0

    .line 47
    :cond_0
    if-ltz p0, :cond_1

    const/4 v2, 0x1

    .line 49
    :goto_1
    if-nez v2, :cond_2

    move p0, v1

    .line 52
    :goto_2
    if-ge p0, v3, :cond_2

    .line 53
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 54
    invoke-static {p0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 55
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v4, :cond_2

    .line 58
    add-int/lit8 p0, p0, 0x1

    .line 59
    goto :goto_2

    :cond_1
    move v2, v1

    .line 47
    goto :goto_1

    .line 65
    :cond_2
    if-ge p0, v3, :cond_3

    .line 66
    sget-object v0, Lcom/nut/blehunter/qrcode/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening camera #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    if-eqz v2, :cond_4

    .line 70
    sget-object v1, Lcom/nut/blehunter/qrcode/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested camera does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_4
    sget-object v0, Lcom/nut/blehunter/qrcode/a/a/a;->a:Ljava/lang/String;

    const-string v2, "No camera facing back; returning camera #0"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 83
    if-nez v4, :cond_1

    .line 84
    sget-object v1, Lcom/nut/blehunter/qrcode/a/a/a;->a:Ljava/lang/String;

    const-string v2, "No cameras!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-ltz p0, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 92
    :goto_1
    if-nez v3, :cond_3

    move v1, v2

    .line 95
    :goto_2
    if-ge v1, v4, :cond_4

    .line 96
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 97
    invoke-static {v1, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 98
    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v5, :cond_4

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_2

    :cond_2
    move v3, v2

    .line 90
    goto :goto_1

    :cond_3
    move v1, p0

    .line 107
    :cond_4
    if-ge v1, v4, :cond_5

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_5
    if-nez v3, :cond_0

    move v0, v2

    .line 113
    goto :goto_0
.end method

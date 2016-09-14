.class final Lcom/nut/blehunter/qrcode/a/c;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/graphics/Point;

.field c:Landroid/graphics/Point;

.field d:Landroid/hardware/Camera$CameraInfo;

.field e:Landroid/view/Display;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/a/c;->a:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method final a(Landroid/hardware/Camera;Z)V
    .locals 7

    .prologue
    const/16 v6, 0x78

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 65
    if-nez v3, :cond_0

    .line 66
    const-string v0, "CameraConfiguration"

    const-string v1, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "CameraConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Initial camera parameters: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz p2, :cond_1

    .line 73
    const-string v0, "CameraConfiguration"

    const-string v4, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1161
    invoke-static {}, Lcom/nut/blehunter/qrcode/a/g;->a()Lcom/nut/blehunter/qrcode/a/g;

    move-result-object v0

    sget-object v4, Lcom/nut/blehunter/qrcode/a/g;->a:Lcom/nut/blehunter/qrcode/a/g;

    if-ne v0, v4, :cond_4

    move v0, v1

    .line 1166
    :goto_1
    invoke-static {v3, v0}, Lcom/nut/blehunter/qrcode/a/d;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 79
    invoke-static {v3, p2}, Lcom/nut/blehunter/qrcode/a/d;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 87
    const-string v0, "CameraConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Final camera parameters: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 91
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v3, v4, :cond_3

    .line 94
    :cond_2
    const-string v3, "CameraConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Camera said it supported preview size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but after setting it, preview size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 97
    iget-object v3, p0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, v3, Landroid/graphics/Point;->y:I

    .line 2104
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/c;->e:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2106
    packed-switch v0, :pswitch_data_0

    .line 2122
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/c;->d:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_5

    .line 2123
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/c;->d:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    .line 2124
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 2128
    :goto_3
    const-string v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera Display Orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1161
    goto/16 :goto_1

    .line 2111
    :pswitch_1
    const/16 v2, 0x5a

    .line 2112
    goto :goto_2

    .line 2114
    :pswitch_2
    const/16 v2, 0xb4

    .line 2115
    goto :goto_2

    .line 2117
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_2

    .line 2126
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/c;->d:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 2106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

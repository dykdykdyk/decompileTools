.class public final Lcom/nut/blehunter/qrcode/a/f;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/nut/blehunter/qrcode/a/c;

.field private d:Landroid/hardware/Camera;

.field private e:Lcom/nut/blehunter/qrcode/a/a;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private final m:Lcom/nut/blehunter/qrcode/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/qrcode/a/f;->j:I

    .line 68
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/a/f;->b:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/nut/blehunter/qrcode/a/c;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/qrcode/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 70
    new-instance v0, Lcom/nut/blehunter/qrcode/a/h;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/qrcode/a/h;-><init>(Lcom/nut/blehunter/qrcode/a/c;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->m:Lcom/nut/blehunter/qrcode/a/h;

    .line 71
    return-void
.end method

.method private static b(II)I
    .locals 2

    .prologue
    const/16 v0, 0xf0

    .line 237
    mul-int/lit8 v1, p0, 0x5

    div-int/lit8 v1, v1, 0x8

    .line 238
    if-ge v1, v0, :cond_1

    move p1, v0

    .line 244
    :cond_0
    :goto_0
    return p1

    .line 241
    :cond_1
    if-gt v1, p1, :cond_0

    move p1, v1

    .line 244
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/nut/blehunter/qrcode/a/f;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)V
    .locals 5

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/a/f;->h:Z

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 5138
    iget-object v0, v0, Lcom/nut/blehunter/qrcode/a/c;->b:Landroid/graphics/Point;

    .line 300
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    .line 301
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 303
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    .line 304
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 306
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 307
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 308
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;

    .line 309
    sget-object v0, Lcom/nut/blehunter/qrcode/a/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated manual framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->g:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/nut/blehunter/qrcode/a/f;->k:I

    .line 313
    iput p2, p0, Lcom/nut/blehunter/qrcode/a/f;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    .line 201
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nut/blehunter/qrcode/a/f;->i:Z

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->m:Lcom/nut/blehunter/qrcode/a/h;

    const v2, 0x7f0d0004

    invoke-virtual {v1, p1, v2}, Lcom/nut/blehunter/qrcode/a/h;->a(Landroid/os/Handler;I)V

    .line 203
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->m:Lcom/nut/blehunter/qrcode/a/h;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/Display;)V
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 5175
    iput-object p1, v0, Lcom/nut/blehunter/qrcode/a/c;->e:Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    .line 81
    if-nez v0, :cond_1

    .line 83
    iget v0, p0, Lcom/nut/blehunter/qrcode/a/f;->j:I

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/a/a/a;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_0
    :try_start_1
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    :cond_1
    move-object v1, v0

    .line 89
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 90
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/a/f;->h:Z

    if-nez v0, :cond_2

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/a/f;->h:Z

    .line 92
    iget-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 1051
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 1052
    iget-object v0, v2, Lcom/nut/blehunter/qrcode/a/c;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1053
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1054
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1055
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1056
    iput-object v4, v2, Lcom/nut/blehunter/qrcode/a/c;->b:Landroid/graphics/Point;

    .line 1057
    const-string v0, "CameraConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Screen resolution: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/nut/blehunter/qrcode/a/c;->b:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, v2, Lcom/nut/blehunter/qrcode/a/c;->b:Landroid/graphics/Point;

    invoke-static {v3, v0}, Lcom/nut/blehunter/qrcode/a/d;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    .line 1059
    const-string v0, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera resolution: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v0, p0, Lcom/nut/blehunter/qrcode/a/f;->k:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/nut/blehunter/qrcode/a/f;->l:I

    if-lez v0, :cond_2

    .line 94
    iget v0, p0, Lcom/nut/blehunter/qrcode/a/f;->k:I

    iget v2, p0, Lcom/nut/blehunter/qrcode/a/f;->l:I

    invoke-virtual {p0, v0, v2}, Lcom/nut/blehunter/qrcode/a/f;->a(II)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/qrcode/a/f;->k:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/qrcode/a/f;->l:I

    .line 100
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 101
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 103
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    iget v3, p0, Lcom/nut/blehunter/qrcode/a/f;->j:I

    invoke-static {v3}, Lcom/nut/blehunter/qrcode/a/a/a;->b(I)I

    move-result v3

    .line 1170
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v4, v2, Lcom/nut/blehunter/qrcode/a/c;->d:Landroid/hardware/Camera$CameraInfo;

    .line 1171
    iget-object v2, v2, Lcom/nut/blehunter/qrcode/a/c;->d:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 104
    iget-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/nut/blehunter/qrcode/a/c;->a(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 101
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    sget-object v2, Lcom/nut/blehunter/qrcode/a/f;->a:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v2, Lcom/nut/blehunter/qrcode/a/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resetting to saved camera params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :try_start_4
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 115
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/qrcode/a/c;->a(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/nut/blehunter/qrcode/a/f;->a:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    .line 2142
    if-eqz v1, :cond_1

    .line 2143
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2144
    if-eqz v1, :cond_1

    .line 2145
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 2146
    if-eqz v1, :cond_1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 177
    :cond_1
    if-eq p1, v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/a;->b()V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    .line 2155
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2166
    invoke-static {v1, p1}, Lcom/nut/blehunter/qrcode/a/d;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 2157
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 183
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_3
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->g:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    .line 148
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nut/blehunter/qrcode/a/f;->i:Z

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/a/f;->i:Z

    .line 151
    new-instance v0, Lcom/nut/blehunter/qrcode/a/a;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/qrcode/a/a;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/a;->b()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->e:Lcom/nut/blehunter/qrcode/a/a;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/a/f;->i:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 165
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->m:Lcom/nut/blehunter/qrcode/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/qrcode/a/h;->a(Landroid/os/Handler;I)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/a/f;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->d:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 219
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 3138
    iget-object v1, v1, Lcom/nut/blehunter/qrcode/a/c;->b:Landroid/graphics/Point;

    .line 220
    if-eqz v1, :cond_0

    .line 225
    iget v0, v1, Landroid/graphics/Point;->x:I

    const/16 v2, 0x4b0

    invoke-static {v0, v2}, Lcom/nut/blehunter/qrcode/a/f;->b(II)I

    move-result v0

    .line 226
    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x2a3

    invoke-static {v2, v3}, Lcom/nut/blehunter/qrcode/a/f;->b(II)I

    move-result v2

    .line 228
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 229
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 230
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v2, v1

    invoke-direct {v4, v3, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;

    .line 231
    sget-object v0, Lcom/nut/blehunter/qrcode/a/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->f:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/a/f;->e()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 256
    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 259
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 260
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 4134
    iget-object v1, v1, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    .line 261
    iget-object v3, p0, Lcom/nut/blehunter/qrcode/a/f;->c:Lcom/nut/blehunter/qrcode/a/c;

    .line 4138
    iget-object v3, v3, Lcom/nut/blehunter/qrcode/a/c;->b:Landroid/graphics/Point;

    .line 262
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 270
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 271
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 272
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 273
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 274
    iput-object v2, p0, Lcom/nut/blehunter/qrcode/a/f;->g:Landroid/graphics/Rect;

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/f;->g:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

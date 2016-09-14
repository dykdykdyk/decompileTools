.class public final Lcom/nut/blehunter/qrcode/CaptureActivity;
.super Lcom/nut/blehunter/ui/b;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/nut/blehunter/qrcode/a/f;

.field b:Lcom/nut/blehunter/qrcode/d;

.field c:Lcom/nut/blehunter/qrcode/k;

.field d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

.field private f:Z

.field private g:I

.field private h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/d;",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/nut/blehunter/qrcode/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/CaptureActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 6

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    sget-object v0, Lcom/nut/blehunter/qrcode/CaptureActivity;->e:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/qrcode/a/f;->a(Landroid/view/SurfaceHolder;)V

    .line 524
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    if-nez v0, :cond_1

    .line 525
    new-instance v0, Lcom/nut/blehunter/qrcode/d;

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->h:Ljava/util/Collection;

    iget-object v3, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/qrcode/d;-><init>(Lcom/nut/blehunter/qrcode/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/nut/blehunter/qrcode/a/f;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    sget-object v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 530
    :catch_1
    move-exception v0

    .line 533
    sget-object v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->e:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/qrcode/CaptureActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/nut/blehunter/qrcode/CaptureActivity;->a(Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/nut/blehunter/rxApi/model/ApiError;)Z
    .locals 4

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->c()V

    .line 463
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->d()V

    .line 464
    const-string v0, "NTGroupControlEvent"

    const-string v1, "ACCEPT_VIA_QRCODE"

    const-string v2, "SUCCEEDED"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final c()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    const v1, 0x7f0d000d

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/qrcode/d;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

    .line 3110
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->b:Z

    .line 3111
    const/4 v1, 0x0

    iput v1, v0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 3112
    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/ScanOverlayView;->invalidate()V

    .line 549
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->e()V

    .line 137
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 138
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 139
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->setContentView(I)V

    .line 140
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 141
    const v0, 0x7f0601d7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->a(I)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->f:Z

    .line 144
    new-instance v0, Lcom/nut/blehunter/qrcode/k;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/qrcode/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->c:Lcom/nut/blehunter/qrcode/k;

    .line 145
    new-instance v0, Lcom/nut/blehunter/qrcode/a;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/qrcode/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->k:Lcom/nut/blehunter/qrcode/a;

    .line 147
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->c:Lcom/nut/blehunter/qrcode/k;

    .line 3084
    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/k;->d()V

    .line 301
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 302
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 306
    sparse-switch p1, :sswitch_data_0

    .line 329
    invoke-super {p0, p1, p2}, Lcom/nut/blehunter/ui/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 309
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/qrcode/CaptureActivity;->setResult(I)V

    .line 310
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->finish()V

    goto :goto_0

    .line 323
    :sswitch_2
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/qrcode/a/f;->a(Z)V

    goto :goto_0

    .line 326
    :sswitch_3
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/qrcode/a/f;->a(Z)V

    goto :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    .line 2143
    sget v1, Lcom/nut/blehunter/qrcode/e;->c:I

    iput v1, v0, Lcom/nut/blehunter/qrcode/d;->b:I

    .line 2144
    iget-object v1, v0, Lcom/nut/blehunter/qrcode/d;->c:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/a/f;->d()V

    .line 2145
    iget-object v1, v0, Lcom/nut/blehunter/qrcode/d;->a:Lcom/nut/blehunter/qrcode/j;

    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/j;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0d000c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2146
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2149
    :try_start_0
    iget-object v1, v0, Lcom/nut/blehunter/qrcode/d;->a:Lcom/nut/blehunter/qrcode/j;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/qrcode/j;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    :goto_0
    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/d;->removeMessages(I)V

    .line 2156
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/d;->removeMessages(I)V

    .line 279
    iput-object v4, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->c:Lcom/nut/blehunter/qrcode/k;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/k;->b()V

    .line 282
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->k:Lcom/nut/blehunter/qrcode/a;

    .line 3063
    iget-object v0, v1, Lcom/nut/blehunter/qrcode/a;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 3064
    iget-object v0, v1, Lcom/nut/blehunter/qrcode/a;->a:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 3065
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3066
    iput-object v4, v1, Lcom/nut/blehunter/qrcode/a;->b:Lcom/nut/blehunter/qrcode/a/f;

    .line 3067
    iput-object v4, v1, Lcom/nut/blehunter/qrcode/a;->c:Landroid/hardware/Sensor;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/f;->b()V

    .line 284
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->f:Z

    if-nez v0, :cond_2

    .line 285
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 286
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 287
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 289
    :cond_2
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 290
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 157
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 158
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 164
    new-instance v0, Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nut/blehunter/qrcode/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    .line 165
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/a/f;->a(Landroid/view/Display;)V

    .line 167
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/qrcode/ScanOverlayView;

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

    .line 168
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/qrcode/ScanOverlayView;->setCameraManager(Lcom/nut/blehunter/qrcode/a/f;)V

    .line 170
    iput-object v4, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    .line 177
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 179
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_5

    .line 180
    :cond_0
    const/4 v0, 0x1

    .line 184
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->setRequestedOrientation(I)V

    .line 1544
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/qrcode/ScanOverlayView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->k:Lcom/nut/blehunter/qrcode/a;

    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    .line 2051
    iput-object v0, v1, Lcom/nut/blehunter/qrcode/a;->b:Lcom/nut/blehunter/qrcode/a/f;

    .line 2052
    iget-object v0, v1, Lcom/nut/blehunter/qrcode/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2053
    invoke-static {}, Lcom/nut/blehunter/qrcode/a/g;->a()Lcom/nut/blehunter/qrcode/a/g;

    move-result-object v0

    sget-object v2, Lcom/nut/blehunter/qrcode/a/g;->b:Lcom/nut/blehunter/qrcode/a/g;

    if-ne v0, v2, :cond_1

    .line 2054
    iget-object v0, v1, Lcom/nut/blehunter/qrcode/a;->a:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 2055
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v1, Lcom/nut/blehunter/qrcode/a;->c:Landroid/hardware/Sensor;

    .line 2056
    iget-object v2, v1, Lcom/nut/blehunter/qrcode/a;->c:Landroid/hardware/Sensor;

    if-eqz v2, :cond_1

    .line 2057
    iget-object v2, v1, Lcom/nut/blehunter/qrcode/a;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->c:Lcom/nut/blehunter/qrcode/k;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/k;->c()V

    .line 193
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    sget v1, Lcom/nut/blehunter/qrcode/n;->d:I

    iput v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->g:I

    .line 196
    iput-object v4, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->h:Ljava/util/Collection;

    .line 197
    iput-object v4, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->j:Ljava/lang/String;

    .line 199
    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 204
    const-string v2, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    sget v1, Lcom/nut/blehunter/qrcode/n;->a:I

    iput v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->g:I

    .line 208
    invoke-static {v0}, Lcom/nut/blehunter/qrcode/g;->a(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->h:Ljava/util/Collection;

    .line 209
    invoke-static {v0}, Lcom/nut/blehunter/qrcode/i;->a(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->i:Ljava/util/Map;

    .line 211
    const-string v1, "SCAN_WIDTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SCAN_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    const-string v1, "SCAN_WIDTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 213
    const-string v2, "SCAN_HEIGHT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 214
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 215
    iget-object v3, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v3, v1, v2}, Lcom/nut/blehunter/qrcode/a/f;->a(II)V

    .line 219
    :cond_2
    const-string v1, "SCAN_CAMERA_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    const-string v1, "SCAN_CAMERA_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 221
    if-ltz v1, :cond_3

    .line 222
    iget-object v2, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/qrcode/a/f;->a(I)V

    .line 247
    :cond_3
    const-string v1, "CHARACTER_SET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->j:Ljava/lang/String;

    .line 251
    :cond_4
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 252
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 253
    iget-boolean v1, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->f:Z

    if-eqz v1, :cond_6

    .line 256
    invoke-direct {p0, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 261
    :goto_1
    return-void

    .line 182
    :cond_5
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 259
    :cond_6
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_1
.end method

.method protected final onStart()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 152
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->f()V

    .line 153
    return-void
.end method

.method protected final onStop()V
    .locals 0

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->g()V

    .line 295
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 296
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    sget-object v0, Lcom/nut/blehunter/qrcode/CaptureActivity;->e:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->f:Z

    if-nez v0, :cond_1

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->f:Z

    .line 339
    invoke-direct {p0, p1}, Lcom/nut/blehunter/qrcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 341
    :cond_1
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/CaptureActivity;->f:Z

    .line 346
    return-void
.end method

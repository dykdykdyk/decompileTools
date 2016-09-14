.class public Lcom/nut/blehunter/ui/ScanDeviceActivity;
.super Lcom/nut/blehunter/ui/b;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/CountDownTimer;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Landroid/graphics/drawable/AnimationDrawable;

.field private d:J

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Lcom/nut/blehunter/ui/fy;

.field private j:I

.field private k:Lcom/nut/blehunter/entity/x;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Lcom/nut/blehunter/n;

.field private p:Landroid/view/Menu;

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d:J

    .line 90
    iput v2, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e:I

    .line 94
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->g:Z

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    .line 116
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->r:Z

    .line 783
    new-instance v0, Lcom/nut/blehunter/ui/fo;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/fo;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    .line 882
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ScanDeviceActivity;J)J
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d:J

    return-wide p1
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 814
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 815
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 817
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 819
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 820
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 821
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 822
    invoke-virtual {v3, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 823
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 824
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 825
    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 826
    return-object v0
.end method

.method private a(Lcom/nut/blehunter/entity/x;)V
    .locals 3

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->k:Lcom/nut/blehunter/entity/x;

    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    const-string v1, "device"

    iget-object v2, p1, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 405
    const-string v1, "device_name"

    iget v2, p1, Lcom/nut/blehunter/entity/x;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 2

    .prologue
    .line 66
    .line 14664
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p()V

    .line 14665
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    .line 14666
    const-string v0, "NTBindEvent"

    const-string v1, "CONNECTION_TIMEOUT"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ScanDeviceActivity;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Lcom/nut/blehunter/entity/x;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/entity/x;)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 66
    .line 16777
    const v0, 0x7f0d01bd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f06010a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16779
    const v0, 0x7f0d01c0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 16780
    const v1, 0x7f0201e7

    const/16 v2, 0x96

    invoke-static {v0, p2, v1, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/BindDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 387
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    const-string v1, "close_manually_scan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    if-eqz p1, :cond_0

    .line 348
    const-string v1, "shutdown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    :cond_0
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(ILandroid/os/Bundle;)V

    .line 351
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 1

    .prologue
    .line 66
    .line 14671
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q()V

    .line 14672
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    .line 66
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ScanDeviceActivity;Lcom/nut/blehunter/entity/x;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 66
    .line 16848
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16849
    const v0, 0x7f0601e3

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 16850
    :goto_0
    return-void

    .line 16852
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v1

    .line 16853
    if-nez v1, :cond_1

    .line 16855
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    const-wide/16 v2, 0x0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 16857
    :cond_1
    iget-object v0, p1, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16858
    iget v2, p1, Lcom/nut/blehunter/entity/x;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 16859
    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->d:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 16863
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 16864
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v4

    new-instance v5, Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;

    invoke-direct {v5, v3, v1, v2, v0}, Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/nut/blehunter/rxApi/service/NutService;->authNut(Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/fp;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/fp;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;Lcom/nut/blehunter/entity/x;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_0
    if-eqz p1, :cond_1

    .line 548
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e:I

    return v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    .line 14090
    const-string v0, ""

    .line 14091
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 14092
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v2, v2, Lcom/nut/blehunter/entity/e;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14094
    iget-object v0, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->a:Ljava/lang/String;

    .line 832
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    .line 14101
    const-string v0, ""

    .line 14102
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 14103
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    if-eqz v2, :cond_1

    .line 14104
    iget-object v0, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->c:Ljava/lang/String;

    .line 835
    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    const-string v1, "scan_period"

    const v2, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v1, "bind_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(ILandroid/os/Bundle;)V

    .line 396
    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b(Z)V

    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 839
    const-string v0, ""

    .line 840
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    if-eqz v2, :cond_0

    .line 842
    iget-object v0, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->e:Ljava/lang/String;

    .line 844
    :cond_0
    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->g:Z

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p()V

    .line 451
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 2

    .prologue
    .line 66
    .line 14698
    const v0, 0x7f04000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 14699
    const v1, 0x7f0d013e

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14700
    new-instance v1, Lcom/nut/blehunter/ui/fw;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fw;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14742
    const v0, 0x7f0d013d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 14743
    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14744
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    .line 14745
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 66
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V
    .locals 2

    .prologue
    .line 66
    .line 15558
    const v0, 0x7f0d01be

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 15559
    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15560
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 15562
    if-eqz p1, :cond_0

    .line 15563
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    return-void

    .line 15565
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private e(I)V
    .locals 13

    .prologue
    const v11, 0x7f0601da

    const v10, 0x7f02023e

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 570
    iput p1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    .line 571
    const v0, 0x7f040013

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 572
    const v0, 0x7f0d0133

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 573
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 574
    const v0, 0x7f0d013a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 575
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 576
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 613
    :goto_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 13338
    :goto_1
    iget-object v10, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p:Landroid/view/Menu;

    if-eqz v10, :cond_0

    .line 13339
    iget-object v10, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p:Landroid/view/Menu;

    const v11, 0x7f0d024d

    invoke-interface {v10, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 13340
    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    :cond_0
    if-ne p1, v1, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 615
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 616
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 617
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 618
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    :goto_6
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 619
    new-instance v0, Lcom/nut/blehunter/ui/fu;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/fu;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;I)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 657
    return-void

    .line 579
    :pswitch_0
    invoke-virtual {p0, v11}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(I)V

    .line 580
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v10, 0x7f0201e0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 581
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 585
    :pswitch_1
    invoke-virtual {p0, v11}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(I)V

    .line 586
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 587
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 588
    invoke-virtual {v6, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 591
    :pswitch_2
    invoke-virtual {p0, v11}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(I)V

    .line 592
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 593
    const v0, 0x7f0d013b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 594
    const v10, 0x7f06007e

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 595
    const v0, 0x7f0d013c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 596
    const v10, 0x7f06007d

    new-array v11, v1, [Ljava/lang/Object;

    const/16 v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {p0, v10, v11}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 598
    invoke-virtual {v7, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 601
    :pswitch_3
    const v0, 0x7f0601e1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(I)V

    .line 602
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v10, 0x7f0201e0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 603
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 604
    invoke-virtual {v8, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 607
    :pswitch_4
    const v0, 0x7f0601db

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(I)V

    .line 608
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 609
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    invoke-virtual {v9, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 613
    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 614
    goto/16 :goto_2

    :cond_3
    move v0, v3

    .line 615
    goto/16 :goto_3

    :cond_4
    move v0, v3

    .line 616
    goto/16 :goto_4

    :cond_5
    move v0, v3

    .line 617
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 618
    goto/16 :goto_6

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->s()V

    return-void
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d()V

    return-void
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 4

    .prologue
    .line 66
    .line 16461
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q()V

    .line 16462
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->m:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void
.end method

.method static synthetic j(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 2

    .prologue
    .line 66
    .line 16720
    const v0, 0x7f04000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 16721
    const v1, 0x7f0d013e

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16722
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 16723
    new-instance v1, Lcom/nut/blehunter/ui/fx;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fx;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    return-void
.end method

.method static synthetic k(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    return v0
.end method

.method static synthetic n(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x6

    iput v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    return v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b(Z)V

    .line 534
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->s()V

    .line 538
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 752
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, -0x41

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    const-string v3, "device_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 128
    :sswitch_0
    const-string v1, "scan_timeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i:Lcom/nut/blehunter/ui/fy;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/fy;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c()V

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "NTUIEventPair"

    const-string v1, "SCAN_TIMEOUT"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "bind_search_timeout"

    .line 6281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :sswitch_1
    const-string v3, "rssi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 141
    const-string v4, "device_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 142
    const-string v5, "device"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 143
    if-eqz v0, :cond_0

    .line 146
    iget-object v5, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i:Lcom/nut/blehunter/ui/fy;

    invoke-virtual {v5}, Lcom/nut/blehunter/ui/fy;->b()I

    move-result v5

    if-nez v5, :cond_3

    if-lt v3, v7, :cond_3

    .line 6676
    const v5, 0x7f040012

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 6677
    const v6, 0x7f0d0137

    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6678
    const v6, 0x7f0d0137

    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6679
    new-instance v6, Lcom/nut/blehunter/ui/fv;

    invoke-direct {v6, p0}, Lcom/nut/blehunter/ui/fv;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 149
    :cond_3
    iget-object v5, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i:Lcom/nut/blehunter/ui/fy;

    new-instance v6, Lcom/nut/blehunter/entity/x;

    invoke-direct {v6, v0, v4, v3}, Lcom/nut/blehunter/entity/x;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 7956
    iget-object v0, v5, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/x;

    .line 7957
    invoke-virtual {v6, v0}, Lcom/nut/blehunter/entity/x;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7958
    iget-object v3, v5, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    .line 6998
    :goto_1
    if-ltz v3, :cond_a

    .line 7968
    iget-object v0, v5, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/x;

    .line 7969
    invoke-virtual {v0, v6}, Lcom/nut/blehunter/entity/x;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7970
    iget-wide v8, v0, Lcom/nut/blehunter/entity/x;->d:J

    .line 7971
    iget v4, v6, Lcom/nut/blehunter/entity/x;->b:I

    iput v4, v0, Lcom/nut/blehunter/entity/x;->b:I

    .line 7972
    iget v4, v6, Lcom/nut/blehunter/entity/x;->c:I

    iput v4, v0, Lcom/nut/blehunter/entity/x;->c:I

    .line 7973
    iget-wide v6, v6, Lcom/nut/blehunter/entity/x;->d:J

    iput-wide v6, v0, Lcom/nut/blehunter/entity/x;->d:J

    .line 7974
    iget-wide v6, v0, Lcom/nut/blehunter/entity/x;->d:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    move v1, v2

    .line 7000
    :cond_6
    if-eqz v1, :cond_7

    .line 7001
    invoke-virtual {v5, v3}, Lcom/nut/blehunter/ui/fy;->c(I)V

    .line 7013
    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/nut/blehunter/ui/fy;->c()V

    .line 150
    :cond_8
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->g:Z

    .line 151
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p()V

    goto/16 :goto_0

    .line 7961
    :cond_9
    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    .line 7003
    :cond_a
    iget v0, v6, Lcom/nut/blehunter/entity/x;->b:I

    if-lt v0, v7, :cond_8

    .line 7004
    iget-object v0, v5, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7005
    iget-object v0, v5, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 8211
    iget-object v1, v5, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/dy;->b(I)V

    .line 7006
    const-string v0, "NTBindEvent"

    const-string v1, "DEVICE_SCANNED"

    const-string v3, "PID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v6, Lcom/nut/blehunter/entity/x;->c:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7008
    const-string v0, "NTBindEvent"

    const-string v1, "DEVICE_SCANNED"

    const-string v3, "DEVICE_ID"

    iget-object v4, v6, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :sswitch_2
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p()V

    goto/16 :goto_0

    .line 159
    :sswitch_3
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    if-ne v0, v8, :cond_b

    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->k:Lcom/nut/blehunter/entity/x;

    if-eqz v0, :cond_b

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->k:Lcom/nut/blehunter/entity/x;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/entity/x;)V

    goto/16 :goto_0

    .line 161
    :cond_b
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_c

    .line 162
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 163
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto/16 :goto_0

    .line 164
    :cond_c
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    if-ne v0, v9, :cond_0

    .line 165
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9039
    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 166
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto/16 :goto_0

    .line 171
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    const-string v4, "oauth_result"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 175
    const-string v5, "new_oauth"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 176
    const-string v6, "device_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q:I

    .line 177
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q:I

    .line 9215
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 9216
    if-eqz v0, :cond_10

    .line 9217
    iget v0, v0, Lcom/nut/blehunter/entity/t;->e:I

    .line 178
    :goto_3
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q()V

    .line 179
    if-eqz v4, :cond_e

    .line 180
    iget v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    if-ne v1, v8, :cond_0

    .line 181
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 183
    :pswitch_0
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q:I

    invoke-direct {p0, v3, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 187
    :pswitch_1
    if-eqz v5, :cond_d

    .line 188
    invoke-direct {p0, v9}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto/16 :goto_0

    .line 190
    :cond_d
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q:I

    invoke-direct {p0, v3, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 196
    :cond_e
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    if-eq v0, v2, :cond_f

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->k:Lcom/nut/blehunter/entity/x;

    .line 198
    const v0, 0x7f060062

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    .line 199
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    .line 201
    :cond_f
    const-string v0, "NTBindEvent"

    const-string v1, "CONNECTION_FAILED"

    const-string v2, "TYPE"

    const-string v3, "2"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "bind_connect_password_error"

    .line 9281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :sswitch_5
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q:I

    invoke-direct {p0, v3, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    goto :goto_3

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_4
        0x10 -> :sswitch_1
        0x13 -> :sswitch_3
        0x1a -> :sswitch_5
    .end sparse-switch

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final e_()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c()V

    .line 380
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 358
    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 359
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->setResult(I)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->finish()V

    goto :goto_0

    .line 365
    :pswitch_1
    if-nez p2, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->r()V

    .line 367
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->n()V

    .line 368
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->finish()V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 268
    iget v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 271
    :pswitch_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->r()V

    .line 12131
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b;->a(ILandroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->n()V

    .line 274
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->q()V

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Z)V

    .line 279
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto :goto_0

    .line 282
    :pswitch_2
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/ui/b/a/aa;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    .line 283
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Z)V

    .line 284
    const/4 v0, 0x6

    iput v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j:I

    goto :goto_0

    .line 287
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto :goto_0

    .line 290
    :pswitch_4
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 291
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 300
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "URL"

    sget-object v2, Lcom/nut/blehunter/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    const-string v0, "bind_search_no_tracker_help"

    .line 12281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto :goto_0

    .line 309
    :sswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->k:Lcom/nut/blehunter/entity/x;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/entity/x;)V

    .line 310
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(I)V

    goto :goto_0

    .line 12755
    :sswitch_3
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 12756
    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 12757
    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 12758
    const v1, 0x7f060063

    new-instance v2, Lcom/nut/blehunter/ui/fn;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/fn;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 12771
    const v1, 0x7f060083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 12772
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 13060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0136 -> :sswitch_0
        0x7f0d013f -> :sswitch_3
        0x7f0d01c2 -> :sswitch_2
        0x7f0d01c3 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 224
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e()V

    .line 226
    new-instance v0, Lcom/nut/blehunter/n;

    const-class v1, Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->o:Lcom/nut/blehunter/n;

    .line 228
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->setContentView(I)V

    .line 229
    const v0, 0x7f0601da

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(I)V

    .line 9418
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    .line 9419
    new-instance v0, Lcom/nut/blehunter/ui/fm;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/fm;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->l:Ljava/lang/Runnable;

    .line 9427
    new-instance v0, Lcom/nut/blehunter/ui/fq;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/fq;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->m:Ljava/lang/Runnable;

    .line 9438
    new-instance v0, Lcom/nut/blehunter/ui/fr;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/fr;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->n:Ljava/lang/Runnable;

    .line 9494
    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9495
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    .line 9496
    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9497
    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 9498
    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/nut/blehunter/ui/fs;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/fs;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9512
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/nut/blehunter/ui/ft;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ft;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9475
    const v0, 0x7f0d0138

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h:Landroid/support/v7/widget/RecyclerView;

    .line 9476
    new-instance v0, Lcom/nut/blehunter/ui/fy;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/fy;-><init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i:Lcom/nut/blehunter/ui/fy;

    .line 9477
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i:Lcom/nut/blehunter/ui/fy;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/fy;->a()V

    .line 9478
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9479
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 9480
    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 9481
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/eb;)V

    .line 9482
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i:Lcom/nut/blehunter/ui/fy;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 9484
    const v0, 0x7f0d0136

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9485
    const v0, 0x7f0d01c3

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9486
    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9487
    const v0, 0x7f0d013f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10413
    invoke-direct {p0, v4}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b(Z)V

    .line 10414
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d()V

    .line 233
    const-string v0, "NTBindEvent"

    const-string v1, "ENTRY_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "bind_button_tapped_and_scan_view_appearred"

    .line 11281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    return-void

    .line 9495
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->p:Landroid/view/Menu;

    .line 321
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 255
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 328
    const v1, 0x7f0d024d

    if-ne v0, v1, :cond_0

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const-string v1, "URL"

    sget-object v2, Lcom/nut/blehunter/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    const-string v0, "bind_search_help"

    .line 13281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    :cond_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 240
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->j()Z

    .line 241
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f()V

    .line 242
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->o:Lcom/nut/blehunter/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/n;->a()V

    .line 243
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->g()V

    .line 248
    iget-object v0, p0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->o:Lcom/nut/blehunter/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/n;->b()V

    .line 249
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 250
    return-void
.end method

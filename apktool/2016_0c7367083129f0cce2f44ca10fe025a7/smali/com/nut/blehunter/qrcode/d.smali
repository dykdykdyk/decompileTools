.class public final Lcom/nut/blehunter/qrcode/d;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field final a:Lcom/nut/blehunter/qrcode/j;

.field b:I

.field final c:Lcom/nut/blehunter/qrcode/a/f;

.field private final e:Lcom/nut/blehunter/qrcode/CaptureActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/nut/blehunter/qrcode/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/d;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/nut/blehunter/qrcode/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/nut/blehunter/qrcode/a/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/qrcode/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/d;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/qrcode/a/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    .line 69
    new-instance v0, Lcom/nut/blehunter/qrcode/j;

    new-instance v5, Lcom/nut/blehunter/qrcode/o;

    .line 1122
    iget-object v1, p1, Lcom/nut/blehunter/qrcode/CaptureActivity;->d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

    .line 69
    invoke-direct {v5, v1}, Lcom/nut/blehunter/qrcode/o;-><init>(Lcom/nut/blehunter/qrcode/ScanOverlayView;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/qrcode/j;-><init>(Lcom/nut/blehunter/qrcode/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/p;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/d;->a:Lcom/nut/blehunter/qrcode/j;

    .line 71
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/d;->a:Lcom/nut/blehunter/qrcode/j;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/j;->start()V

    .line 72
    sget v0, Lcom/nut/blehunter/qrcode/e;->b:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/d;->b:I

    .line 75
    iput-object p5, p0, Lcom/nut/blehunter/qrcode/d;->c:Lcom/nut/blehunter/qrcode/a/f;

    .line 76
    invoke-virtual {p5}, Lcom/nut/blehunter/qrcode/a/f;->c()V

    .line 77
    invoke-direct {p0}, Lcom/nut/blehunter/qrcode/d;->a()V

    .line 78
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/nut/blehunter/qrcode/d;->b:I

    sget v1, Lcom/nut/blehunter/qrcode/e;->b:I

    if-ne v0, v1, :cond_0

    .line 161
    sget v0, Lcom/nut/blehunter/qrcode/e;->a:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/d;->b:I

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/d;->c:Lcom/nut/blehunter/qrcode/a/f;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/d;->a:Lcom/nut/blehunter/qrcode/j;

    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/j;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/a/f;->a(Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->d()V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1380
    :goto_0
    :pswitch_0
    return-void

    .line 84
    :pswitch_1
    invoke-direct {p0}, Lcom/nut/blehunter/qrcode/d;->a()V

    goto :goto_0

    .line 87
    :pswitch_2
    sget v0, Lcom/nut/blehunter/qrcode/e;->b:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/d;->b:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    const-string v2, "barcode_bitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    array-length v3, v2

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 98
    :cond_0
    const-string v1, "barcode_scaled_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/m;

    .line 1361
    iget-object v2, v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->c:Lcom/nut/blehunter/qrcode/k;

    invoke-virtual {v2}, Lcom/nut/blehunter/qrcode/k;->a()V

    .line 1379
    invoke-virtual {v0}, Lcom/google/zxing/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1380
    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/CaptureActivity;->c()V

    goto :goto_0

    .line 1382
    :cond_2
    iget-object v2, v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->d:Lcom/nut/blehunter/qrcode/ScanOverlayView;

    .line 2116
    iput-boolean v4, v2, Lcom/nut/blehunter/qrcode/ScanOverlayView;->b:Z

    .line 2117
    iput v4, v2, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 2118
    invoke-virtual {v2}, Lcom/nut/blehunter/qrcode/ScanOverlayView;->invalidate()V

    .line 1383
    iget-object v2, v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/qrcode/d;->sendEmptyMessage(I)Z

    .line 1384
    invoke-virtual {v0}, Lcom/google/zxing/m;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    const v2, 0x7f06014c

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/nut/blehunter/ui/b/a/aa;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    .line 2390
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v2

    const-string v3, "shareUrl"

    invoke-static {v3, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nut/blehunter/rxApi/service/AccountService;->acceptSharedNut(Ljava/util/HashMap;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/qrcode/c;

    invoke-direct {v2, v1}, Lcom/nut/blehunter/qrcode/c;-><init>(Lcom/nut/blehunter/qrcode/CaptureActivity;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/qrcode/b;

    invoke-direct {v2, v1}, Lcom/nut/blehunter/qrcode/b;-><init>(Lcom/nut/blehunter/qrcode/CaptureActivity;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/k;)Lrx/u;

    goto/16 :goto_0

    .line 104
    :pswitch_3
    sget v0, Lcom/nut/blehunter/qrcode/e;->a:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/d;->b:I

    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/d;->c:Lcom/nut/blehunter/qrcode/a/f;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/d;->a:Lcom/nut/blehunter/qrcode/j;

    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/j;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/a/f;->a(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 108
    :pswitch_4
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->finish()V

    goto/16 :goto_0

    .line 112
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    iget-object v3, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v3}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_3

    .line 122
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 123
    sget-object v3, Lcom/nut/blehunter/qrcode/d;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using browser in package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    const-string v3, "com.android.browser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.chrome"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    :cond_4
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/d;->e:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/qrcode/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v1

    sget-object v1, Lcom/nut/blehunter/qrcode/d;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find anything to handle VIEW of URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0005
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

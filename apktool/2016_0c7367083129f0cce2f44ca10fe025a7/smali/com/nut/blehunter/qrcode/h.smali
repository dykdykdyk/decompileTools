.class final Lcom/nut/blehunter/qrcode/h;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/nut/blehunter/qrcode/CaptureActivity;

.field private final c:Lcom/google/zxing/h;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/nut/blehunter/qrcode/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/h;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/nut/blehunter/qrcode/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/qrcode/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/d;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/h;->d:Z

    .line 48
    new-instance v0, Lcom/google/zxing/h;

    invoke-direct {v0}, Lcom/google/zxing/h;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/h;->c:Lcom/google/zxing/h;

    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/h;->c:Lcom/google/zxing/h;

    invoke-virtual {v0, p2}, Lcom/google/zxing/h;->a(Ljava/util/Map;)V

    .line 50
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/h;->b:Lcom/nut/blehunter/qrcode/CaptureActivity;

    .line 51
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 55
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/h;->d:Z

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 60
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1080
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/h;->b:Lcom/nut/blehunter/qrcode/CaptureActivity;

    .line 1130
    iget-object v1, v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->a:Lcom/nut/blehunter/qrcode/a/f;

    .line 1327
    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/a/f;->f()Landroid/graphics/Rect;

    move-result-object v7

    .line 1328
    if-nez v7, :cond_3

    move-object v6, v8

    .line 1081
    :goto_1
    if-eqz v6, :cond_7

    .line 1082
    new-instance v0, Lcom/google/zxing/c;

    new-instance v1, Lcom/google/zxing/common/j;

    invoke-direct {v1, v6}, Lcom/google/zxing/common/j;-><init>(Lcom/google/zxing/g;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/c;-><init>(Lcom/google/zxing/b;)V

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/h;->c:Lcom/google/zxing/h;

    .line 2082
    iget-object v2, v1, Lcom/google/zxing/h;->a:[Lcom/google/zxing/l;

    if-nez v2, :cond_2

    .line 2083
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/zxing/h;->a(Ljava/util/Map;)V

    .line 2085
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/zxing/h;->a(Lcom/google/zxing/c;)Lcom/google/zxing/m;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/h;->c:Lcom/google/zxing/h;

    invoke-virtual {v1}, Lcom/google/zxing/h;->a()V

    .line 1092
    :goto_2
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/h;->b:Lcom/nut/blehunter/qrcode/CaptureActivity;

    .line 2126
    iget-object v1, v1, Lcom/nut/blehunter/qrcode/CaptureActivity;->b:Lcom/nut/blehunter/qrcode/d;

    .line 1093
    if-eqz v0, :cond_6

    .line 1095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1096
    sget-object v4, Lcom/nut/blehunter/qrcode/h;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Found barcode in "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v10

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    if-eqz v1, :cond_0

    .line 1098
    const v2, 0x7f0d0006

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1099
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3113
    invoke-virtual {v6}, Lcom/google/zxing/k;->b()[I

    move-result-object v0

    .line 4066
    iget v1, v6, Lcom/google/zxing/g;->a:I

    .line 3147
    div-int/lit8 v2, v1, 0x2

    .line 5073
    iget v1, v6, Lcom/google/zxing/g;->b:I

    .line 4154
    div-int/lit8 v4, v1, 0x2

    .line 3116
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v1, v9

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3117
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3118
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3119
    const-string v0, "barcode_bitmap"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3120
    const-string v0, "barcode_scaled_factor"

    int-to-float v1, v2

    .line 6066
    iget v2, v6, Lcom/google/zxing/g;->a:I

    .line 3120
    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1101
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1102
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1331
    :cond_3
    array-length v1, v0

    new-array v1, v1, [B

    move v5, v9

    .line 1332
    :goto_3
    if-ge v5, v2, :cond_5

    move v4, v9

    .line 1333
    :goto_4
    if-ge v4, v3, :cond_4

    .line 1334
    mul-int v6, v4, v2

    add-int/2addr v6, v2

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    mul-int v12, v5, v3

    add-int/2addr v12, v4

    aget-byte v12, v0, v12

    aput-byte v12, v1, v6

    .line 1333
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1332
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 1340
    :cond_5
    new-instance v0, Lcom/google/zxing/k;

    iget v4, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/k;-><init>([BIIIIII)V

    move-object v6, v0

    goto/16 :goto_1

    .line 1088
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nut/blehunter/qrcode/h;->c:Lcom/google/zxing/h;

    invoke-virtual {v0}, Lcom/google/zxing/h;->a()V

    move-object v0, v8

    .line 1089
    goto/16 :goto_2

    .line 1088
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/h;->c:Lcom/google/zxing/h;

    invoke-virtual {v1}, Lcom/google/zxing/h;->a()V

    throw v0

    .line 1105
    :cond_6
    if-eqz v1, :cond_0

    .line 1106
    const v0, 0x7f0d0005

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1107
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 63
    :sswitch_1
    iput-boolean v9, p0, Lcom/nut/blehunter/qrcode/h;->d:Z

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :cond_7
    move-object v0, v8

    goto/16 :goto_2

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x7f0d0004 -> :sswitch_0
        0x7f0d000c -> :sswitch_1
    .end sparse-switch
.end method

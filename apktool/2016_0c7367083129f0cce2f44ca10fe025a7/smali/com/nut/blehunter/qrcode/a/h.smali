.class final Lcom/nut/blehunter/qrcode/a/h;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/nut/blehunter/qrcode/a/c;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/nut/blehunter/qrcode/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/nut/blehunter/qrcode/a/c;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/a/h;->b:Lcom/nut/blehunter/qrcode/a/c;

    .line 35
    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/a/h;->c:Landroid/os/Handler;

    .line 39
    iput p2, p0, Lcom/nut/blehunter/qrcode/a/h;->d:I

    .line 40
    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/h;->b:Lcom/nut/blehunter/qrcode/a/c;

    .line 1134
    iget-object v0, v0, Lcom/nut/blehunter/qrcode/a/c;->c:Landroid/graphics/Point;

    .line 45
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a/h;->c:Landroid/os/Handler;

    .line 46
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 47
    iget v2, p0, Lcom/nut/blehunter/qrcode/a/h;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/a/h;->c:Landroid/os/Handler;

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/nut/blehunter/qrcode/a/h;->a:Ljava/lang/String;

    const-string v1, "Got preview callback, but no handler or resolution available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

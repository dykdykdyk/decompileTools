.class final Lcom/nut/blehunter/qrcode/j;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private final a:Lcom/nut/blehunter/qrcode/CaptureActivity;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/qrcode/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/p;)V
    .locals 3
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
            "Lcom/google/zxing/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/j;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/j;->d:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/d;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    .line 58
    if-eqz p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    const-class v0, Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 65
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->b:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->c:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 68
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->d:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->e:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 70
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->f:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p4, :cond_3

    .line 75
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/d;->e:Lcom/google/zxing/d;

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/d;->j:Lcom/google/zxing/d;

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "DecodeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hints: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method


# virtual methods
.method final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->c:Landroid/os/Handler;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 93
    new-instance v0, Lcom/nut/blehunter/qrcode/h;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/j;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/j;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/nut/blehunter/qrcode/h;-><init>(Lcom/nut/blehunter/qrcode/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/j;->c:Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/j;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 96
    return-void
.end method

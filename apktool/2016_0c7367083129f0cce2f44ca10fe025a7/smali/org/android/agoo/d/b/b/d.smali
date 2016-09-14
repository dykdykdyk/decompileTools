.class final Lorg/android/agoo/d/b/b/d;
.super Ljava/lang/Object;
.source "SpdyChannel.java"


# instance fields
.field a:I

.field b:Ljava/io/ByteArrayOutputStream;

.field final synthetic c:Lorg/android/agoo/d/b/b/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/android/agoo/d/b/b/a;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    iput-object p1, p0, Lorg/android/agoo/d/b/b/d;->c:Lorg/android/agoo/d/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/b/b/d;->b:Ljava/io/ByteArrayOutputStream;

    .line 514
    iput p2, p0, Lorg/android/agoo/d/b/b/d;->a:I

    .line 515
    iput-object p3, p0, Lorg/android/agoo/d/b/b/d;->d:Ljava/util/Map;

    .line 516
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/b/d;->b:Ljava/io/ByteArrayOutputStream;

    .line 517
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 526
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/d/b/b/d;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

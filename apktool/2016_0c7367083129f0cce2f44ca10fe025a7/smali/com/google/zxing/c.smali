.class public final Lcom/google/zxing/c;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field public final a:Lcom/google/zxing/b;

.field private b:Lcom/google/zxing/common/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/b;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/zxing/common/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->a()Lcom/google/zxing/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/common/b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/c;->a()Lcom/google/zxing/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/b;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

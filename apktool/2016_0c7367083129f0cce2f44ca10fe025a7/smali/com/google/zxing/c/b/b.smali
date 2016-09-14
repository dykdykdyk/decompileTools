.class public final Lcom/google/zxing/c/b/b;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field public final a:Lcom/google/zxing/o;

.field public final b:Lcom/google/zxing/o;

.field public final c:I


# direct methods
.method private constructor <init>(Lcom/google/zxing/o;Lcom/google/zxing/o;I)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/google/zxing/c/b/b;->a:Lcom/google/zxing/o;

    .line 407
    iput-object p2, p0, Lcom/google/zxing/c/b/b;->b:Lcom/google/zxing/o;

    .line 408
    iput p3, p0, Lcom/google/zxing/c/b/b;->c:I

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/o;Lcom/google/zxing/o;IB)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/c/b/b;-><init>(Lcom/google/zxing/o;Lcom/google/zxing/o;I)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/c/b/b;->a:Lcom/google/zxing/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/c/b/b;->b:Lcom/google/zxing/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/c/b/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

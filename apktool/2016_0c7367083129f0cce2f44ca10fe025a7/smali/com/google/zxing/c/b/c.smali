.class public final Lcom/google/zxing/c/b/c;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/c/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/google/zxing/c/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 432
    check-cast p1, Lcom/google/zxing/c/b/b;

    check-cast p2, Lcom/google/zxing/c/b/b;

    .line 2420
    iget v0, p1, Lcom/google/zxing/c/b/b;->c:I

    .line 3420
    iget v1, p2, Lcom/google/zxing/c/b/b;->c:I

    .line 1436
    sub-int/2addr v0, v1

    .line 432
    return v0
.end method

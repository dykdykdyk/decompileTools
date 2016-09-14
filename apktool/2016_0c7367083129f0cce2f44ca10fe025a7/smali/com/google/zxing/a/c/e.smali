.class final Lcom/google/zxing/a/c/e;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/a/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/a/c/d;


# direct methods
.method constructor <init>(Lcom/google/zxing/a/c/d;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/zxing/a/c/e;->a:Lcom/google/zxing/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 192
    check-cast p1, Lcom/google/zxing/a/c/g;

    check-cast p2, Lcom/google/zxing/a/c/g;

    .line 2070
    iget v0, p1, Lcom/google/zxing/a/c/g;->d:I

    .line 3070
    iget v1, p2, Lcom/google/zxing/a/c/g;->d:I

    .line 1195
    sub-int/2addr v0, v1

    .line 192
    return v0
.end method

.class public abstract Lcom/google/zxing/b;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field public final a:Lcom/google/zxing/g;


# direct methods
.method public constructor <init>(Lcom/google/zxing/g;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract a()Lcom/google/zxing/common/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

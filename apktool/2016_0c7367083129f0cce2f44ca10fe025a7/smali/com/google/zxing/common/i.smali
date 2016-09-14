.class public abstract Lcom/google/zxing/common/i;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static a:Lcom/google/zxing/common/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/f;

    invoke-direct {v0}, Lcom/google/zxing/common/f;-><init>()V

    sput-object v0, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/zxing/common/i;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/i;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/zxing/common/b;IILcom/google/zxing/common/k;)Lcom/google/zxing/common/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

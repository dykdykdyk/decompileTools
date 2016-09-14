.class public final Lcom/tencent/open/utils/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/32 v0, 0x6054b50

    iput-wide v0, p0, Lcom/tencent/open/utils/u;->a:J

    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/open/utils/u;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/tencent/open/utils/u;->a:J

    check-cast p1, Lcom/tencent/open/utils/u;

    .line 1078
    iget-wide v4, p1, Lcom/tencent/open/utils/u;->a:J

    .line 53
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/tencent/open/utils/u;->a:J

    long-to-int v0, v0

    return v0
.end method

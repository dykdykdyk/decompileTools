.class final Lu/aly/bc;
.super Lu/aly/dz;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/az;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 415
    check-cast p2, Lu/aly/az;

    .line 1420
    check-cast p1, Lu/aly/dv;

    .line 1421
    iget-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1422
    iget-wide v0, p2, Lu/aly/az;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(J)V

    .line 1423
    iget v0, p2, Lu/aly/az;->c:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 415
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 415
    check-cast p2, Lu/aly/az;

    .line 1429
    check-cast p1, Lu/aly/dv;

    .line 1430
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    .line 1432
    invoke-virtual {p1}, Lu/aly/dv;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/az;->b:J

    .line 1433
    invoke-virtual {p2}, Lu/aly/az;->a()V

    .line 1434
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/az;->c:I

    .line 1435
    invoke-virtual {p2}, Lu/aly/az;->b()V

    .line 415
    return-void
.end method

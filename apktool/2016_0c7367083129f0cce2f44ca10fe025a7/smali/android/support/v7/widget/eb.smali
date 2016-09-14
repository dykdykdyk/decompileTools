.class public abstract Landroid/support/v7/widget/eb;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/support/v7/widget/ec;

.field i:J

.field public j:J

.field public k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 10857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/eb;->h:Landroid/support/v7/widget/ec;

    .line 10914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/eb;->a:Ljava/util/ArrayList;

    .line 10917
    iput-wide v2, p0, Landroid/support/v7/widget/eb;->i:J

    .line 10918
    iput-wide v2, p0, Landroid/support/v7/widget/eb;->j:J

    .line 10919
    iput-wide v4, p0, Landroid/support/v7/widget/eb;->k:J

    .line 10920
    iput-wide v4, p0, Landroid/support/v7/widget/eb;->l:J

    .line 11521
    return-void
.end method

.method static d(Landroid/support/v7/widget/ex;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 11242
    invoke-static {p0}, Landroid/support/v7/widget/ex;->h(Landroid/support/v7/widget/ex;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 11243
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11244
    const/4 v0, 0x4

    .line 11253
    :cond_0
    :goto_0
    return v0

    .line 11246
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 11558
    iget v1, p0, Landroid/support/v7/widget/ex;->c:I

    .line 11248
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->d()I

    move-result v2

    .line 11249
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 11250
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z
.end method

.method public a(Landroid/support/v7/widget/ex;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ex;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 11461
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/eb;->f(Landroid/support/v7/widget/ex;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/ex;)V
.end method

.method public abstract c(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 11469
    iget-object v0, p0, Landroid/support/v7/widget/eb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11470
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 11471
    iget-object v2, p0, Landroid/support/v7/widget/eb;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11473
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11474
    return-void
.end method

.method public final e(Landroid/support/v7/widget/ex;)V
    .locals 1

    .prologue
    .line 11327
    iget-object v0, p0, Landroid/support/v7/widget/eb;->h:Landroid/support/v7/widget/ec;

    if-eqz v0, :cond_0

    .line 11328
    iget-object v0, p0, Landroid/support/v7/widget/eb;->h:Landroid/support/v7/widget/ec;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ec;->a(Landroid/support/v7/widget/ex;)V

    .line 11330
    :cond_0
    return-void
.end method

.method public f(Landroid/support/v7/widget/ex;)Z
    .locals 1

    .prologue
    .line 11431
    const/4 v0, 0x1

    return v0
.end method

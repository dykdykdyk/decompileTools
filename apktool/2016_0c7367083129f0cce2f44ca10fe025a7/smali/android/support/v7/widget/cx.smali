.class final Landroid/support/v7/widget/cx;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;"
        }
    .end annotation
.end field

.field l:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1945
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/cx;->a:Z

    .line 1986
    iput v1, p0, Landroid/support/v7/widget/cx;->h:I

    .line 1993
    iput-boolean v1, p0, Landroid/support/v7/widget/cx;->i:Z

    .line 2005
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/eo;)Landroid/view/View;
    .locals 5

    .prologue
    .line 2026
    iget-object v0, p0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 10042
    iget-object v0, p0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 10043
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 10044
    iget-object v0, p0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 10045
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 10919
    iget-object v4, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->m()Z

    move-result v4

    .line 10046
    if-nez v4, :cond_0

    .line 10049
    iget v4, p0, Landroid/support/v7/widget/cx;->d:I

    .line 10948
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 10049
    if-ne v4, v0, :cond_0

    .line 10050
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/cx;->a(Landroid/view/View;)V

    move-object v0, v1

    .line 10051
    :goto_1
    return-object v0

    .line 10043
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 10054
    :cond_1
    const/4 v0, 0x0

    .line 2027
    goto :goto_1

    .line 2029
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/cx;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/eo;->b(I)Landroid/view/View;

    move-result-object v0

    .line 2030
    iget v1, p0, Landroid/support/v7/widget/cx;->d:I

    iget v2, p0, Landroid/support/v7/widget/cx;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/cx;->d:I

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 2062
    .line 11072
    iget-object v0, p0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 11073
    const/4 v3, 0x0

    .line 11074
    const v1, 0x7fffffff

    .line 11078
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 11079
    iget-object v0, p0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    iget-object v2, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 11080
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 11081
    if-eq v2, p1, :cond_3

    .line 11919
    iget-object v6, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v6}, Landroid/support/v7/widget/ex;->m()Z

    move-result v6

    .line 11081
    if-nez v6, :cond_3

    .line 11948
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 11084
    iget v6, p0, Landroid/support/v7/widget/cx;->d:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/v7/widget/cx;->e:I

    mul-int/2addr v0, v6

    .line 11086
    if-ltz v0, :cond_3

    .line 11089
    if-ge v0, v1, :cond_3

    .line 11092
    if-eqz v0, :cond_1

    move-object v1, v2

    .line 11078
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 2063
    :cond_1
    if-nez v2, :cond_2

    .line 2064
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/cx;->d:I

    .line 2069
    :goto_2
    return-void

    .line 2066
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 12948
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 2067
    iput v0, p0, Landroid/support/v7/widget/cx;->d:I

    goto :goto_2

    :cond_3
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method final a(Landroid/support/v7/widget/eu;)Z
    .locals 2

    .prologue
    .line 2016
    iget v0, p0, Landroid/support/v7/widget/cx;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/cx;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/eu;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

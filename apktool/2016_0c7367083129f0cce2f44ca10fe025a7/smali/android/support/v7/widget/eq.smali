.class final Landroid/support/v7/widget/eq;
.super Landroid/support/v7/widget/dz;
.source "RecyclerView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 4602
    iput-object p1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 4602
    invoke-direct {p0, p1}, Landroid/support/v7/widget/eq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 4654
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4655
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4660
    :goto_0
    return-void

    .line 4657
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)Z

    .line 4658
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 4605
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4606
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    .line 4613
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12547
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->f:Z

    .line 4614
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)V

    .line 4616
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4617
    iget-object v0, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4619
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 4623
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4624
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 13508
    iget-object v2, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, p1, v0, v4}, Landroid/support/v7/widget/af;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/ah;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13509
    iget v2, v1, Landroid/support/v7/widget/af;->g:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/support/v7/widget/af;->g:I

    .line 13510
    iget-object v1, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 4624
    :goto_0
    if-eqz v0, :cond_0

    .line 4625
    invoke-direct {p0}, Landroid/support/v7/widget/eq;->b()V

    .line 4627
    :cond_0
    return-void

    .line 13510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 4647
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4648
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 13541
    if-eq p1, p2, :cond_1

    .line 13547
    iget-object v2, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, p1, p2, v4}, Landroid/support/v7/widget/af;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/ah;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13548
    iget v2, v1, Landroid/support/v7/widget/af;->g:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/support/v7/widget/af;->g:I

    .line 13549
    iget-object v1, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 4648
    :goto_0
    if-eqz v0, :cond_0

    .line 4649
    invoke-direct {p0}, Landroid/support/v7/widget/eq;->b()V

    .line 4651
    :cond_0
    return-void

    .line 13549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 4631
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4632
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 13520
    iget-object v2, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1, v0, v3}, Landroid/support/v7/widget/af;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/ah;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13521
    iget v2, v1, Landroid/support/v7/widget/af;->g:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/v7/widget/af;->g:I

    .line 13522
    iget-object v1, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 4632
    :goto_0
    if-eqz v0, :cond_0

    .line 4633
    invoke-direct {p0}, Landroid/support/v7/widget/eq;->b()V

    .line 4635
    :cond_0
    return-void

    .line 13522
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 4639
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4640
    iget-object v1, p0, Landroid/support/v7/widget/eq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 13532
    iget-object v2, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, v0, v4}, Landroid/support/v7/widget/af;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/ah;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13533
    iget v2, v1, Landroid/support/v7/widget/af;->g:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/support/v7/widget/af;->g:I

    .line 13534
    iget-object v1, v1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 4640
    :goto_0
    if-eqz v0, :cond_0

    .line 4641
    invoke-direct {p0}, Landroid/support/v7/widget/eq;->b()V

    .line 4643
    :cond_0
    return-void

    .line 13534
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

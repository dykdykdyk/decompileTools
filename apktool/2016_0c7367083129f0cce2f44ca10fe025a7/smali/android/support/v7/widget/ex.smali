.class public abstract Landroid/support/v7/widget/ex;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# static fields
.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field c:I

.field d:J

.field public e:I

.field public f:I

.field g:Landroid/support/v7/widget/ex;

.field h:Landroid/support/v7/widget/ex;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/v7/widget/RecyclerView;

.field private l:I

.field private n:I

.field private o:Landroid/support/v7/widget/eo;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9410
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/ex;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 9434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9306
    iput v3, p0, Landroid/support/v7/widget/ex;->b:I

    .line 9307
    iput v3, p0, Landroid/support/v7/widget/ex;->c:I

    .line 9308
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/ex;->d:J

    .line 9309
    iput v3, p0, Landroid/support/v7/widget/ex;->e:I

    .line 9310
    iput v3, p0, Landroid/support/v7/widget/ex;->f:I

    .line 9313
    iput-object v2, p0, Landroid/support/v7/widget/ex;->g:Landroid/support/v7/widget/ex;

    .line 9315
    iput-object v2, p0, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    .line 9412
    iput-object v2, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    .line 9413
    iput-object v2, p0, Landroid/support/v7/widget/ex;->j:Ljava/util/List;

    .line 9415
    iput v4, p0, Landroid/support/v7/widget/ex;->n:I

    .line 9419
    iput-object v2, p0, Landroid/support/v7/widget/ex;->o:Landroid/support/v7/widget/eo;

    .line 9421
    iput-boolean v4, p0, Landroid/support/v7/widget/ex;->p:Z

    .line 9425
    iput v4, p0, Landroid/support/v7/widget/ex;->q:I

    .line 9435
    if-nez p1, :cond_0

    .line 9436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9438
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 9439
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ex;)V
    .locals 2

    .prologue
    .line 9304
    .line 11698
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 11699
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ex;->q:I

    .line 11700
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9304
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/ex;)V
    .locals 2

    .prologue
    .line 9304
    .line 11708
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/widget/ex;->q:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 11710
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ex;->q:I

    .line 9304
    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/ex;)Z
    .locals 1

    .prologue
    .line 9304
    .line 11790
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9304
    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/eo;
    .locals 1

    .prologue
    .line 9304
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ex;->o:Landroid/support/v7/widget/eo;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/ex;)Z
    .locals 1

    .prologue
    .line 9304
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ex;->p:Z

    return v0
.end method

.method static synthetic f(Landroid/support/v7/widget/ex;)Z
    .locals 1

    .prologue
    .line 9304
    iget-boolean v0, p0, Landroid/support/v7/widget/ex;->p:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v7/widget/ex;)Z
    .locals 1

    .prologue
    .line 9304
    .line 12782
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9304
    goto :goto_0
.end method

.method static synthetic h(Landroid/support/v7/widget/ex;)I
    .locals 1

    .prologue
    .line 9304
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9464
    iput v0, p0, Landroid/support/v7/widget/ex;->c:I

    .line 9465
    iput v0, p0, Landroid/support/v7/widget/ex;->f:I

    .line 9466
    return-void
.end method

.method final a(II)V
    .locals 2

    .prologue
    .line 9636
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    .line 9637
    return-void
.end method

.method final a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 9448
    iget v0, p0, Landroid/support/v7/widget/ex;->c:I

    if-ne v0, v1, :cond_0

    .line 9449
    iget v0, p0, Landroid/support/v7/widget/ex;->b:I

    iput v0, p0, Landroid/support/v7/widget/ex;->c:I

    .line 9451
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ex;->f:I

    if-ne v0, v1, :cond_1

    .line 9452
    iget v0, p0, Landroid/support/v7/widget/ex;->b:I

    iput v0, p0, Landroid/support/v7/widget/ex;->f:I

    .line 9454
    :cond_1
    if-eqz p2, :cond_2

    .line 9455
    iget v0, p0, Landroid/support/v7/widget/ex;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ex;->f:I

    .line 9457
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ex;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ex;->b:I

    .line 9458
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9459
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ei;->e:Z

    .line 9461
    :cond_3
    return-void
.end method

.method final a(Landroid/support/v7/widget/eo;Z)V
    .locals 0

    .prologue
    .line 9603
    iput-object p1, p0, Landroid/support/v7/widget/ex;->o:Landroid/support/v7/widget/eo;

    .line 9604
    iput-boolean p2, p0, Landroid/support/v7/widget/ex;->p:Z

    .line 9605
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 9644
    if-nez p1, :cond_1

    .line 9645
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ex;->b(I)V

    .line 9650
    :cond_0
    :goto_0
    return-void

    .line 9646
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 10653
    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    if-nez v0, :cond_2

    .line 10654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    .line 10655
    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ex;->j:Ljava/util/List;

    .line 9648
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 9748
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/ex;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ex;->n:I

    .line 9749
    iget v0, p0, Landroid/support/v7/widget/ex;->n:I

    if-gez v0, :cond_2

    .line 9750
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ex;->n:I

    .line 9755
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9765
    :cond_0
    :goto_1
    return-void

    .line 9748
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ex;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9757
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/ex;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9758
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    goto :goto_1

    .line 9759
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ex;->n:I

    if-nez v0, :cond_0

    .line 9760
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    goto :goto_1
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 9624
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 9640
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    .line 9641
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 9475
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 9514
    iget v0, p0, Landroid/support/v7/widget/ex;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ex;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ex;->f:I

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 9540
    iget-object v0, p0, Landroid/support/v7/widget/ex;->k:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9541
    const/4 v0, -0x1

    .line 9543
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ex;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)I

    move-result v0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 9579
    iget-object v0, p0, Landroid/support/v7/widget/ex;->o:Landroid/support/v7/widget/eo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 9583
    iget-object v0, p0, Landroid/support/v7/widget/ex;->o:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/eo;->b(Landroid/support/v7/widget/ex;)V

    .line 9584
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 9587
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()V
    .locals 1

    .prologue
    .line 9591
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    .line 9592
    return-void
.end method

.method final i()V
    .locals 1

    .prologue
    .line 9595
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    .line 9596
    return-void
.end method

.method final j()Z
    .locals 1

    .prologue
    .line 9608
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    .prologue
    .line 9612
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 9616
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final m()Z
    .locals 1

    .prologue
    .line 9620
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final n()Z
    .locals 1

    .prologue
    .line 9628
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()V
    .locals 1

    .prologue
    .line 9660
    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9661
    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9663
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/ex;->l:I

    .line 9664
    return-void
.end method

.method final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9667
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 9668
    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ex;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9670
    :cond_0
    sget-object v0, Landroid/support/v7/widget/ex;->m:Ljava/util/List;

    .line 9676
    :goto_0
    return-object v0

    .line 9673
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ex;->j:Ljava/util/List;

    goto :goto_0

    .line 9676
    :cond_2
    sget-object v0, Landroid/support/v7/widget/ex;->m:Ljava/util/List;

    goto :goto_0
.end method

.method final q()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 9681
    iput v3, p0, Landroid/support/v7/widget/ex;->l:I

    .line 9682
    iput v2, p0, Landroid/support/v7/widget/ex;->b:I

    .line 9683
    iput v2, p0, Landroid/support/v7/widget/ex;->c:I

    .line 9684
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/ex;->d:J

    .line 9685
    iput v2, p0, Landroid/support/v7/widget/ex;->f:I

    .line 9686
    iput v3, p0, Landroid/support/v7/widget/ex;->n:I

    .line 9687
    iput-object v4, p0, Landroid/support/v7/widget/ex;->g:Landroid/support/v7/widget/ex;

    .line 9688
    iput-object v4, p0, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    .line 9689
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->o()V

    .line 9690
    iput v3, p0, Landroid/support/v7/widget/ex;->q:I

    .line 9691
    return-void
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 9773
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 9774
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s()Z
    .locals 1

    .prologue
    .line 9794
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9715
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9716
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/ex;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/ex;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/ex;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/ex;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9718
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9719
    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/ex;->p:Z

    if-eqz v0, :cond_b

    const-string v0, "[changeScrap]"

    .line 9720
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9722
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9723
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9724
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9725
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9726
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9727
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9728
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->r()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/ex;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11632
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/ex;->l:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/ex;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    const/4 v0, 0x1

    .line 9729
    :goto_1
    if-eqz v0, :cond_9

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9731
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9732
    :cond_a
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9733
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9719
    :cond_b
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0

    .line 11632
    :cond_c
    const/4 v0, 0x0

    goto :goto_1
.end method

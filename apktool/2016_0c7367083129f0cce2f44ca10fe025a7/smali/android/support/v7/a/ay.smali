.class final Landroid/support/v7/a/ay;
.super Landroid/support/v7/a/a;
.source "ToolbarActionBar.java"


# instance fields
.field a:Landroid/support/v7/widget/bv;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field d:Landroid/support/v7/view/menu/l;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/support/v7/widget/gg;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/ay;->g:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/support/v7/a/az;

    invoke-direct {v0, p0}, Landroid/support/v7/a/az;-><init>(Landroid/support/v7/a/ay;)V

    iput-object v0, p0, Landroid/support/v7/a/ay;->h:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/support/v7/a/ba;

    invoke-direct {v0, p0}, Landroid/support/v7/a/ba;-><init>(Landroid/support/v7/a/ay;)V

    iput-object v0, p0, Landroid/support/v7/a/ay;->i:Landroid/support/v7/widget/gg;

    .line 74
    new-instance v0, Landroid/support/v7/widget/gi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/gi;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    .line 75
    new-instance v0, Landroid/support/v7/a/be;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/a/be;-><init>(Landroid/support/v7/a/ay;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/a/ay;->c:Landroid/view/Window$Callback;

    .line 76
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    iget-object v1, p0, Landroid/support/v7/a/ay;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/bv;->a(Landroid/view/Window$Callback;)V

    .line 77
    iget-object v0, p0, Landroid/support/v7/a/ay;->i:Landroid/support/v7/widget/gg;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/gg;)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/bv;->a(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->o()I

    move-result v0

    .line 264
    iget-object v1, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/widget/bv;->c(I)V

    .line 265
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/ay;->a(II)V

    .line 285
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/a/a;->a(Landroid/content/res/Configuration;)V

    .line 192
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->a(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 475
    invoke-virtual {p0}, Landroid/support/v7/a/ay;->j()Landroid/view/Menu;

    move-result-object v3

    .line 476
    if-eqz v3, :cond_0

    .line 477
    if-eqz p2, :cond_1

    .line 478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 477
    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 480
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 485
    :cond_0
    return v1

    .line 478
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 479
    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 289
    invoke-direct {p0, v0, v0}, Landroid/support/v7/a/ay;->a(II)V

    .line 290
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->o()I

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    .line 503
    iget-boolean v0, p0, Landroid/support/v7/a/ay;->f:Z

    if-ne p1, v0, :cond_1

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/a/ay;->f:Z

    .line 508
    iget-object v0, p0, Landroid/support/v7/a/ay;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 509
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 510
    iget-object v2, p0, Landroid/support/v7/a/ay;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->q()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/ay;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 433
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/ay;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->d()V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/ay;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method final j()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-boolean v0, p0, Landroid/support/v7/a/ay;->e:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    new-instance v1, Landroid/support/v7/a/bb;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/a/bb;-><init>(Landroid/support/v7/a/ay;B)V

    new-instance v2, Landroid/support/v7/a/bc;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/a/bc;-><init>(Landroid/support/v7/a/ay;B)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/view/menu/af;Landroid/support/v7/view/menu/p;)V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/ay;->e:Z

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/ay;->a:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->r()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.class public final Landroid/support/v7/view/menu/s;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;


# instance fields
.field final a:I

.field b:Landroid/support/v7/view/menu/o;

.field c:I

.field d:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/content/Intent;

.field private o:C

.field private p:C

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:Landroid/support/v7/view/menu/an;

.field private t:Ljava/lang/Runnable;

.field private u:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private v:I

.field private w:Landroid/view/View;

.field private x:Landroid/support/v4/view/ActionProvider;

.field private y:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private z:Z


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/o;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Landroid/support/v7/view/menu/s;->r:I

    .line 76
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 84
    iput v1, p0, Landroid/support/v7/view/menu/s;->c:I

    .line 89
    iput-boolean v1, p0, Landroid/support/v7/view/menu/s;->z:Z

    .line 133
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    .line 134
    iput p3, p0, Landroid/support/v7/view/menu/s;->i:I

    .line 135
    iput p2, p0, Landroid/support/v7/view/menu/s;->j:I

    .line 136
    iput p4, p0, Landroid/support/v7/view/menu/s;->k:I

    .line 137
    iput p5, p0, Landroid/support/v7/view/menu/s;->a:I

    .line 138
    iput-object p6, p0, Landroid/support/v7/view/menu/s;->l:Ljava/lang/CharSequence;

    .line 139
    iput p7, p0, Landroid/support/v7/view/menu/s;->c:I

    .line 140
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 607
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/s;->i:I

    if-lez v0, :cond_0

    .line 610
    iget v0, p0, Landroid/support/v7/view/menu/s;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 612
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->g()V

    .line 613
    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/s;)Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method private e(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 493
    iget v2, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 494
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 495
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    if-eq v2, v0, :cond_0

    .line 496
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 498
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 494
    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/support/v7/view/menu/ah;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/view/menu/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/support/v7/view/menu/s;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/s;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/an;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->s:Landroid/support/v7/view/menu/an;

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/view/menu/s;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/an;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 347
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 148
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->u:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/s;->u:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    iget-object v2, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/o;->k()Landroid/support/v7/view/menu/o;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->t:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->t:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->n:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    .line 1806
    iget-object v1, v1, Landroid/support/v7/view/menu/o;->a:Landroid/content/Context;

    .line 163
    iget-object v2, p0, Landroid/support/v7/view/menu/s;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_3
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()C
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/view/menu/s;->p:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/view/menu/s;->o:C

    goto :goto_0
.end method

.method final b(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 517
    iget v2, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 518
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 519
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 518
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/s;->b()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 694
    iget v1, p0, Landroid/support/v7/view/menu/s;->c:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 697
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    if-nez v1, :cond_2

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->y:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/view/menu/s;->y:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 703
    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 728
    iput-boolean p1, p0, Landroid/support/v7/view/menu/s;->z:Z

    .line 729
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 730
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0}, Landroid/support/v7/view/menu/s;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->y:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/s;->y:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 685
    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 568
    iget v1, p0, Landroid/support/v7/view/menu/s;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Landroid/support/v7/view/menu/s;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    .line 632
    :goto_0
    return-object v0

    .line 628
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    .line 630
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    goto :goto_0

    .line 632
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 237
    iget-char v0, p0, Landroid/support/v7/view/menu/s;->p:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/support/v7/view/menu/s;->j:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->q:Landroid/graphics/drawable/Drawable;

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/s;->r:I

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    .line 3806
    iget-object v0, v0, Landroid/support/v7/view/menu/o;->a:Landroid/content/Context;

    .line 421
    iget v1, p0, Landroid/support/v7/view/menu/s;->r:I

    invoke-static {v0, v1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 422
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/s;->r:I

    .line 423
    iput-object v0, p0, Landroid/support/v7/view/menu/s;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->n:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v7/view/menu/s;->i:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->d:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .prologue
    .line 255
    iget-char v0, p0, Landroid/support/v7/view/menu/s;->o:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Landroid/support/v7/view/menu/s;->k:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->s:Landroid/support/v7/view/menu/an;

    return-object v0
.end method

.method public final getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/s;->m:Ljava/lang/CharSequence;

    .line 389
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 393
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0

    .line 387
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->l:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 718
    iget v1, p0, Landroid/support/v7/view/menu/s;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    .line 722
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 724
    :cond_1
    return v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->s:Landroid/support/v7/view/menu/an;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Landroid/support/v7/view/menu/s;->z:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget v1, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    iget v2, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_2
    iget v2, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 40
    .line 4618
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    .line 4806
    iget-object v0, v0, Landroid/support/v7/view/menu/o;->a:Landroid/content/Context;

    .line 4619
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4620
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/s;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 40
    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/s;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 242
    iget-char v0, p0, Landroid/support/v7/view/menu/s;->p:C

    if-ne v0, p1, :cond_0

    .line 250
    :goto_0
    return-object p0

    .line 246
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/s;->p:C

    .line 248
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    goto :goto_0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 457
    iget v2, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 458
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 459
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    if-eq v2, v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 463
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 458
    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 481
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 484
    iget-object v4, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    .line 4592
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    .line 4594
    iget-object v0, v4, Landroid/support/v7/view/menu/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    .line 4595
    :goto_0
    if-ge v3, v6, :cond_3

    .line 4596
    iget-object v0, v4, Landroid/support/v7/view/menu/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    .line 4597
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->getGroupId()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 4598
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4599
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4602
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/s;->e(Z)V

    .line 4595
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4602
    goto :goto_1

    .line 486
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/s;->e(Z)V

    .line 489
    :cond_3
    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    .line 190
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 192
    return-object p0

    .line 187
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/s;->v:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/s;->v:I

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/s;->q:Landroid/graphics/drawable/Drawable;

    .line 442
    iput p1, p0, Landroid/support/v7/view/menu/s;->r:I

    .line 445
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 447
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iput v1, p0, Landroid/support/v7/view/menu/s;->r:I

    .line 433
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->q:Landroid/graphics/drawable/Drawable;

    .line 434
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 436
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->n:Landroid/content/Intent;

    .line 223
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 260
    iget-char v0, p0, Landroid/support/v7/view/menu/s;->o:C

    if-ne v0, p1, :cond_0

    .line 268
    :goto_0
    return-object p0

    .line 264
    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/s;->o:C

    .line 266
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    goto :goto_0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 739
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->u:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 535
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 273
    iput-char p1, p0, Landroid/support/v7/view/menu/s;->o:C

    .line 274
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/s;->p:C

    .line 276
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 278
    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    .prologue
    .line 589
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :pswitch_0
    iput p1, p0, Landroid/support/v7/view/menu/s;->c:I

    .line 602
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->g()V

    .line 603
    return-void

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 40
    .line 5674
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/s;->setShowAsAction(I)V

    .line 40
    return-object p0
.end method

.method public final setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->reset()V

    .line 658
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/s;->w:Landroid/view/View;

    .line 659
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    .line 660
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 661
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->x:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/view/menu/t;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/t;-><init>(Landroid/support/v7/view/menu/s;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 669
    :cond_1
    return-object p0
.end method

.method public final setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->y:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 714
    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    .line 2806
    iget-object v0, v0, Landroid/support/v7/view/menu/o;->a:Landroid/content/Context;

    .line 382
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/s;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 369
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->l:Ljava/lang/CharSequence;

    .line 371
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 373
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->s:Landroid/support/v7/view/menu/an;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->s:Landroid/support/v7/view/menu/an;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/an;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 377
    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 402
    iput-object p1, p0, Landroid/support/v7/view/menu/s;->m:Ljava/lang/CharSequence;

    .line 409
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 411
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/s;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/s;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->f()V

    .line 529
    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/s;->l:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

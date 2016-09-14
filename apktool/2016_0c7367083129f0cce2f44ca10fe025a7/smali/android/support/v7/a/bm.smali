.class public final Landroid/support/v7/a/bm;
.super Landroid/support/v7/view/b;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/p;


# instance fields
.field final synthetic a:Landroid/support/v7/a/bi;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/support/v7/view/menu/o;

.field private f:Landroid/support/v7/view/c;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/a/bi;Landroid/content/Context;Landroid/support/v7/view/c;)V
    .locals 2

    .prologue
    .line 966
    iput-object p1, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-direct {p0}, Landroid/support/v7/view/b;-><init>()V

    .line 967
    iput-object p2, p0, Landroid/support/v7/a/bm;->d:Landroid/content/Context;

    .line 968
    iput-object p3, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    .line 969
    new-instance v0, Landroid/support/v7/view/menu/o;

    invoke-direct {v0, p2}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 1230
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/view/menu/o;->e:I

    .line 970
    iput-object v0, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    .line 971
    iget-object v0, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p;)V

    .line 972
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 976
    new-instance v0, Landroid/support/v7/view/i;

    iget-object v1, p0, Landroid/support/v7/a/bm;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->j(Landroid/support/v7/a/bi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/bm;->b(Ljava/lang/CharSequence;)V

    .line 1060
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;)V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    if-nez v0, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/bm;->d()V

    .line 1125
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1044
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/a/bm;->g:Ljava/lang/ref/WeakReference;

    .line 1045
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1050
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1079
    invoke-super {p0, p1}, Landroid/support/v7/view/b;->a(Z)V

    .line 1080
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1081
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1097
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->j(Landroid/support/v7/a/bi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/bm;->a(Ljava/lang/CharSequence;)V

    .line 1065
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1055
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 986
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    iget-object v0, v0, Landroid/support/v7/a/bi;->a:Landroid/support/v7/a/bm;

    if-eq v0, p0, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->f(Landroid/support/v7/a/bi;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v1}, Landroid/support/v7/a/bi;->g(Landroid/support/v7/a/bi;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/a/bi;->a(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    iput-object p0, v0, Landroid/support/v7/a/bi;->b:Landroid/support/v7/view/b;

    .line 999
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    iget-object v1, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    iput-object v1, v0, Landroid/support/v7/a/bi;->c:Landroid/support/v7/view/c;

    .line 1003
    :goto_1
    iput-object v2, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    .line 1004
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/bi;->e(Z)V

    .line 1007
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    .line 2187
    iget-object v1, v0, Landroid/support/v7/widget/ActionBarContextView;->g:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2188
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 1008
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->i(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/bv;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1010
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->e(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    iget-boolean v1, v1, Landroid/support/v7/a/bi;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1012
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    iput-object v2, v0, Landroid/support/v7/a/bi;->a:Landroid/support/v7/a/bm;

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    invoke-interface {v0, p0}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    iget-object v0, v0, Landroid/support/v7/a/bi;->a:Landroid/support/v7/a/bm;

    if-eq v0, p0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->d()V

    .line 1026
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    iget-object v1, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/c;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    iget-object v0, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->e()V

    throw v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->d()V

    .line 1035
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/a/bm;->f:Landroid/support/v7/view/c;

    iget-object v1, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1037
    iget-object v1, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->e()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/a/bm;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->e()V

    throw v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/support/v7/a/bm;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    .line 2374
    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->h:Z

    .line 1085
    return v0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/support/v7/a/bm;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/bm;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

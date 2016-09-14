.class final Landroid/support/v7/a/au;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/af;


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;


# direct methods
.method private constructor <init>(Landroid/support/v7/a/ah;)V
    .locals 0

    .prologue
    .line 1821
    iput-object p1, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/a/ah;B)V
    .locals 0

    .prologue
    .line 1821
    invoke-direct {p0, p1}, Landroid/support/v7/a/au;-><init>(Landroid/support/v7/a/ah;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1824
    invoke-virtual {p1}, Landroid/support/v7/view/menu/o;->k()Landroid/support/v7/view/menu/o;

    move-result-object v2

    .line 1825
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1826
    :goto_0
    iget-object v3, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;Landroid/view/Menu;)Landroid/support/v7/a/at;

    move-result-object v3

    .line 1827
    if-eqz v3, :cond_1

    .line 1828
    if-eqz v0, :cond_3

    .line 1829
    iget-object v0, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    iget v4, v3, Landroid/support/v7/a/at;->a:I

    invoke-static {v0, v4, v3, v2}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;ILandroid/support/v7/a/at;Landroid/view/Menu;)V

    .line 1830
    iget-object v0, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    invoke-static {v0, v3, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;Landroid/support/v7/a/at;Z)V

    .line 1837
    :cond_1
    :goto_1
    return-void

    .line 1825
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1834
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    invoke-static {v0, v3, p2}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;Landroid/support/v7/a/at;Z)V

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/view/menu/o;)Z
    .locals 2

    .prologue
    .line 1841
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    iget-boolean v0, v0, Landroid/support/v7/a/ah;->i:Z

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    .line 2279
    iget-object v0, v0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1843
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/a/au;->a:Landroid/support/v7/a/ah;

    .line 3271
    iget-boolean v1, v1, Landroid/support/v7/a/v;->o:Z

    .line 1843
    if-nez v1, :cond_0

    .line 1844
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1847
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

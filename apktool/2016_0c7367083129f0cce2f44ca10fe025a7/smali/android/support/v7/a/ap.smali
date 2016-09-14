.class final Landroid/support/v7/a/ap;
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
    .line 1851
    iput-object p1, p0, Landroid/support/v7/a/ap;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/a/ah;B)V
    .locals 0

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/support/v7/a/ap;-><init>(Landroid/support/v7/a/ah;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/support/v7/a/ap;->a:Landroid/support/v7/a/ah;

    invoke-static {v0, p1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;Landroid/support/v7/view/menu/o;)V

    .line 1864
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;)Z
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Landroid/support/v7/a/ap;->a:Landroid/support/v7/a/ah;

    .line 2279
    iget-object v0, v0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1855
    if-eqz v0, :cond_0

    .line 1856
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1858
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

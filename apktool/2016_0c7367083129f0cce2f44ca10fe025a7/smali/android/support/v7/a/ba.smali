.class final Landroid/support/v7/a/ba;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/gg;


# instance fields
.field final synthetic a:Landroid/support/v7/a/ay;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ay;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/ay;

    .line 1047
    iget-object v0, v0, Landroid/support/v7/a/ay;->c:Landroid/view/Window$Callback;

    .line 69
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

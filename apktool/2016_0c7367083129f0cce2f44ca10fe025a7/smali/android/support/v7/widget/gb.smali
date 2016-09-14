.class final Landroid/support/v7/widget/gb;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/widget/w;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/gg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/gg;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/gg;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

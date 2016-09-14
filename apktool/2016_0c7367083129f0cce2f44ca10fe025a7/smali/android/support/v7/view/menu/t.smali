.class final Landroid/support/v7/view/menu/t;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/s;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/s;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/view/menu/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/view/menu/s;->a(Landroid/support/v7/view/menu/s;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->f()V

    .line 666
    return-void
.end method

.class final Landroid/support/v7/view/menu/ad;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ac;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/ac;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Landroid/support/v7/view/menu/ad;->a:Landroid/support/v7/view/menu/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/view/menu/ad;->a:Landroid/support/v7/view/menu/ac;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ac;->d()V

    .line 334
    return-void
.end method

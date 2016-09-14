.class final Landroid/support/v7/widget/da;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cz;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/cz;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Landroid/support/v7/widget/da;->a:Landroid/support/v7/widget/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/support/v7/widget/da;->a:Landroid/support/v7/widget/cz;

    .line 1451
    iget-object v0, v0, Landroid/support/v7/widget/cz;->i:Landroid/view/View;

    .line 1133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Landroid/support/v7/widget/da;->a:Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->b()V

    .line 1136
    :cond_0
    return-void
.end method

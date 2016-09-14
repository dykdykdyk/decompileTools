.class final Landroid/support/v7/widget/bh;
.super Landroid/support/v7/widget/cm;
.source "AppCompatSpinner.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bj;

.field final synthetic b:Landroid/support/v7/widget/bg;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bg;Landroid/view/View;Landroid/support/v7/widget/bj;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    iput-object p3, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/bj;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/cm;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/view/menu/ak;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/bj;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/bg;)Landroid/support/v7/widget/bj;

    move-result-object v0

    .line 1823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/bg;)Landroid/support/v7/widget/bj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->b()V

    .line 262
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

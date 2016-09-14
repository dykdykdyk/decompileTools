.class final Landroid/support/v7/widget/m;
.super Landroid/support/v7/view/menu/c;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/k;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/k;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Landroid/support/v7/widget/m;->a:Landroid/support/v7/widget/k;

    invoke-direct {p0}, Landroid/support/v7/view/menu/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/k;B)V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0, p1}, Landroid/support/v7/widget/m;-><init>(Landroid/support/v7/widget/k;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/view/menu/ak;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->l(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->l(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->a()Landroid/support/v7/view/menu/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

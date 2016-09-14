.class final Landroid/support/v7/widget/cn;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cm;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/cm;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/cm;B)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/support/v7/widget/cn;-><init>(Landroid/support/v7/widget/cm;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/cm;

    invoke-static {v0}, Landroid/support/v7/widget/cm;->a(Landroid/support/v7/widget/cm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 299
    :cond_0
    return-void
.end method

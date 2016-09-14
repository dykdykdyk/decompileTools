.class final Landroid/support/v7/widget/dg;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cz;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/cz;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/cz;B)V
    .locals 0

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Landroid/support/v7/widget/dg;-><init>(Landroid/support/v7/widget/cz;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    invoke-static {v0}, Landroid/support/v7/widget/cz;->a(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    invoke-static {v0}, Landroid/support/v7/widget/cz;->a(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/cj;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    .line 1319
    invoke-static {v0}, Landroid/support/v7/widget/cz;->a(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/cj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/cj;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    invoke-static {v1}, Landroid/support/v7/widget/cz;->a(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/cj;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/cj;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    .line 1320
    invoke-static {v0}, Landroid/support/v7/widget/cz;->a(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/cj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/cj;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    iget v1, v1, Landroid/support/v7/widget/cz;->g:I

    if-gt v0, v1, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->b()V

    .line 1324
    :cond_0
    return-void
.end method

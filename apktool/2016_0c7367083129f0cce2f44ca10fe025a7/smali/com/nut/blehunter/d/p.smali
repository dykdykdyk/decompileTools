.class public final Lcom/nut/blehunter/d/p;
.super Ljava/lang/Object;
.source "ToolbarNavigationUtils.java"


# direct methods
.method public static a(Landroid/support/v7/widget/Toolbar;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 17
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Landroid/support/v7/widget/Toolbar;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 25
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    :goto_1
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    return-object v0

    .line 17
    :cond_1
    const-string v0, "navigationIcon"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

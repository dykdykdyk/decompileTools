.class final Lcom/nut/blehunter/ui/gp;
.super Ljava/lang/Object;
.source "SilenceRepeatActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/q;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SilenceRepeatActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SilenceRepeatActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nut/blehunter/ui/gp;->a:Lcom/nut/blehunter/ui/SilenceRepeatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 37
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v5

    .line 38
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/nut/blehunter/ui/gp;->a:Lcom/nut/blehunter/ui/SilenceRepeatActivity;

    .line 1070
    iget-object v0, v6, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    move v4, v3

    move v1, v3

    .line 1072
    :goto_0
    if-ge v4, v7, :cond_0

    .line 1073
    iget-object v0, v6, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1074
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1075
    add-int/lit8 v0, v1, 0x1

    .line 1072
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 1078
    :cond_0
    if-ne v1, v2, :cond_1

    move v0, v2

    .line 38
    :goto_2
    if-eqz v0, :cond_2

    .line 42
    :goto_3
    return-void

    :cond_1
    move v0, v3

    .line 1078
    goto :goto_2

    .line 41
    :cond_2
    if-nez v5, :cond_3

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1
.end method

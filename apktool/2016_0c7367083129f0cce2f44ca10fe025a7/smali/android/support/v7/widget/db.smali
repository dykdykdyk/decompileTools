.class final Landroid/support/v7/widget/db;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cz;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/cz;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Landroid/support/v7/widget/db;->a:Landroid/support/v7/widget/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1152
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1153
    iget-object v0, p0, Landroid/support/v7/widget/db;->a:Landroid/support/v7/widget/cz;

    invoke-static {v0}, Landroid/support/v7/widget/cz;->a(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/cj;

    move-result-object v0

    .line 1155
    if-eqz v0, :cond_0

    .line 1156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cj;->setListSelectionHidden(Z)V

    .line 1159
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1163
    return-void
.end method

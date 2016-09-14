.class final Landroid/support/v7/widget/dd;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cz;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/cz;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Landroid/support/v7/widget/dd;->a:Landroid/support/v7/widget/cz;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/cz;B)V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0, p1}, Landroid/support/v7/widget/dd;-><init>(Landroid/support/v7/widget/cz;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/support/v7/widget/dd;->a:Landroid/support/v7/widget/cz;

    .line 1823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 1296
    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Landroid/support/v7/widget/dd;->a:Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->b()V

    .line 1300
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/support/v7/widget/dd;->a:Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->c()V

    .line 1305
    return-void
.end method

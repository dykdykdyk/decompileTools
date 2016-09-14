.class public final Lcom/nut/blehunter/ui/a/g;
.super Landroid/support/v7/widget/dx;
.source "FriendListAdapter.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Landroid/support/v7/widget/ex;",
        ">;",
        "Lcom/nut/blehunter/ui/widget/d;"
    }
.end annotation


# instance fields
.field final c:Lcom/nut/blehunter/ui/widget/i;

.field final d:Lcom/nut/blehunter/ui/a/m;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/widget/i;Lcom/nut/blehunter/ui/a/m;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/g;->c:Lcom/nut/blehunter/ui/widget/i;

    .line 56
    iput-object p2, p0, Lcom/nut/blehunter/ui/a/g;->d:Lcom/nut/blehunter/ui/a/m;

    .line 57
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p2, :cond_0

    const v0, 0x7f030090

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    if-nez p2, :cond_1

    new-instance v0, Lcom/nut/blehunter/ui/a/l;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ui/a/l;-><init>(Landroid/view/View;)V

    :goto_1
    return-object v0

    .line 61
    :cond_0
    const v0, 0x7f03008b

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/nut/blehunter/ui/a/k;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ui/a/k;-><init>(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/widget/ex;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0, p2}, Lcom/nut/blehunter/ui/a/g;->a(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/nut/blehunter/ui/a/k;

    iget-object v0, v0, Lcom/nut/blehunter/ui/a/k;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/nut/blehunter/ui/a/h;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/a/h;-><init>(Lcom/nut/blehunter/ui/a/g;Landroid/support/v7/widget/ex;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/nut/blehunter/ui/a/l;

    .line 76
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/entity/Friend;

    .line 77
    iget-object v2, v1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    .line 7099
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v5

    .line 7100
    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 77
    :goto_1
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    .line 78
    :goto_2
    iget-object v5, v0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    invoke-static {v5, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 79
    iget-object v5, v0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget v2, v1, Lcom/nut/blehunter/entity/Friend;->e:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setIsOverlay(Z)V

    .line 80
    iget-object v2, v0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v3, v0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v1, v1, Lcom/nut/blehunter/entity/Friend;->j:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0a001e

    :goto_4
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setBorderColor(I)V

    .line 81
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    new-instance v2, Lcom/nut/blehunter/ui/a/i;

    invoke-direct {v2, p0, p1}, Lcom/nut/blehunter/ui/a/i;-><init>(Lcom/nut/blehunter/ui/a/g;Landroid/support/v7/widget/ex;)V

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    new-instance v2, Lcom/nut/blehunter/ui/a/j;

    invoke-direct {v2, p0, v0, p1}, Lcom/nut/blehunter/ui/a/j;-><init>(Lcom/nut/blehunter/ui/a/g;Lcom/nut/blehunter/ui/a/l;Landroid/support/v7/widget/ex;)V

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 7100
    goto :goto_1

    .line 77
    :cond_2
    iget-object v2, v1, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v2, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const v1, 0x7f0a001d

    goto :goto_4
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    .line 9102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 143
    return-void
.end method

.method public final a(II)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 8226
    iget-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/dy;->a(II)V

    .line 130
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7262
    iget-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dy;->c(I)V

    goto :goto_0
.end method

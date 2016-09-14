.class final Lcom/nut/blehunter/ui/gl;
.super Landroid/support/v7/widget/dx;
.source "ShareManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/gm;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/ShareUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/nut/blehunter/ui/ShareManageActivity;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/ShareManageActivity;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nut/blehunter/ui/gl;->d:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    .line 206
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/gl;->e:Landroid/view/LayoutInflater;

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/gl;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 7236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7239
    iget-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7240
    :cond_0
    :goto_0
    return-void

    .line 7242
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7243
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/ShareUserInfo;

    .line 7245
    iget-object v0, v0, Lcom/nut/blehunter/entity/ShareUserInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7246
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 8102
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 4

    .prologue
    .line 197
    .line 7211
    new-instance v0, Lcom/nut/blehunter/ui/gm;

    iget-object v1, p0, Lcom/nut/blehunter/ui/gl;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/gm;-><init>(Lcom/nut/blehunter/ui/gl;Landroid/view/View;)V

    .line 197
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 3

    .prologue
    .line 197
    check-cast p1, Lcom/nut/blehunter/ui/gm;

    .line 6218
    iget-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/ShareUserInfo;

    .line 6219
    iget-object v1, p1, Lcom/nut/blehunter/ui/gm;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v2, v0, Lcom/nut/blehunter/entity/ShareUserInfo;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6220
    iget-object v1, p1, Lcom/nut/blehunter/ui/gm;->m:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nut/blehunter/entity/ShareUserInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
